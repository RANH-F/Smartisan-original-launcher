.class public abstract Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;
.super Landroid/widget/RelativeLayout;
.source "PullToRefreshBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;,
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;,
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;,
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;,
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$Gesture;,
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$OnStatusChangeListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DISTANCE_TO_LOAD_MORE:I = 0x64

.field private static final GESTURE_DOWN:I = 0x0

.field private static final GESTURE_FLING_HORIZONTAL:I = 0x5

.field private static final GESTURE_FLING_VERTICAL:I = 0x6

.field private static final GESTURE_LONGPRESS:I = 0x4

.field private static final GESTURE_NONE:I = -0x1

.field private static final GESTURE_SCROLL_HORIZONTAL:I = 0x2

.field private static final GESTURE_SCROLL_VERTICAL:I = 0x3

.field private static final GESTURE_TAP:I = 0x1

.field private static final ICON_ANIM_DIV:I = 0x2d

.field private static final ICON_ANIM_FIRST:I = 0x1

.field private static final ICON_ANIM_LAST:I = 0x55

.field private static final ICON_ANIM_RATE:F = 5.3f

.field private static final LOG_TAG:Ljava/lang/String; = "PullToRefreshBaseView"

.field private static final MAX_NUM_OF_SYNC_TOASTS:I = 0x5

.field public static final PULL_DOWN:I = 0x1

.field public static final PULL_UP:I = 0x0

.field private static final PULL_UP_STYLE_LOAD:I = 0x1

.field private static final PULL_UP_STYLE_REFRESH:I = 0x0

.field private static final REFRESH_ANIM_MIN_TIME:I = 0x12c

.field public static final SCROLL_BACK_SPEED:I = -0x14

.field private static final SCROLL_FAC:F = 0.2f

.field public static final SCROLL_OUT_SPEED:I = 0x14

.field private static final SHOW_CHECKING_FOR_MAIL_DURATION_IN_MILLIS:I = 0x3e8

.field public static final STATUS_PULL_TO_REFRESH:I = 0x0

.field public static final STATUS_REFRESHING:I = 0x2

.field public static final STATUS_REFRESH_FINISHED:I = 0x3

.field public static final STATUS_RELEASE_TO_REFRESH:I = 0x1

.field private static final SWIPE_TEXT_APPEAR_DURATION_IN_MILLIS:I = 0xc8


# instance fields
.field private final DEFAULT_PRE_POSITION:I

.field private final SPEED_CARDINAL:F

.field private currentStatus:I

.field horizentalSwipeFlag:Z

.field private isDoingStartRefreshAnim:Z

.field private isFooterAdded:Z

.field private lastStatus:I

.field private mBackground:I

.field private mCurrPoint:Landroid/graphics/Point;

.field private mDeltaY:F

.field private mDirectUp:Z

.field private mDownPoint:Landroid/graphics/Point;

.field private mDownScrollStartY:F

.field private mEnablePullDown:Z

.field private mEnablePullUp:Z

.field private mEnableSwipe:Z

.field private mEnabledPullDown:Z

.field private mFootIcon:Landroid/widget/ImageView;

.field private mFootText:Landroid/widget/TextView;

.field private mFooter:Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;

.field private mFooterBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;

.field private mFooterListener:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;

.field private mFooterNoMoreView:Landroid/view/View;

.field private mFooterView:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

.field private mHandler:Landroid/os/Handler;

.field private mHasClearRotation:Z

.field private mHeadIcon:Landroid/widget/ImageView;

.field private mHeadText:Landroid/widget/TextView;

.field private mHeader:Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;

.field private mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

.field private mIfInTouch:Z

.field private mIgnoreTouchEvents:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsFinishing:Z

.field public mIsSyncing:Z

.field private mLastNumber:I

.field private mLastY:F

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$OnStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadOnce:Z

.field private mOnStatusChangeListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$OnStatusChangeListener;

.field private mPrePosition:I

.field private mPullDownRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;

.field private mPullUpLoadMore:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;

.field private mPullUpRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;

.field private mPullUpStyle:I

.field private mRefreshAnim:Landroid/view/animation/Animation;

.field private mRefreshListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;

.field private final mScaleTouchSlop:I

.field private mStartX:F

.field private mStartY:F

