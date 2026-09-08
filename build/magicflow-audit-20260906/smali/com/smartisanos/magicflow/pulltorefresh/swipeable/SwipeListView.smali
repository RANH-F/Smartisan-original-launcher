.class public Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;
.super Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;
.source "SwipeListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static DEL_ANIMATION_DURATION:I = 0xc8

.field private static final GESTURE_DOWN:I = 0x0

.field private static final GESTURE_FLING_HORIZONTAL:I = 0x5

.field private static final GESTURE_FLING_VERTICAL:I = 0x6

.field private static final GESTURE_LONGPRESS:I = 0x4

.field private static final GESTURE_NONE:I = -0x1

.field private static final GESTURE_SCROLL_ITEM:I = 0x2

.field private static final GESTURE_SCROLL_LIST:I = 0x3

.field private static final GESTURE_TAP:I = 0x1


# instance fields
.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mContentShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mGesture:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureOnOpenedChild:Z

.field private mGestureScrollingChild:Z

.field private mInterruptionGesture:Z

.field private mMenuContainerHeight:I

.field private mMenuContainerWidth:I

.field private mMenuCreator:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuCreator;

.field private mMenuItemClickListener:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$OnMenuItemClickListener;

.field private mOpenedChild:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

.field private mRect:Landroid/graphics/Rect;

.field private mSwipeListAdapter:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

.field private mTouchView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

.field swipeFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mGesture:I

    .line 4
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mRect:Landroid/graphics/Rect;

    .line 5
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mMenuContainerHeight:I

    .line 6
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mMenuContainerWidth:I

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->swipeFlag:Z

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mGesture:I

    return p0
.end method

.method static synthetic access$002(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mGesture:I

    return p1
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuCreator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mMenuCreator:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuCreator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$OnMenuItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mMenuItemClickListener:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    return-object p0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->DEL_ANIMATION_DURATION:I

    return v0
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 2
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$1;

    invoke-direct {v2, p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$1;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static isItemScroll(FF)Z
    .locals 4

    neg-float p1, p1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    div-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpg-double v0, p0, v2

    if-gez v0, :cond_1

    const-wide v2, -0x4016666666666666L    # -0.8

    cmpl-double p0, p0, v2

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public getSwipeListAdapter()Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    return-object v0
.end method

.method public ifSwipingOrOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mOpenedChild:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->isAdapterAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mInterruptionGesture:Z

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->getOpenedChild()Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mOpenedChild:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mOpenedChild:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mInterruptionGesture:Z

    .line 7
    :cond_1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mGesture:I

    if-nez v0, :cond_4

    .line 8
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mGestureOnOpenedChild:Z

    .line 9
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mGestureScrollingChild:Z

    .line 10
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mInterruptionGesture:Z

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mOpenedChild:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v3, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mGestureOnOpenedChild:Z

    return v1

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mOpenedChild:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->closeAutonomously()V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    :cond_3
    return v2

    .line 17
    :cond_4
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mGestureOnOpenedChild:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mGestureScrollingChild:Z

    if-eqz v0, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mGesture:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x5

    if-ne v0, v3, :cond_6

    goto :goto_0

    .line 19
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 20
    :cond_7
    :goto_0
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mGestureScrollingChild:Z

    :cond_8
    :goto_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    .line 8
    :goto_0
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mGesture:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->swipeFlag:Z

    if-eqz v0, :cond_5

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 12
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->swipeFlag:Z

    const/4 v4, 0x3

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 14
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    iput-boolean v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->swipeFlag:Z

    :cond_3
    if-eq v0, v3, :cond_4

    if-eq v0, v4, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->swipeFlag:Z

    :goto_1
    return v3

    .line 17
    :cond_5
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mInterruptionGesture:Z

    if-nez v0, :cond_6

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    move v2, v3

    :cond_7
    return v2
.end method

.method public playDeleteAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mTouchView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    .line 4
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    sget v1, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->DEL_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    new-instance v1, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$3;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$3;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    new-instance v1, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$2;

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$2;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;Landroid/content/Context;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->setBgDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mContentShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->setContentShadow(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mMenuContainerHeight:I

    if-ltz p1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->setMenuContainerHeight(I)V

    .line 9
    :cond_1
    iget p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mMenuContainerWidth:I

    if-ltz p1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->setMenuContainerWidth(I)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mSwipeListAdapter:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    invoke-super {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setContentShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mContentShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMenuBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMenuContainerHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mMenuContainerHeight:I

    return-void
.end method

.method public setMenuContainerWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mMenuContainerWidth:I

    return-void
.end method

.method public setMenuItemClickListener(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$OnMenuItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mMenuItemClickListener:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$OnMenuItemClickListener;

    return-void
.end method

.method public setSwipeMenuCreator(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuCreator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->mMenuCreator:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuCreator;

    return-void
.end method
