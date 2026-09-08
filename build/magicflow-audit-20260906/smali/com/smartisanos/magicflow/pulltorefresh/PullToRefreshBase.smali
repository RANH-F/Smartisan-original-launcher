.class public abstract Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/smartisanos/magicflow/pulltorefresh/IPullToRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;,
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;,
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;,
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;,
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener2;,
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;,
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnPullEventListener;,
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;,
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;,
        Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lcom/smartisanos/magicflow/pulltorefresh/IPullToRefresh<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field static final DEMO_SCROLL_INTERVAL:I = 0xe1

.field static final FRICTION:F = 2.0f

.field public static final LOG_TAG:Ljava/lang/String; = "PullToRefresh"

.field public static final SMOOTH_SCROLL_DURATION_MS:I = 0xc8

.field public static final SMOOTH_SCROLL_LONG_DURATION_MS:I = 0x145

.field static final STATE_CURRENT_MODE:Ljava/lang/String; = "ptr_current_mode"

.field static final STATE_MODE:Ljava/lang/String; = "ptr_mode"

.field static final STATE_SCROLLING_REFRESHING_ENABLED:Ljava/lang/String; = "ptr_disable_scrolling"

.field static final STATE_SHOW_REFRESHING_VIEW:Ljava/lang/String; = "ptr_show_refreshing_view"

.field static final STATE_STATE:Ljava/lang/String; = "ptr_state"

.field static final STATE_SUPER:Ljava/lang/String; = "ptr_super"

.field static final USE_HW_LAYERS:Z = false


# instance fields
.field private mCurrentMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

.field private mCurrentSmoothScrollRunnable:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase<",
            "TT;>.SmoothScrollRunnable;"
        }
    .end annotation
.end field

.field private mFilterTouchEvents:Z

.field protected mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

.field private mHasPullDownFriction:Z

.field private mHasPullUpFriction:Z

.field protected mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLayoutVisibilityChangesEnabled:Z

.field private mLoadingAnimationStyle:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field private mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

.field private mOnPullEventListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnPullEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnPullEventListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener2:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener2<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOverScrollEnabled:Z

.field protected mRefreshableView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRefreshableViewWrapper:Landroid/widget/FrameLayout;

.field private mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mScrollingWhileRefreshingEnabled:Z

.field private mShowViewWhileRefreshing:Z