.field private mStateInReleaseToLoad:Z

.field private mTrackingScrollMovement:Z

.field private mTrackingScrollStartY:F

.field private mUpScrollStartY:F

.field private startAnimTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x3

    .line 4
    iput p3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->currentStatus:I

    .line 5
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->currentStatus:I

    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->lastStatus:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIgnoreTouchEvents:Z

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mStartY:F

    .line 9
    iput v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mLastY:F

    .line 10
    iput v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mStartX:F

    .line 11
    iput v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mDeltaY:F

    .line 12
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mDirectUp:Z

    .line 13
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIsSyncing:Z

    .line 14
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isDoingStartRefreshAnim:Z

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mListeners:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 16
    iput-wide v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->startAnimTime:J

    .line 17
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHandler:Landroid/os/Handler;

    .line 18
    new-instance v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V

    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullDownRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;

    .line 19
    new-instance v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V

    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpLoadMore:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;

    .line 20
    new-instance v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V

    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;

    .line 21
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isFooterAdded:Z

    .line 22
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mCurrPoint:Landroid/graphics/Point;

    .line 23
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mDownPoint:Landroid/graphics/Point;

    const v1, 0x3c449ba6    # 0.012f

    .line 24
    iput v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->SPEED_CARDINAL:F

    const/4 v1, -0x2

    .line 25
    iput v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->DEFAULT_PRE_POSITION:I

    .line 26
    iput v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPrePosition:I

    .line 27
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIfInTouch:Z

    .line 28
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mStateInReleaseToLoad:Z

    .line 29
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->horizentalSwipeFlag:Z

    const/4 v1, 0x1

    .line 30
    iput v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mLastNumber:I

    .line 31
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHasClearRotation:Z

    .line 32
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIsFinishing:Z

    .line 33
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mEnabledPullDown:Z

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/smartisanos/magicflow/R$styleable;->PullToRefreshListView:[I

    invoke-virtual {v2, p2, v3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 35
    :try_start_0
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mEnablePullDown:Z

    const/4 v1, 0x2

    .line 36
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mEnablePullUp:Z

    const/4 v1, 0x4

    .line 37
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpStyle:I

    .line 38
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mBackground:I

    .line 39
    invoke-virtual {v2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mEnableSwipe:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    iget p3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mBackground:I

    if-eqz p3, :cond_0

    .line 42
    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_0
    const p3, 0x7f01001a

    .line 43
    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p3

    iput-object p3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mRefreshAnim:Landroid/view/animation/Animation;

    .line 44
    iget-object p3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mRefreshAnim:Landroid/view/animation/Animation;

    if-eqz p3, :cond_1

    .line 45
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p3, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 46
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mScaleTouchSlop:I

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    invoke-direct {p0, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->initViews(Landroid/util/AttributeSet;)V

    return-void

    :catchall_0
    move-exception p1

    .line 49
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    throw p1
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIsFinishing:Z

    return p0
.end method

.method static synthetic access$002(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIsFinishing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->currentStatus:I

    return p0
.end method

.method static synthetic access$1000(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateHeaderView()V

    return-void
.end method

.method static synthetic access$102(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->currentStatus:I

    return p1
.end method

.method static synthetic access$1100(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->cancelMovementTracking()V

    return-void
.end method

.method static synthetic access$1300(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->doFinishRefreshing(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->checkPullUpRefresh()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateFooterScroll(F)V

    return-void
.end method

.method static synthetic access$1700(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateFooterView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateHeadIcon(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mRefreshAnim:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->startAnimTime:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isDoingStartRefreshAnim:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateFootIcon(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIfInTouch:Z

    return p0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mRefreshListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->doDisappearFooter()V

    return-void
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mEnabledPullDown:Z

    return p0
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->startMovementTracking(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->notifyAllListeners(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mDeltaY:F

    return p0
.end method

.method static synthetic access$900(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateHeaderPadding(F)V

    return-void
.end method

.method private adjustScrollY(F)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mDirectUp:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollY()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    invoke-interface {v0}, Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;->getHeaderTop()I

    move-result v0

    :goto_0
    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x46

    if-ge v0, v1, :cond_2

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_1
    div-float/2addr p1, v0

    goto :goto_2

    :cond_2
    const/16 v1, 0x64

    if-ge v0, v1, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_1

    :cond_3
    const/16 v1, 0x96

    if-ge v0, v1, :cond_4

    const/high16 v0, 0x40200000    # 2.5f

    goto :goto_1

    :cond_4
    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_1

    :goto_2
    float-to-int p1, p1

    return p1
.end method

.method private adjustScrollYPullUp(F)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mDirectUp:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getScrollY()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;

    invoke-interface {v0}, Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;->getFooterBottom()I

    move-result v0

    :goto_0
    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x46

    if-ge v0, v1, :cond_2

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_1
    div-float/2addr p1, v0

    goto :goto_2

    :cond_2
    const/16 v1, 0x64

    if-ge v0, v1, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_1

    :cond_3
    const/16 v1, 0x96

    if-ge v0, v1, :cond_4

    const/high16 v0, 0x40200000    # 2.5f

    goto :goto_1

    :cond_4
    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_1

    :goto_2
    neg-float p1, p1

    float-to-int p1, p1

    return p1
.end method

.method private cancelMovementTracking()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    :cond_0
    return-void
.end method

.method private checkPullUpLoad()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mEnablePullUp:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpStyle:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private checkPullUpRefresh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mEnablePullUp:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpStyle:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkSwipeGesture()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    instance-of v1, v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->ifSwipingOrOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private doDisappearFooter()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIsFinishing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isDoingStartRefreshAnim:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIsFinishing:Z

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 5
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 7
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;

    check-cast v2, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {v2}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->removeFooter()V

    .line 8
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;

    check-cast v2, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {v2}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->addFooter()V

    .line 9
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIsSyncing:Z

    .line 10
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIsFinishing:Z

    const/4 v2, 0x3

    .line 11
    iput v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->currentStatus:I

    .line 12
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;

    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    invoke-interface {v3}, Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;->getHeaderHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;->setClipBottom(I)V

    .line 13
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateFooterView()V

    .line 14
    iget v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->currentStatus:I

    invoke-direct {p0, v2, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->notifyAllListeners(II)V

    .line 15
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateFootIcon(I)V

    return-void
.end method

.method private doFinishRefreshing(I)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIsFinishing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isDoingStartRefreshAnim:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIsFinishing:Z

    if-ne p1, v1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 6
    :goto_0
    iget v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mLastNumber:I

    const/16 v3, 0x2d

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v2, v3, :cond_2

    new-array v3, v4, [I

    aput v2, v3, v0

    aput v1, v3, v1

    .line 7
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 8
    iget v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mLastNumber:I

    mul-int/lit8 v3, v3, 0x4

    int-to-long v6, v3

    goto :goto_2

    :cond_2
    if-ne p1, v1, :cond_3

    .line 9
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_1
    new-array v2, v4, [I

    .line 11
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v6, 0x1f4

    .line 12
    :goto_2
    sget-object v3, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;->OUT:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14
    new-instance v3, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$9;

    invoke-direct {v3, p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$9;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    const-wide/16 v2, 0x32

    if-ne p1, v1, :cond_4

    .line 16
    iget-object v6, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v7, 0x96

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v9, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;->OUT:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 17
    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 18
    iget-object v6, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v9, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;->OUT:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 19
    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    new-array v4, v4, [I

    .line 20
    iget-object v5, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    invoke-interface {v5}, Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;->getHeaderTop()I

    move-result v5

    aput v5, v4, v0

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    .line 21
    invoke-interface {v0}, Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;->getHeaderHeight()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    aput v0, v4, v1

    .line 22
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 23
    sget-object v4, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;->OUT:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 24
    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 25
    iget-object v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;

    invoke-virtual {v4}, Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;->getClipBottom()I

    move-result v4

    .line 26
    new-instance v5, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$10;

    invoke-direct {v5, p0, v4}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$10;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 27
    new-instance v4, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$11;

    invoke-direct {v4, p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$11;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 28
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 29
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 30
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 31
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->isShowFooter()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 32
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->setState(I)V

    goto :goto_3

    :cond_4
    if-nez p1, :cond_5

    .line 33
    iget-object v6, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v7, 0x12c

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v9, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;->OUT:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 34
    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 35
    iget-object v6, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v9, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;->OUT:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 36
    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    new-array v4, v4, [I

    .line 37
    iget-object v5, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;

    invoke-interface {v5}, Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;->getFooterBottom()I

    move-result v5

    aput v5, v4, v0

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;

    invoke-interface {v0}, Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;->getFooterHeight()I

    move-result v0

    neg-int v0, v0

    aput v0, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;->OUT:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 39
    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 40
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;->getClipTop()I

    move-result v1

    .line 41
    new-instance v4, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$12;

    invoke-direct {v4, p0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$12;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 42
    new-instance v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$13;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$13;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 43
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 44
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x2d
        0x55
    .end array-data
.end method

.method private ensusreNoMoreView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterNoMoreView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00bb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterNoMoreView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private getRefreshTextAlpha()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, -0x3cc20000    # -190.0f

    cmpg-float v1, v0, v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    :cond_0
    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x433e0000    # 190.0f

    sub-float v0, v1, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private getRefreshTextAlphaPullUp()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x433e0000    # 190.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    return v3

    :cond_0
    cmpl-float v2, v0, v3

    if-lez v2, :cond_1

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v1, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private initScrollData()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    .line 3
    iput v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mUpScrollStartY:F

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 4
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mDownScrollStartY:F

    return-void
.end method

.method private initViews(Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mEnablePullDown:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b00b6

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->checkPullUpRefresh()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b00bc

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f080212

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;->setClipTop(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;

    const v2, 0x7f08013a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;

    const v2, 0x7f08013b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootText:Landroid/widget/TextView;

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mEnableSwipe:Z

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->createRefreshableView(Landroid/util/AttributeSet;Z)Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    check-cast p1, Landroid/view/View;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 13
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->checkPullUpRefresh()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    check-cast p1, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;

    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$1;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V

    invoke-interface {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;->setRefreshFooterListener(Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView$RefreshFooterListener;)V

    .line 16
    :cond_2
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mEnablePullDown:Z

    if-eqz p1, :cond_3

    const p1, 0x7f080213

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    invoke-interface {v0}, Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;->getHeaderHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;->setClipBottom(I)V

    .line 19
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;

    const v0, 0x7f080229

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    .line 20
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    const v0, 0x7f0702f4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 21
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;

    const v0, 0x7f08022b

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    .line 22
    :cond_3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->addFooterView()V

    :cond_4
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private notifyAllListeners(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$OnStatusChangeListener;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$OnStatusChangeListener;->onStatusChange(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private recovery()V
    .locals 1

    const/4 v0, -0x2

    .line 1
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPrePosition:I

    return-void
.end method

.method private setHeadIcon(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;

    invoke-interface {v0}, Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;->getFooterBottom()I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;

    invoke-interface {v1}, Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;->getFooterHeight()I

    move-result v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    invoke-interface {v0}, Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;->getHeaderTop()I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    invoke-interface {v1}, Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;->getHeaderHeight()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x40a9999a    # 5.3f

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    move v0, v1

    .line 3
    :cond_1
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isDoingStartRefreshAnim:Z

    const/16 v2, 0x2d

    if-ge v0, v2, :cond_5

    .line 4
    iget-boolean v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHasClearRotation:Z

    if-nez v2, :cond_3

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 5
    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 7
    :goto_1
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHasClearRotation:Z

    .line 8
    :cond_3
    :try_start_0
    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mLastNumber:I

    if-eq v0, v1, :cond_b

    if-eqz p1, :cond_4

    .line 9
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateFootIcon(I)V

    goto :goto_5

    .line 10
    :cond_4
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateHeadIcon(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 12
    :cond_5
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHasClearRotation:Z

    if-eqz v1, :cond_7

    if-eqz p1, :cond_6

    .line 13
    invoke-direct {p0, v2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateFootIcon(I)V

    goto :goto_2

    .line 14
    :cond_6
    invoke-direct {p0, v2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateHeadIcon(I)V

    :goto_2
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHasClearRotation:Z

    .line 16
    :cond_7
    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mLastNumber:I

    if-eq v1, v2, :cond_9

    if-eqz p1, :cond_8

    .line 17
    invoke-direct {p0, v2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateFootIcon(I)V

    goto :goto_3

    .line 18
    :cond_8
    invoke-direct {p0, v2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateHeadIcon(I)V

    .line 19
    :cond_9
    :goto_3
    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mLastNumber:I

    if-eq v0, v1, :cond_b

    if-eqz p1, :cond_a

    .line 20
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    add-int/lit8 v1, v0, -0x2d

    mul-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_4

    .line 21
    :cond_a
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    add-int/lit8 v1, v0, -0x2d

    mul-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 22
    :goto_4
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mLastNumber:I

    :cond_b
    :goto_5
    return-void
.end method

.method private startMovementTracking(F)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mTrackingScrollStartY:F

    return-void
.end method

.method private updateFootIcon(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mLastNumber:I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method

.method private updateFooterScroll(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;

    invoke-interface {v0}, Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;->getFooterBottom()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->adjustScrollYPullUp(F)I

    move-result p1

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;->setFooterPadding(I)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;

    invoke-interface {p1}, Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;->scrollToBottom()Z

    .line 3
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIsSyncing:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;

    invoke-interface {v0}, Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;->getFooterBottom()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->getRefreshTextAlphaPullUp()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->setHeadIcon(Z)V

    :cond_0
    return-void
.end method

.method private updateFooterView()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->lastStatus:I

    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->currentStatus:I

    if-eq v0, v1, :cond_3

    const v0, 0x7f0d021a

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d021b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0218

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 8
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 10
    :cond_3
    :goto_0
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->currentStatus:I

    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->lastStatus:I

    return-void
.end method

.method private updateHeadIcon(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mLastNumber:I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_0
    return-void
.end method

.method private updateHeaderPadding(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    invoke-interface {v0}, Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;->getHeaderTop()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->adjustScrollY(F)I

    move-result p1

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;->setHeaderPadding(I)V

    .line 2
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIsSyncing:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    invoke-interface {v0}, Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;->getHeaderTop()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->getRefreshTextAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->setHeadIcon(Z)V

    :cond_0
    return-void
.end method

.method private updateHeaderView()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->lastStatus:I

    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->currentStatus:I

    if-eq v0, v1, :cond_3

    const v0, 0x7f0d020f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0210

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d020e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 8
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 10
    :cond_3
    :goto_0
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->currentStatus:I

    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->lastStatus:I

    return-void
.end method


# virtual methods
.method protected addFooterView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    return-void
.end method

.method public addListener(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$OnStatusChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected abstract addMoreView(Landroid/view/View;)V
.end method

.method protected abstract addNoMoreView(Landroid/view/View;)V
.end method

.method protected abstract canPredicateWhenPullDown()Z
.end method

.method protected abstract canPredicateWhenPullUpLoad()Z
.end method

.method protected abstract canPredicateWhenPullUpRefresh()Z
.end method

.method protected abstract createRefreshableView(Landroid/util/AttributeSet;Z)Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mRefreshAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 3
    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mRefreshAnim:Landroid/view/animation/Animation;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 7
    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullDownRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;

    .line 8
    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpLoadMore:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;

    .line 9
    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;

    .line 10
    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    .line 11
    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mRefreshListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;

    return-void
.end method

.method public disablePullDown()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mEnablePullDown:Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public disablePullUp()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mEnablePullUp:Z

    return-void
.end method

.method public disappearFooter()V
    .locals 8

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->startAnimTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->doDisappearFooter()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$14;

    invoke-direct {v3, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$14;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V

    iget-wide v6, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->startAnimTime:J

    sub-long/2addr v0, v6

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIgnoreTouchEvents:Z

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    return v2

    .line 4
    :cond_2
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIgnoreTouchEvents:Z

    if-eqz v0, :cond_3

    .line 5
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 6
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    if-eq v0, v1, :cond_6

    goto :goto_3

    .line 7
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 8
    iget v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mLastY:F

    sub-float v4, v0, v4

    iput v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mDeltaY:F

    .line 9
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mLastY:F

    .line 10
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mDeltaY:F

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_5

    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mDirectUp:Z

    goto :goto_3

    .line 11
    :cond_6
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIfInTouch:Z

    .line 12
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->recovery()V

    goto :goto_3

    .line 13
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mStartY:F

    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mLastY:F

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mStartX:F

    .line 15
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 16
    iput-boolean v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIfInTouch:Z

    .line 17
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 18
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->checkSwipeGesture()Z

    move-result v4

    if-nez v4, :cond_d

    iget-boolean v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->horizentalSwipeFlag:Z

    if-eqz v4, :cond_8

    goto :goto_6

    .line 19
    :cond_8
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullDownRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;

    if-eqz v1, :cond_c

    iget-object v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpLoadMore:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;

    if-nez v4, :cond_9

    goto :goto_5

    .line 20
    :cond_9
    invoke-virtual {v1, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 21
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpLoadMore:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;

    invoke-virtual {v4, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v3

    goto :goto_4

    :cond_a
    move v4, v2

    :goto_4
    or-int/2addr v1, v4

    .line 22
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->checkPullUpRefresh()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;

    invoke-virtual {v4, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_b

    move v2, v3

    :cond_b
    or-int p1, v1, v2

    or-int/2addr p1, v0

    return p1

    :cond_c
    :goto_5
    return v2

    .line 23
    :cond_d
    :goto_6
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->horizentalSwipeFlag:Z

    if-nez v0, :cond_e

    .line 24
    iput-boolean v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->horizentalSwipeFlag:Z

    .line 25
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v3, :cond_f

    if-eq p1, v1, :cond_f

    goto :goto_7

    .line 26
    :cond_f
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->horizentalSwipeFlag:Z

    :goto_7
    return v3
.end method

.method public enablePullDown()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mEnablePullDown:Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    const v1, 0x7f0702f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public enablePullUp()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mEnablePullUp:Z

    return-void
.end method

.method public finishRefreshing(I)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->startAnimTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->doFinishRefreshing(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$8;

    invoke-direct {v3, p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$8;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V

    iget-wide v6, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->startAnimTime:J

    sub-long/2addr v0, v6

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public getCurrentStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->currentStatus:I

    return v0
.end method

.method public getRefreshableView()Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    return-object v0
.end method

.method public hideLoadMore()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->setState(I)V

    .line 3
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isFooterAdded:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->removeMoreView(Landroid/view/View;)V

    .line 5
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isFooterAdded:Z

    :cond_0
    return-void
.end method

.method public hideNoMore()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->ensusreNoMoreView()V

    .line 2
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isFooterAdded:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterNoMoreView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->removeNoMoreView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isFooterAdded:Z

    :cond_0
    return-void
.end method

.method protected abstract isBottom(Z)Z
.end method

.method public isFinishedRefresh()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->getCurrentStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract isTop()Z
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const-string v0, "onAttachedToWindow"

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->log(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mOnStatusChangeListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$OnStatusChangeListener;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$2;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mOnStatusChangeListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$OnStatusChangeListener;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mListeners:Ljava/util/List;

    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mOnStatusChangeListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$OnStatusChangeListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterListener:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$3;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$3;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterListener:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterListener:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->setClickListener(Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const-string v0, "onDetachedFromWindow"

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->log(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mOnStatusChangeListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$OnStatusChangeListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mOnStatusChangeListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$OnStatusChangeListener;

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterListener:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->setClickListener(Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterListener:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mEnabledPullDown:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mStartY:F

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mScaleTouchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->currentStatus:I

    if-eq v0, v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullDownRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;

    invoke-static {p1, v2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;->access$1902(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;Z)Z

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpLoadMore:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;

    invoke-static {p1, v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->access$2002(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;Z)Z

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;

    invoke-static {p1, v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->access$2102(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;Z)Z

    goto/16 :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0, v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isBottom(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mStartY:F

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mScaleTouchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullDownRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;

    invoke-static {p1, v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;->access$1902(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;Z)Z

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpLoadMore:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;

    invoke-static {p1, v2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->access$2002(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;Z)Z

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;

    invoke-static {p1, v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->access$2102(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;Z)Z

    goto :goto_0

    .line 14
    :cond_2
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0, v2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isBottom(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mStartY:F

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mScaleTouchSlop:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_3

    .line 17
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->checkPullUpRefresh()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->currentStatus:I

    if-eq p1, v1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullDownRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;

    invoke-static {p1, v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;->access$1902(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;Z)Z

    .line 19
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpLoadMore:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;

    invoke-static {p1, v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->access$2002(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;Z)Z

    .line 20
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;

    invoke-static {p1, v2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->access$2102(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;Z)Z

    goto :goto_0

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullDownRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;

    invoke-static {p1, v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;->access$1902(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;Z)Z

    .line 22
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpLoadMore:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;

    invoke-static {p1, v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->access$2002(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;Z)Z

    .line 23
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;

    invoke-static {p1, v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->access$2102(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;Z)Z

    .line 24
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpLoadMore:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;->access$2000(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpLoadMore;)Z

    move-result p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullDownRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;->access$1900(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullDownRefresh;)Z

    move-result v0

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mPullUpRefresh:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;->access$2100(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$PullUpRefresh;)Z

    move-result v0

    or-int/2addr p1, v0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mLoadOnce:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mLoadOnce:Z

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->initScrollData()V

    return-void
.end method

.method public releaseToLoad()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->setState(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->performLoading()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->setClickListener(Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;)V

    return-void
.end method

.method public removeListener(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$OnStatusChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected abstract removeMoreView(Landroid/view/View;)V
.end method

.method protected abstract removeNoMoreView(Landroid/view/View;)V
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public setEnabledPullDownToRefresh(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mEnabledPullDown:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mEnabledPullDown:Z

    :cond_0
    return-void
.end method

.method public setHeadTextAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setNoMoreText(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->ensusreNoMoreView()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterNoMoreView:Landroid/view/View;

    const v1, 0x7f080218

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRefreshListener(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mRefreshListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;

    return-void
.end method

.method public showLoadMore()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->setState(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterListener:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;->setClickListener(Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView$FooterViewClickListener;)V

    .line 4
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isFooterAdded:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisanos/magicflow/pulltorefresh/ConversationListFooterView;

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->addMoreView(Landroid/view/View;)V

    .line 6
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isFooterAdded:Z

    :cond_0
    return-void
.end method

.method public showNoMore()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->ensusreNoMoreView()V

    .line 2
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isFooterAdded:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooterNoMoreView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->addNoMoreView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isFooterAdded:Z

    :cond_0
    return-void
.end method

.method public showRefreshing(ZI)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showRefreshing byPull "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLastNumber "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mLastNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->log(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->startAnimTime:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    const/4 v1, 0x2

    .line 4
    iput v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->currentStatus:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateHeaderView()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateFooterView()V

    .line 7
    :goto_0
    iget v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->currentStatus:I

    invoke-direct {p0, v3, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->notifyAllListeners(II)V

    if-ne p2, v2, :cond_1

    .line 8
    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    :goto_1
    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    invoke-interface {p1}, Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;->scrollToTop()Z

    .line 11
    iput v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mLastNumber:I

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 13
    invoke-direct {p0, v2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateHeadIcon(I)V

    new-array p1, v1, [I

    .line 14
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 15
    sget-object v3, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;->OUT:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x12c

    .line 16
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    new-instance v5, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$4;

    invoke-direct {v5, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$4;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    new-instance v5, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$5;

    invoke-direct {v5, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$5;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 19
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 20
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v3, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;->OUT:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_2
    const/16 p1, 0x2d

    if-ne p2, v2, :cond_3

    .line 22
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateHeadIcon(I)V

    goto :goto_2

    .line 23
    :cond_3
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->updateFootIcon(I)V

    .line 24
    :goto_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mRefreshAnim:Landroid/view/animation/Animation;

    if-eqz p1, :cond_5

    if-ne p2, v2, :cond_4

    .line 25
    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 26
    :cond_4
    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    :goto_3
    const-wide/16 v3, 0xc8

    if-ne p2, v2, :cond_6

    .line 27
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p1

    float-to-int p1, p1

    new-array p2, v1, [I

    aput p1, p2, v0

    aput v0, p2, v2

    .line 28
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 29
    sget-object p2, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;->OUT:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 31
    new-instance p2, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$6;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$6;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 32
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    .line 33
    :cond_6
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p1

    float-to-int p1, p1

    new-array p2, v1, [I

    aput p1, p2, v0

    aput v0, p2, v2

    .line 34
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 35
    sget-object p2, Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;->OUT:Lcom/smartisanos/magicflow/pulltorefresh/CubicInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 36
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 37
    new-instance p2, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$7;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$7;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 38
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 39
    :goto_4
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIsSyncing:Z

    return-void

    :array_0
    .array-data 4
        0x1
        0x2d
    .end array-data
.end method