.field private mState:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mState:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 7
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 8
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 9
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 10
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHasPullDownFriction:Z

    .line 11
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHasPullUpFriction:Z

    .line 12
    invoke-static {}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 16
    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mState:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    .line 17
    invoke-static {}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 19
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 20
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 21
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 22
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 23
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHasPullDownFriction:Z

    .line 24
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHasPullUpFriction:Z

    .line 25
    invoke-static {}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 29
    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mState:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    .line 30
    invoke-static {}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 32
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 33
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 34
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 35
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 36
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHasPullDownFriction:Z

    .line 37
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHasPullUpFriction:Z

    .line 38
    invoke-static {}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 39
    iput-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    const/4 p2, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 43
    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mState:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    .line 44
    invoke-static {}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 46
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 47
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 48
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 49
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 50
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHasPullDownFriction:Z

    .line 51
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHasPullUpFriction:Z

    .line 52
    invoke-static {}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 53
    iput-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    .line 54
    iput-object p3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    const/4 p2, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->callRefreshListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;IJJLcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method private addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private callRefreshListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;->onRefresh(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v2, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v1, v2, :cond_1

    .line 5
    invoke-interface {v0, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener2;->onPullDownToRefresh(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v2, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v1, v2, :cond_2

    .line 7
    invoke-interface {v0, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener2;->onPullUpToRefresh(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getMaximumPullScroll()I
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_0
    const/16 v0, 0x11

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 5
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mTouchSlop:I

    .line 7
    sget-object v3, Lcom/smartisanos/magicflow/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v4, 0xc

    .line 8
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-static {v4}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    .line 10
    :cond_1
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-static {v4}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;->mapIntToValue(I)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 12
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    .line 13
    iget-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V

    .line 14
    sget-object p2, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, p2, v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    move-result-object p2

    iput-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    .line 15
    sget-object p2, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, p2, v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    const/16 p1, 0xf

    .line 16
    invoke-virtual {v3, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 17
    invoke-virtual {v3, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 18
    iget-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "ptrAdapterViewBackground"

    const-string p2, "ptrRefreshableViewBackground"

    .line 20
    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 22
    iget-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    const/16 p1, 0xd

    .line 23
    invoke-virtual {v3, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 24
    invoke-virtual {v3, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 25
    :cond_5
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 26
    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 27
    :cond_6
    invoke-virtual {p0, v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 28
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->updateUIForMode()V

    return-void
.end method

.method private isReadyForPull()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    return v3

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1

    .line 3
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    return v0

    .line 4
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v0

    return v0
.end method

.method private pullEvent()V
    .locals 6

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    .line 3
    iget v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    .line 5
    iget v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 6
    :goto_0
    sget-object v3, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-eq v3, v1, :cond_2

    .line 7
    iget-boolean v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHasPullDownFriction:Z

    if-eqz v3, :cond_1

    sub-float/2addr v0, v2

    .line 8
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_1

    :cond_1
    sub-float/2addr v0, v2

    .line 9
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v2

    goto :goto_3

    .line 11
    :cond_2
    iget-boolean v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHasPullUpFriction:Z

    if-eqz v3, :cond_3

    sub-float/2addr v0, v2

    .line 12
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_2

    :cond_3
    sub-float/2addr v0, v2

    .line 13
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 14
    :goto_2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v2

    .line 15
    :goto_3
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v3

    if-nez v3, :cond_6

    .line 17
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 18
    sget-object v4, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v5, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v1, :cond_4

    .line 19
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;->onPull(F)V

    goto :goto_4

    .line 20
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;->onPull(F)V

    .line 21
    :goto_4
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mState:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    sget-object v3, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    const/4 v4, 0x0

    if-eq v1, v3, :cond_5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v2, v1, :cond_5

    .line 22
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    new-array v1, v4, [Z

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setState(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;[Z)V

    goto :goto_5

    .line 23
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mState:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    sget-object v3, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    if-ne v1, v3, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 24
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    new-array v1, v4, [Z

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setState(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;[Z)V

    :cond_6
    :goto_5
    return-void
.end method

.method private final smoothScrollTo(IJ)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method

.method private final smoothScrollTo(IJJLcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->stop()V

    .line 6
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    :goto_0
    move v3, v0

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    goto :goto_0

    :goto_1
    if-eq v3, p1, :cond_4

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 11
    :cond_2
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move-wide v5, p2

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;IIJLcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    const-wide/16 p1, 0x0

    cmp-long p1, p4, p1

    if-lez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, p1, p4, p5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method private final smoothScrollToAndBack(I)V
    .locals 7

    .line 1
    new-instance v6, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$3;

    invoke-direct {v6, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$3;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected createLoadingLayout(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    move-result-object p1

    const/4 p2, 0x4

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-object p1
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutProxy;
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutProxy;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutProxy;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;)V

    :cond_1
    return-object v0
.end method

.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public final demo()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->smoothScrollToAndBack(I)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->smoothScrollToAndBack(I)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected final disableLoadingLayoutVisibilityChanges()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    return-void
.end method

.method public final getCurrentMode()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    return v0
.end method

.method protected final getFooterLayout()Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    return-object v0
.end method

.method protected final getFooterSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getHeaderLayout()Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    return-object v0
.end method

.method protected final getHeaderSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getLoadingLayoutProxy()Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadingLayoutProxy(ZZ)Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->createLoadingLayoutProxy(ZZ)Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutProxy;

    move-result-object p1

    return-object p1
.end method

.method public final getMode()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;
.end method

.method protected getPullToRefreshScrollDuration()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .locals 1

    const/16 v0, 0x145

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    return v0
.end method

.method public final getState()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mState:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    return-object v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 0

    return-void
.end method

.method public final isDisableScrollingWhileRefreshing()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isScrollingWhileRefreshingEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isPullToRefreshEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v0

    return v0
.end method

.method public final isPullToRefreshOverScrollEnabled()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/OverscrollHelper;->isAndroidOverScrollEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract isReadyForPullEnd()Z
.end method

.method protected abstract isReadyForPullStart()Z
.end method

.method public final isRefreshing()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mState:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

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

.method public final isScrollingWhileRefreshingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_a

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    iget-boolean v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    return v2

    :cond_2
    if-eqz v0, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto/16 :goto_1

    .line 4
    :cond_3
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 5
    :cond_4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 7
    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_5

    .line 8
    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    sub-float v1, v0, v1

    .line 9
    iget v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    sub-float v3, p1, v3

    goto :goto_0

    .line 10
    :cond_5
    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    sub-float v1, p1, v1

    .line 11
    iget v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    sub-float v3, v0, v3

    .line 12
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 13
    iget v5, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_9

    iget-boolean v5, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    if-eqz v5, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_9

    .line 14
    :cond_6
    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_7

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 15
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 16
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 17
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    if-ne p1, v0, :cond_9

    .line 19
    sget-object p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_1

    .line 20
    :cond_7
    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_9

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_9

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 21
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 22
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 23
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 24
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    if-ne p1, v0, :cond_9

    .line 25
    sget-object p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_1

    .line 26
    :cond_8
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 29
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 30
    :cond_9
    :goto_1
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    return p1

    .line 31
    :cond_a
    :goto_2
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    return v1
.end method

.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onPullToRefresh()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;->pullToRefresh()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;->pullToRefresh()V

    :goto_0
    return-void
.end method

.method public final onRefreshComplete()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setState(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;[Z)V

    :cond_0
    return-void
.end method

.method protected onRefreshing(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;->refreshing()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;->refreshing()V

    :cond_1
    if-eqz p1, :cond_4

    .line 5
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    if-eqz p1, :cond_3

    .line 6
    new-instance p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$1;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;)V

    .line 7
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->smoothScrollTo(ILcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->smoothScrollTo(ILcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->callRefreshListener()V

    :goto_0
    return-void
.end method

.method protected onReleaseToRefresh()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;->releaseToRefresh()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;->releaseToRefresh()V

    :goto_0
    return-void
.end method

.method protected onReset()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;->reset()V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;->reset()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const/4 v0, 0x0

    const-string v1, "ptr_mode"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setMode(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V

    const-string v1, "ptr_current_mode"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    const-string v1, "ptr_disable_scrolling"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    const/4 v1, 0x1

    const-string v2, "ptr_show_refreshing_view"

    .line 6
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    const-string v2, "ptr_super"

    .line 7
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v2, "ptr_state"

    .line 8
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->mapIntToValue(I)Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    move-result-object v2

    .line 9
    sget-object v3, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    if-ne v2, v3, :cond_1

    :cond_0
    new-array v3, v1, [Z

    aput-boolean v1, v3, v0

    .line 10
    invoke-virtual {p0, v2, v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setState(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->onPtrRestoreInstanceState(Landroid/os/Bundle;)V

    return-void

    .line 12
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->onPtrSaveInstanceState(Landroid/os/Bundle;)V

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mState:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->getIntValue()I

    move-result v1

    const-string v2, "ptr_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v1

    const-string v2, "ptr_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v1

    const-string v2, "ptr_current_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    const-string v2, "ptr_disable_scrolling"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    const-string v2, "ptr_show_refreshing_view"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "ptr_super"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->refreshRefreshableViewSize(II)V

    .line 4
    new-instance p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$2;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto :goto_0

    .line 5
    :cond_3
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v0, :cond_9

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->pullEvent()V

    return v2

    .line 9
    :cond_4
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz p1, :cond_9

    .line 10
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mState:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    if-eqz p1, :cond_6

    .line 12
    :cond_5
    sget-object p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    new-array v0, v2, [Z

    aput-boolean v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setState(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;[Z)V

    return v2

    .line 13
    :cond_6
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 14
    invoke-virtual {p0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    return v2

    .line 15
    :cond_7
    sget-object p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    new-array v0, v1, [Z

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setState(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;[Z)V

    return v2

    .line 16
    :cond_8
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    return v2

    :cond_9
    :goto_0
    return v1
.end method

.method protected final refreshLoadingViewsSize()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    .line 6
    sget-object v5, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v2, v0}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;->setHeight(I)V

    neg-int v2, v0

    goto :goto_0

    :cond_1
    move v2, v7

    .line 9
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v4}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    iget-object v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v4, v0}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;->setHeight(I)V

    neg-int v4, v0

    goto :goto_2

    :cond_2
    move v4, v7

    goto :goto_2

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;->setWidth(I)V

    neg-int v1, v0

    goto :goto_1

    :cond_4
    move v1, v7

    .line 13
    :goto_1
    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v3, v0}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;->setWidth(I)V

    neg-int v3, v0

    goto :goto_2

    :cond_5
    move v3, v7

    .line 15
    :goto_2
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method protected final refreshRefreshableViewSize(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 p1, 0x2

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq p1, p2, :cond_2

    .line 4
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 6
    :cond_1
    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq p2, p1, :cond_2

    .line 7
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    return-void
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    return-void
.end method

.method public setFooterLayout(Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->updateUIForMode()V

    return-void
.end method

.method public setHasPullDownFriction(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHasPullDownFriction:Z

    return-void
.end method

.method public setHasPullUpFriction(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHasPullUpFriction:Z

    return-void
.end method

.method public setHeaderLayout(Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->updateUIForMode()V

    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    neg-int v1, v0

    .line 2
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    :cond_2
    :goto_0
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0, v1, p1}, Landroid/widget/LinearLayout;->scrollTo(II)V

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p0, p1, v1}, Landroid/widget/LinearLayout;->scrollTo(II)V

    :goto_1
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    return-void
.end method

.method public final setMode(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->updateUIForMode()V

    :cond_0
    return-void
.end method

.method public setOnPullEventListener(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnPullEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnPullEventListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    return-void
.end method

.method public final setOnRefreshListener(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener2<",
            "TT;>;)V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    return-void
.end method

.method public final setOnRefreshListener(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setMode(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V

    return-void
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    return-void
.end method

.method public final setRefreshing()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setRefreshing(Z)V

    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setState(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;[Z)V

    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setReleaseLabel(Ljava/lang/CharSequence;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/smartisanos/magicflow/pulltorefresh/ILoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    return-void
.end method

.method public setSecondFooterLayout(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    return-void
.end method

.method final varargs setState(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;[Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mState:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    .line 2
    sget-object p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$State:[I

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mState:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    aget-boolean p1, p2, p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->onRefreshing(Z)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->onReleaseToRefresh()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->onPullToRefresh()V

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->onReset()V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    if-eqz p1, :cond_4

    .line 8
    iget-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mState:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-interface {p1, p0, p2, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnPullEventListener;->onPullEvent(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$State;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V

    :cond_4
    return-void
.end method

.method protected final smoothScrollTo(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJ)V

    return-void
.end method

.method protected final smoothScrollTo(ILcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 8

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method

.method protected final smoothScrollToLonger(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDurationLonger()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJ)V

    return-void
.end method

.method protected updateUIForMode()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    :goto_0
    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    return-void
.end method
