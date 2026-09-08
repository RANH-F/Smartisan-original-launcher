.class public Lcom/smartisanos/magicflow/view/pictureview/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;,
        Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;,
        Lcom/smartisanos/magicflow/view/pictureview/ViewPager$SimpleOnPageChangeListener;,
        Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PageTransformer;,
        Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnAdapterChangeListener;,
        Lcom/smartisanos/magicflow/view/pictureview/ViewPager$Decor;,
        Lcom/smartisanos/magicflow/view/pictureview/ViewPager$SavedState;,
        Lcom/smartisanos/magicflow/view/pictureview/ViewPager$MyAccessibilityDelegate;,
        Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PagerObserver;,
        Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;,
        Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ViewPositionComparator;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z = false


# instance fields
.field private COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mIgnoreGutter:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mPageMargin:I

.field private mPageTransformer:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private sInterpolator:Landroid/view/animation/Interpolator;

.field private sPositionComparator:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ViewPositionComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    .line 1
    sput-object v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$1;-><init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 3
    new-instance p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$2;-><init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    invoke-direct {p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTempItem:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 9
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v0, -0x800001

    .line 10
    iput v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 11
    iput v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastOffset:F

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOffscreenPageLimit:I

    .line 13
    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    .line 14
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFirstLayout:Z

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 16
    new-instance v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ViewPositionComparator;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ViewPositionComparator;-><init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->sPositionComparator:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ViewPositionComparator;

    .line 17
    new-instance v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$3;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$3;-><init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 18
    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScrollState:I

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$1;-><init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 22
    new-instance p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$2;-><init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 24
    new-instance p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    invoke-direct {p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTempItem:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    .line 25
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mRestoredCurItem:I

    const/4 p2, 0x0

    .line 27
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 28
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const p2, -0x800001

    .line 29
    iput p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFirstOffset:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 30
    iput p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastOffset:F

    const/4 p2, 0x1

    .line 31
    iput p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOffscreenPageLimit:I

    .line 32
    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    .line 33
    iput-boolean p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFirstLayout:Z

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 35
    new-instance p2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ViewPositionComparator;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ViewPositionComparator;-><init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;)V

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->sPositionComparator:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ViewPositionComparator;

    .line 36
    new-instance p2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$3;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$3;-><init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;)V

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 37
    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScrollState:I

    .line 38
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->initViewPager()V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    return p0
.end method

.method private calculatePageOffsets(Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;ILcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_6

    .line 4
    iget v3, p3, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    .line 5
    iget v4, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_3

    .line 6
    iget v4, p3, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    iget p3, p3, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    move p3, v1

    .line 7
    :goto_1
    iget v5, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-gt v3, v5, :cond_6

    iget-object v5, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_6

    .line 8
    :goto_2
    iget-object v5, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    iget v6, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_1

    iget-object v6, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_1

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 9
    :cond_1
    :goto_3
    iget v6, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_2

    .line 10
    iget-object v6, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6, v3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 11
    :cond_2
    iput v4, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    .line 12
    iget v5, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-le v3, v4, :cond_6

    .line 13
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 14
    iget p3, p3, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    .line 15
    :goto_4
    iget v5, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-lt v3, v5, :cond_6

    if-ltz v4, :cond_6

    .line 16
    :goto_5
    iget-object v5, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    iget v6, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_4

    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 17
    :cond_4
    :goto_6
    iget v6, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_5

    .line 18
    iget-object v6, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6, v3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 19
    :cond_5
    iget v6, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    .line 20
    iput p3, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 21
    :cond_6
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 22
    iget v3, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    .line 23
    iget v4, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    add-int/lit8 v5, v4, -0x1

    if-nez v4, :cond_7

    move v4, v3

    goto :goto_7

    :cond_7
    const v4, -0x800001

    .line 24
    :goto_7
    iput v4, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFirstOffset:F

    .line 25
    iget v4, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v4, v0, :cond_8

    iget v4, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v7

    sub-float/2addr v4, v6

    goto :goto_8

    :cond_8
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v4, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastOffset:F

    add-int/lit8 v4, p2, -0x1

    :goto_9
    if-ltz v4, :cond_b

    .line 26
    iget-object v7, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    :goto_a
    iget v8, v7, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-le v5, v8, :cond_9

    iget-object v8, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v8, v5}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr v3, v5

    move v5, v9

    goto :goto_a

    .line 27
    :cond_9
    iget v9, v7, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    sub-float/2addr v3, v9

    .line 28
    iput v3, v7, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    if-nez v8, :cond_a

    .line 29
    iput v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFirstOffset:F

    :cond_a
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    .line 30
    :cond_b
    iget v3, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    iget v4, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 31
    iget p1, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    .line 32
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    :goto_c
    iget v5, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-ge p1, v5, :cond_c

    iget-object v5, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v5, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v3, p1

    move p1, v7

    goto :goto_c

    :cond_c
    if-ne v5, v0, :cond_d

    .line 33
    iget v5, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastOffset:F

    .line 34
    :cond_d
    iput v3, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    .line 35
    iget v4, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 36
    :cond_e
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mNeedCalculatePageOffsets:Z

    return-void
.end method

.method private completeScroll(Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScrollState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0, v2}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 3
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    .line 6
    iget-object v5, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 7
    iget-object v6, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 8
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 9
    :cond_2
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPopulatePending:Z

    move v3, v0

    move v0, v2

    .line 10
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 11
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    .line 12
    iget-boolean v5, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_3

    .line 13
    iput-boolean v2, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->scrolling:Z

    move v3, v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    if-eqz p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 1

    .line 1
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFlingDistance:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mMinimumVelocity:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2
    :cond_1
    iget p3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    if-lt p1, p3, :cond_2

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_2
    const p3, 0x3f19999a    # 0.6f

    :goto_0
    int-to-float p1, p1

    add-float/2addr p1, p2

    add-float/2addr p1, p3

    float-to-int p1, p1

    .line 3
    :goto_1
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 4
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    .line 5
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    .line 6
    iget p2, p2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    iget p3, p3, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method private enableLayers(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :cond_0
    move v3, v1

    .line 2
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsBeingDragged:Z

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsUnableToDrag:Z

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 8
    check-cast p2, Landroid/view/ViewGroup;

    .line 9
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 10
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 11
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 12
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 13
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private getClientWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    .line 3
    iget v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v8, v1

    move v9, v8

    move v1, v4

    move v7, v5

    move v5, v6

    .line 4
    :goto_2
    iget-object v10, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_6

    .line 5
    iget-object v10, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    if-nez v5, :cond_2

    .line 6
    iget v11, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_2

    .line 7
    iget-object v10, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTempItem:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    add-float/2addr v8, v9

    add-float/2addr v8, v0

    .line 8
    iput v8, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    .line 9
    iput v7, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    .line 10
    iget-object v7, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v8, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    invoke-virtual {v7, v8}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v7

    iput v7, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v1, v1, -0x1

    .line 11
    :cond_2
    iget v8, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    .line 12
    iget v7, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v8

    add-float/2addr v7, v0

    if-nez v5, :cond_3

    cmpg-float v5, v2, v8

    if-gez v5, :cond_3

    return-object v3

    :cond_3
    cmpg-float v3, v2, v7

    if-ltz v3, :cond_5

    .line 13
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne v1, v3, :cond_4

    goto :goto_3

    .line 14
    :cond_4
    iget v7, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    .line 15
    iget v9, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v1, v1, 0x1

    move v5, v4

    move-object v3, v10

    goto :goto_2

    :cond_5
    :goto_3
    return-object v10

    :cond_6
    return-object v3
.end method

.method private isGutterDrag(FF)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    cmpg-float p1, p2, v1

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    .line 5
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private pageScrolled(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCalledSuper:Z

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, v2, p1, v2}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->onPageScrolled(IFI)V

    .line 4
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCalledSuper:Z

    if-eqz p1, :cond_0

    return v2

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->infoForCurrentScrollPosition()Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object v0

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getClientWidth()I

    move-result v3

    .line 8
    iget v4, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageMargin:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 9
    iget v6, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 10
    iget v3, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    sub-float/2addr p1, v3

    iget v0, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 11
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCalledSuper:Z

    .line 12
    invoke-virtual {p0, v6, p1, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->onPageScrolled(IFI)V

    .line 13
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCalledSuper:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private performDrag(F)Z
    .locals 15

    move-object v10, p0

    move/from16 v0, p1

    .line 1
    iget v1, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    sub-float/2addr v1, v0

    .line 2
    iput v0, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float v11, v0, v1

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    .line 5
    iget v2, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFirstOffset:F

    mul-float/2addr v2, v0

    .line 6
    iget v3, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastOffset:F

    mul-float/2addr v3, v0

    .line 7
    iget-object v4, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    .line 8
    iget-object v5, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v13, 0x1

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    .line 9
    iget v6, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-eqz v6, :cond_0

    .line 10
    iget v2, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v2, v0

    move v4, v12

    goto :goto_0

    :cond_0
    move v4, v13

    .line 11
    :goto_0
    iget v6, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    iget-object v7, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v7}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v7

    sub-int/2addr v7, v13

    if-eq v6, v7, :cond_1

    .line 12
    iget v3, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v3, v0

    move v0, v12

    goto :goto_1

    :cond_1
    move v0, v13

    :goto_1
    cmpg-float v5, v11, v2

    if-gez v5, :cond_2

    if-eqz v4, :cond_3

    float-to-int v1, v1

    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    float-to-int v6, v2

    const/4 v7, 0x0

    iget v8, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOverscrollDistance:I

    const/4 v9, 0x0

    const/4 v14, 0x1

    move-object v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v14

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->overScrollBy(IIIIIIIIZ)Z

    goto :goto_2

    :cond_2
    cmpl-float v2, v11, v3

    if-lez v2, :cond_3

    if-eqz v0, :cond_3

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    float-to-int v6, v3

    const/4 v7, 0x0

    iget v8, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOverscrollDistance:I

    const/4 v9, 0x0

    const/4 v14, 0x1

    move-object v0, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v14

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->overScrollBy(IIIIIIIIZ)Z

    goto :goto_2

    :cond_3
    move v13, v12

    :goto_2
    if-nez v13, :cond_4

    .line 15
    iget v0, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    float-to-int v1, v11

    int-to-float v2, v1

    sub-float/2addr v11, v2

    add-float/2addr v0, v11

    iput v0, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 17
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->pageScrolled(I)Z

    :cond_4
    return v12
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 6

    if-lez p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p2, v0

    mul-float/2addr p3, p2

    float-to-int v1, p3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 6
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getDuration()I

    move-result p2

    iget-object p3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->timePassed()I

    move-result p3

    sub-int v5, p2, p3

    .line 8
    iget p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    invoke-virtual {p0, p2}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->infoForPosition(I)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget p2, p2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int v3, p2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1

    .line 10
    :cond_0
    iget p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    invoke-virtual {p0, p2}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->infoForPosition(I)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 11
    iget p2, p2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    iget p3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastOffset:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x0

    .line 14
    invoke-direct {p0, p2}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->completeScroll(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_2
    :goto_1
    return-void
.end method

.method private removeNonDecorViews()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;

    .line 4
    iget-boolean v1, v1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->infoForPosition(I)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    .line 3
    iget v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFirstOffset:F

    iget v0, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    iget v4, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastOffset:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p0, v0, v1, p3}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->smoothScrollTo(III)V

    if-eqz p4, :cond_1

    .line 5
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOnPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_1

    .line 6
    invoke-interface {p2, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    if-eqz p4, :cond_5

    .line 7
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInternalPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_5

    .line 8
    invoke-interface {p2, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    .line 9
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOnPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_3

    .line 10
    invoke-interface {p2, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    if-eqz p4, :cond_4

    .line 11
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInternalPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_4

    .line 12
    invoke-interface {p2, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 13
    :cond_4
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->completeScroll(Z)V

    .line 14
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 15
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->pageScrolled(I)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScrollState:I

    if-eq v0, p1, :cond_2

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScrollState:I

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageTransformer:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PageTransformer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->enableLayers(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOnPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_2
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->sPositionComparator:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ViewPositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-virtual {p0, v3}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->infoForChild(Landroid/view/View;)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    iget v4, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 8
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method addNewItem(II)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;-><init>()V

    .line 2
    iput p1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p1

    iput p1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    if-ltz p2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->infoForChild(Landroid/view/View;)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget v2, v2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    iget v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    .line 6
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p3}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 3
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;

    .line 4
    iget-boolean v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->isDecor:Z

    .line 5
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->needsMeasure:Z

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    .line 10
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_1
    if-nez v4, :cond_4

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    const-string v5, " => "

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ViewPager"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move-object v3, v0

    .line 9
    :goto_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_8

    if-ne p1, v5, :cond_6

    .line 10
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 11
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_5

    if-lt v1, v2, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->pageLeft()Z

    move-result v0

    goto :goto_4

    .line 13
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_4
    move v2, v0

    goto :goto_5

    :cond_6
    if-ne p1, v4, :cond_b

    .line 14
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 15
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_7

    if-gt v1, v2, :cond_7

    .line 16
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->pageRight()Z

    move-result v0

    goto :goto_4

    .line 17
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_4

    :cond_8
    if-eq p1, v5, :cond_a

    if-eq p1, v1, :cond_a

    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 18
    :cond_9
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->pageRight()Z

    move-result v2

    goto :goto_5

    .line 19
    :cond_a
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->pageLeft()Z

    move-result v2

    :cond_b
    :goto_5
    if-eqz v2, :cond_c

    .line 20
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_c
    return v2
.end method

.method public beginFakeDrag()Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFakeDragging:Z

    .line 3
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setScrollState(I)V

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    iput v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInitialMotionX:F

    .line 5
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 6
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 8
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    .line 9
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 11
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 12
    iput-wide v10, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFakeDragBeginTime:J

    return v0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 1
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 6
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 7
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 8
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getClientWidth()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_1

    int-to-float p1, v0

    .line 4
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFirstOffset:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_2

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    if-lez p1, :cond_2

    int-to-float p1, v0

    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastOffset:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeScroll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 7
    invoke-direct {p0, v2}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->pageScrolled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 10
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->completeScroll(Z)V

    :goto_0
    return-void
.end method

.method dataSetChanged()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 2
    iput v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mExpectedAdapterCount:I

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 4
    :goto_0
    iget v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    move v5, v1

    move v6, v2

    move v1, v4

    move v2, v1

    .line 5
    :goto_1
    iget-object v7, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 6
    iget-object v7, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    .line 7
    iget-object v8, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v9, v7, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    const/4 v9, -0x2

    if-ne v8, v9, :cond_3

    .line 8
    iget-object v5, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    if-nez v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v2, v3

    .line 10
    :cond_1
    iget-object v5, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v8, v7, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    iget-object v9, v7, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, p0, v8, v9}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 11
    iget v5, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    iget v7, v7, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-ne v5, v7, :cond_2

    add-int/lit8 v6, v0, -0x1

    .line 12
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    :cond_2
    :goto_2
    move v5, v3

    goto :goto_3

    .line 13
    :cond_3
    iget v9, v7, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_5

    .line 14
    iget v5, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    if-ne v9, v5, :cond_4

    move v6, v8

    .line 15
    :cond_4
    iput v8, v7, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    goto :goto_2

    :cond_5
    :goto_3
    add-int/2addr v1, v3

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    .line 16
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v5, :cond_a

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_4
    if-ge v1, v0, :cond_9

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;

    .line 21
    iget-boolean v5, v2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_8

    const/4 v5, 0x0

    .line 22
    iput v5, v2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->widthFactor:F

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 23
    :cond_9
    invoke-virtual {p0, v6, v4, v3}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {p0, v3}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->infoForChild(Landroid/view/View;)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    iget v4, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 3
    iget v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4
    iget v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPopulatePending:Z

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getClientWidth()I

    move-result v2

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->infoForCurrentScrollPosition()Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object v4

    .line 9
    iget v5, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 10
    iget v2, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v3, v2

    iget v2, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v3, v2

    .line 11
    iget v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    iget v4, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInitialMotionX:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 12
    invoke-direct {p0, v5, v3, v0, v2}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->determineTargetPage(IFII)I

    move-result v2

    .line 13
    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 14
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->endDrag()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFakeDragging:Z

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/16 p1, 0x42

    .line 8
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x11

    .line 9
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->arrowScroll(I)Z

    move-result p1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public fakeDragBy(F)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_4

    .line 2
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getClientWidth()I

    move-result p1

    int-to-float p1, p1

    .line 5
    iget v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFirstOffset:F

    mul-float/2addr v1, p1

    .line 6
    iget v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastOffset:F

    mul-float/2addr v2, p1

    .line 7
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    .line 8
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    .line 9
    iget v5, v3, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-eqz v5, :cond_0

    .line 10
    iget v1, v3, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v1, p1

    .line 11
    :cond_0
    iget v3, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    iget-object v5, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_1

    .line 12
    iget v2, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v2, p1

    :cond_1
    cmpg-float p1, v0, v1

    if-gez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    cmpl-float p1, v0, v2

    if-lez p1, :cond_3

    move v0, v2

    .line 13
    :cond_3
    :goto_0
    iget p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 15
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->pageScrolled(I)Z

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 17
    iget-wide v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFakeDragBeginTime:J

    const/4 v6, 0x2

    iget v7, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;-><init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;-><init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;

    iget p1, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->childIndex:I

    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    if-eqz v0, :cond_0

    .line 2
    instance-of p1, v0, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->infoForChild(Landroid/view/View;)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object p1

    return-object p1
.end method

.method infoForChild(Landroid/view/View;)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method infoForPosition(I)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    .line 3
    iget v2, v1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method initViewPager()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/widget/Scroller;

    iget-object v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 6
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 8
    invoke-static {v2}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTouchSlop:I

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 9
    iput v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mMinimumVelocity:I

    .line 10
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mMaximumVelocity:I

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 11
    iput v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFlingDistance:I

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 12
    iput v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCloseEnough:I

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 13
    iput v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mDefaultGutterSize:I

    .line 14
    new-instance v1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$MyAccessibilityDelegate;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$MyAccessibilityDelegate;-><init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 15
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 16
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOnPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOnPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInternalPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 5
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInternalPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapterChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnAdapterChangeListener;

    if-eqz v0, :cond_2

    .line 7
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapterChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnAdapterChangeListener;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageTransformer:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PageTransformer;

    if-eqz v0, :cond_3

    .line 9
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageTransformer:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PageTransformer;

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    if-eqz v0, :cond_4

    .line 11
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_5

    .line 13
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 15
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_7

    .line 17
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mObserver:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PagerObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 18
    :cond_7
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageMargin:I

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_4

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 5
    iget v3, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 6
    iget-object v5, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    .line 7
    iget v7, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    .line 8
    iget-object v8, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 9
    iget v9, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    .line 10
    iget-object v10, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    iget v10, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    :goto_0
    if-ge v9, v10, :cond_4

    .line 11
    :goto_1
    iget v11, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    add-int/lit8 v6, v6, 0x1

    .line 12
    iget-object v5, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    goto :goto_1

    .line 13
    :cond_0
    iget v11, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-ne v9, v11, :cond_1

    .line 14
    iget v7, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    iget v11, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    add-float/2addr v7, v11

    add-float/2addr v7, v3

    goto :goto_2

    .line 15
    :cond_1
    iget-object v11, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v11, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    .line 16
    :goto_2
    iget v11, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageMargin:I

    int-to-float v13, v11

    add-float/2addr v13, v12

    int-to-float v14, v1

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    .line 17
    iget-object v13, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v12

    iget v15, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTopPageBounds:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v11, v11, v16

    float-to-int v11, v11

    move/from16 v16, v3

    iget v3, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mBottomPageBounds:I

    invoke-virtual {v13, v14, v15, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    iget-object v3, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v11, p1

    move/from16 v16, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v12, v3

    if-lez v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_c

    const/4 v9, 0x1

    if-eq v0, v9, :cond_c

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v2, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    return v9

    .line 3
    :cond_0
    iget-boolean v2, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsUnableToDrag:Z

    if-eqz v2, :cond_1

    return v8

    :cond_1
    const/4 v2, 0x2

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_2

    .line 4
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 5
    :cond_3
    iget v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    if-eq v0, v1, :cond_a

    .line 6
    invoke-static {v7, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 7
    invoke-static {v7, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 8
    iget v1, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    sub-float v1, v10, v1

    .line 9
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 10
    invoke-static {v7, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v12

    .line 11
    iget v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_4

    .line 12
    iget v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    iput v10, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    .line 14
    iput v12, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionY:F

    .line 15
    iput-boolean v9, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsUnableToDrag:Z

    return v8

    .line 16
    :cond_4
    iget v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_6

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v11, v0

    cmpl-float v0, v11, v13

    if-lez v0, :cond_6

    .line 17
    iput-boolean v9, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsBeingDragged:Z

    .line 18
    invoke-direct {p0, v9}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 19
    invoke-direct {p0, v9}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setScrollState(I)V

    .line 20
    iget v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInitialMotionX:F

    iget v1, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    if-lez v14, :cond_5

    add-float/2addr v0, v1

    goto :goto_0

    :cond_5
    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    .line 21
    iput v12, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionY:F

    .line 22
    invoke-direct {p0, v9}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 23
    :cond_6
    iget v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_7

    .line 24
    iput-boolean v9, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsUnableToDrag:Z

    .line 25
    :cond_7
    :goto_1
    iget-boolean v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_a

    invoke-direct {p0, v10}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_2

    .line 27
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInitialMotionX:F

    iput v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInitialMotionY:F

    iput v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionY:F

    .line 29
    invoke-static {v7, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    .line 30
    iput-boolean v8, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsUnableToDrag:Z

    .line 31
    iget-object v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 32
    iget v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScrollState:I

    if-ne v0, v2, :cond_9

    iget-object v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_9

    .line 33
    iget-object v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 34
    iput-boolean v8, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPopulatePending:Z

    .line 35
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->populate()V

    .line 36
    iput-boolean v9, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsBeingDragged:Z

    .line 37
    invoke-direct {p0, v9}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 38
    invoke-direct {p0, v9}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setScrollState(I)V

    goto :goto_2

    .line 39
    :cond_9
    invoke-direct {p0, v8}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->completeScroll(Z)V

    .line 40
    iput-boolean v8, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsBeingDragged:Z

    .line 41
    :cond_a
    :goto_2
    iget-object v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 42
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 43
    :cond_b
    iget-object v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 44
    iget-boolean v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsBeingDragged:Z

    return v0

    .line 45
    :cond_c
    iput-boolean v8, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsBeingDragged:Z

    .line 46
    iput-boolean v8, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsUnableToDrag:Z

    .line 47
    iput v1, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    .line 48
    iget-object v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_d

    .line 49
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_d
    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    move v10, v7

    const/4 v11, 0x0

    move v7, v5

    move v5, v4

    const/4 v4, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v4, v1, :cond_7

    .line 7
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 8
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    .line 9
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;

    .line 10
    iget-boolean v14, v12, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_6

    .line 11
    iget v12, v12, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v5

    goto :goto_1

    :cond_0
    sub-int v14, v2, v6

    .line 12
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 13
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v5

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v7

    goto :goto_2

    :cond_3
    sub-int v12, v3, v10

    .line 16
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 17
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v10, v15

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v7

    move/from16 v17, v12

    move v12, v7

    move/from16 v7, v17

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_2
    add-int/2addr v14, v8

    .line 20
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v12, v16

    invoke-virtual {v13, v14, v12, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int v4, v2, v5

    sub-int/2addr v4, v6

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v1, :cond_a

    .line 21
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 22
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_9

    .line 23
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;

    .line 24
    iget-boolean v13, v9, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->isDecor:Z

    if-nez v13, :cond_9

    invoke-virtual {v0, v8}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->infoForChild(Landroid/view/View;)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object v13

    if-eqz v13, :cond_9

    int-to-float v14, v4

    .line 25
    iget v13, v13, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v13, v5

    .line 26
    iget-boolean v15, v9, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v15, :cond_8

    const/4 v15, 0x0

    .line 27
    iput-boolean v15, v9, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->needsMeasure:Z

    .line 28
    iget v9, v9, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v14, v9

    float-to-int v9, v14

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v15, v3, v7

    sub-int/2addr v15, v10

    .line 29
    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 30
    invoke-virtual {v8, v9, v14}, Landroid/view/View;->measure(II)V

    .line 31
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v13

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v8, v13, v7, v9, v14}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 32
    :cond_a
    iput v7, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTopPageBounds:I

    sub-int/2addr v3, v10

    .line 33
    iput v3, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mBottomPageBounds:I

    .line 34
    iput v11, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mDecorChildCount:I

    .line 35
    iget-boolean v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_b

    .line 36
    iget v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    .line 37
    :goto_4
    iput-boolean v3, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFirstLayout:Z

    .line 38
    iput v2, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOverscrollDistance:I

    .line 39
    iget v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOverscrollDistance:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOverflingDistance:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 3
    div-int/lit8 p2, p1, 0xa

    .line 4
    iget v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mDefaultGutterSize:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mGutterSize:I

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, p2

    move p2, p1

    move p1, v0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge p1, v1, :cond_8

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_7

    .line 10
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;

    if-eqz v3, :cond_7

    .line 11
    iget-boolean v7, v3, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v7, :cond_7

    .line 12
    iget v7, v3, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_1

    const/16 v9, 0x50

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    move v7, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v4

    :goto_2
    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    move v4, v0

    .line 13
    :cond_3
    :goto_3
    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v9, -0x1

    const/4 v10, -0x2

    if-eq v8, v10, :cond_4

    if-eq v8, v9, :cond_4

    goto :goto_4

    :cond_4
    move v8, p2

    .line 14
    :goto_4
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v10, :cond_5

    if-eq v3, v9, :cond_5

    goto :goto_5

    :cond_5
    move v3, v2

    .line 15
    :goto_5
    invoke-static {v8, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 16
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 17
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_6

    .line 18
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_6

    :cond_6
    if-eqz v4, :cond_7

    .line 19
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p2, v3

    :cond_7
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 20
    :cond_8
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mChildWidthMeasureSpec:I

    .line 21
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mChildHeightMeasureSpec:I

    .line 22
    iput-boolean v4, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInLayout:Z

    .line 23
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->populate()V

    .line 24
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInLayout:Z

    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_7
    if-ge v0, p1, :cond_b

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_a

    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;

    if-eqz v2, :cond_9

    .line 29
    iget-boolean v4, v2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->isDecor:Z

    if-nez v4, :cond_a

    :cond_9
    int-to-float v4, p2

    .line 30
    iget v2, v2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 31
    iget v4, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mDecorChildCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v4

    move v4, v3

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_5

    .line 7
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;

    .line 9
    iget-boolean v10, v9, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v10, :cond_4

    .line 10
    iget v9, v9, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    move v9, v4

    goto :goto_2

    :cond_0
    sub-int v9, v5, v7

    .line 11
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 12
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v7, v10

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v4

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_1
    move v11, v9

    move v9, v4

    move v4, v11

    :goto_2
    add-int/2addr v4, v0

    .line 15
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v4, v10

    if-eqz v4, :cond_3

    .line 16
    invoke-virtual {v8, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_3
    move v4, v9

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOnPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_6

    .line 18
    invoke-interface {v0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInternalPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    .line 20
    invoke-interface {v0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 21
    :cond_7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageTransformer:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PageTransformer;

    if-eqz p1, :cond_9

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_3
    if-ge v1, p2, :cond_9

    .line 24
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 25
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;

    .line 26
    iget-boolean v0, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->isDecor:Z

    if-nez v0, :cond_8

    .line 27
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 28
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageTransformer:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PageTransformer;

    invoke-interface {v3, p3, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 29
    :cond_9
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCalledSuper:Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    move v0, v2

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v3

    :goto_0
    if-eq v0, v3, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 4
    invoke-virtual {p0, v5}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->infoForChild(Landroid/view/View;)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5
    iget v6, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    iget v7, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$SavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 7
    iget p1, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$SavedState;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$SavedState;->position:I

    iput v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mRestoredCurItem:I

    .line 9
    iget-object v0, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 10
    iget-object p1, p1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    iput v0, v1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$SavedState;->position:I

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 2
    iget p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, p2, p2}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->recomputeScrollPosition(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_10

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_d

    const/4 v3, -0x1

    const-string v4, "Invalid pointerId="

    const-string v5, "ViewPager"

    if-eq v0, v1, :cond_b

    const/4 v6, 0x2

    if-eq v0, v6, :cond_6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    goto/16 :goto_2

    .line 8
    :cond_3
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 9
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    goto/16 :goto_2

    .line 10
    :cond_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 11
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 12
    iput v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    .line 13
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    goto/16 :goto_2

    .line 14
    :cond_5
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_e

    .line 15
    iget p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    invoke-direct {p0, p1, v1, v2, v2}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->scrollToItem(IZIZ)V

    .line 16
    iput v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    .line 17
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->endDrag()V

    goto/16 :goto_2

    .line 18
    :cond_6
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_9

    .line 19
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    if-gez v0, :cond_7

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onTouchEvent while not being dragged"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 21
    :cond_7
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 22
    iget v6, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 23
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 24
    iget v7, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionY:F

    sub-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 25
    iget v8, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-lez v8, :cond_9

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    .line 26
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsBeingDragged:Z

    .line 27
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 28
    iget v6, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInitialMotionX:F

    sub-float/2addr v3, v6

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-lez v3, :cond_8

    iget v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v6, v3

    goto :goto_0

    :cond_8
    iget v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mTouchSlop:I

    int-to-float v3, v3

    sub-float/2addr v6, v3

    :goto_0
    iput v6, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    .line 29
    iput v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionY:F

    .line 30
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setScrollState(I)V

    .line 31
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 33
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 34
    :cond_9
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_e

    .line 35
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    if-gez v0, :cond_a

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onTouchEvent while being dragged"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 37
    :cond_a
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 38
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->performDrag(F)Z

    move-result p1

    or-int/2addr v2, p1

    goto/16 :goto_2

    .line 39
    :cond_b
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_e

    .line 40
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    .line 41
    iget v7, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mMaximumVelocity:I

    int-to-float v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 42
    iget v6, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    invoke-static {v0, v6}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 43
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPopulatePending:Z

    .line 44
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getClientWidth()I

    move-result v6

    .line 45
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v7

    .line 46
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->infoForCurrentScrollPosition()Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object v8

    .line 47
    iget v9, v8, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    int-to-float v7, v7

    int-to-float v6, v6

    div-float/2addr v7, v6

    .line 48
    iget v6, v8, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v7, v6

    iget v6, v8, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v7, v6

    .line 49
    iget v6, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    if-ltz v6, :cond_c

    .line 50
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 51
    iget v4, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInitialMotionX:F

    sub-float/2addr p1, v4

    float-to-int p1, p1

    .line 52
    invoke-direct {p0, v9, v7, v0, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->determineTargetPage(IFII)I

    move-result p1

    .line 53
    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setCurrentItemInternal(IZZI)V

    goto :goto_1

    .line 54
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onTouchEvent while being dragged with ACTION_UP"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    invoke-direct {p0, p1, v1, v2, v2}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->scrollToItem(IZIZ)V

    .line 56
    :goto_1
    iput v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    .line 57
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->endDrag()V

    goto :goto_2

    .line 58
    :cond_d
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 59
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPopulatePending:Z

    .line 60
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->populate()V

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionX:F

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mLastMotionY:F

    .line 63
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mActivePointerId:I

    :cond_e
    :goto_2
    if-eqz v2, :cond_f

    .line 64
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_f
    return v1

    :cond_10
    return v2
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 25

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 1
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v8

    const/4 v10, 0x1

    if-eqz v8, :cond_1

    if-ne v8, v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v11, v10

    :goto_1
    if-eqz v8, :cond_3

    if-ne v8, v10, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v10

    :goto_3
    add-int v12, v2, v0

    if-lez v0, :cond_4

    if-le v12, v4, :cond_5

    :goto_4
    move v13, v10

    goto :goto_5

    :cond_4
    if-gez v0, :cond_5

    if-ge v12, v4, :cond_5

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_5
    const/16 v16, 0x0

    const-wide v17, 0x3fe570a3d70a3d71L    # 0.67

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    const/16 v9, 0x14

    if-eqz p9, :cond_a

    if-eqz v13, :cond_a

    sub-int v12, v2, v4

    .line 2
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v14, v12

    move/from16 v22, v11

    int-to-double v10, v6

    mul-double v23, v10, v19

    cmpg-double v23, v14, v23

    if-gez v23, :cond_6

    int-to-float v10, v6

    mul-int/lit8 v12, v12, 0xc

    :goto_6
    add-int/2addr v12, v6

    int-to-float v11, v12

    div-float/2addr v10, v11

    int-to-float v0, v0

    mul-float/2addr v0, v10

    goto :goto_7

    :cond_6
    mul-double v10, v10, v17

    cmpg-double v10, v14, v10

    if-gez v10, :cond_7

    int-to-float v10, v6

    mul-int/2addr v12, v9

    goto :goto_6

    .line 3
    :cond_7
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-le v10, v9, :cond_9

    if-lez v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_8
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_7

    :cond_9
    move/from16 v0, v16

    :goto_7
    float-to-int v0, v0

    add-int v12, v2, v0

    goto :goto_8

    :cond_a
    move/from16 v22, v11

    :goto_8
    if-nez v22, :cond_b

    const/4 v6, 0x0

    :cond_b
    add-int v0, v3, v1

    if-lez v1, :cond_c

    if-le v0, v5, :cond_d

    :goto_9
    const/4 v10, 0x1

    goto :goto_a

    :cond_c
    if-gez v1, :cond_d

    if-ge v0, v5, :cond_d

    goto :goto_9

    :cond_d
    const/4 v10, 0x0

    :goto_a
    if-eqz p9, :cond_12

    if-eqz v10, :cond_12

    sub-int v0, v3, v5

    .line 4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v10, v0

    int-to-double v14, v7

    mul-double v19, v19, v14

    cmpg-double v19, v10, v19

    if-gez v19, :cond_f

    int-to-float v9, v7

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v9, v0

    int-to-float v0, v1

    mul-float v16, v9, v0

    :cond_e
    :goto_b
    move/from16 v0, v16

    goto :goto_c

    :cond_f
    mul-double v14, v14, v17

    cmpg-double v10, v10, v14

    if-gez v10, :cond_10

    int-to-float v10, v7

    mul-int/2addr v0, v9

    add-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v10, v0

    int-to-float v0, v1

    mul-float v16, v10, v0

    goto :goto_b

    .line 5
    :cond_10
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v9, :cond_e

    if-lez v1, :cond_11

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_11
    const/high16 v16, -0x40800000    # -1.0f

    goto :goto_b

    :goto_c
    float-to-int v0, v0

    add-int/2addr v0, v3

    :cond_12
    if-nez v8, :cond_13

    const/4 v7, 0x0

    .line 6
    :cond_13
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v1, v8

    neg-int v1, v1

    add-int/2addr v4, v6

    .line 7
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v6, v8

    neg-int v6, v6

    add-int/2addr v5, v7

    if-le v12, v4, :cond_14

    if-le v12, v2, :cond_14

    move v12, v4

    :goto_d
    const/4 v1, 0x1

    goto :goto_e

    :cond_14
    if-ge v12, v1, :cond_15

    if-ge v12, v2, :cond_15

    move v12, v1

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :goto_e
    if-le v0, v5, :cond_16

    if-le v0, v3, :cond_16

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move v6, v5

    goto :goto_10

    :cond_16
    if-ge v0, v6, :cond_17

    if-ge v0, v3, :cond_17

    const/4 v2, 0x1

    goto :goto_f

    :cond_17
    const/4 v2, 0x0

    move v6, v0

    :goto_f
    move-object/from16 v0, p0

    .line 8
    :goto_10
    invoke-virtual {v0, v12, v6, v1, v2}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->onOverScrolled(IIZZ)V

    if-nez v1, :cond_19

    if-eqz v2, :cond_18

    goto :goto_11

    :cond_18
    const/16 v21, 0x0

    goto :goto_12

    :cond_19
    :goto_11
    const/16 v21, 0x1

    :goto_12
    return v21
.end method

.method pageLeft()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setCurrentItem(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method pageRight()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setCurrentItem(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method populate()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->populate(I)V

    return-void
.end method

.method populate(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2
    iget v2, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    if-eq v2, v1, :cond_1

    if-ge v2, v1, :cond_0

    const/16 v2, 0x42

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    .line 3
    :goto_0
    iget v4, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    invoke-virtual {v0, v4}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->infoForPosition(I)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object v4

    .line 4
    iput v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 5
    :goto_1
    iget-object v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v1, :cond_2

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->sortChildDrawingOrder()V

    goto/16 :goto_14

    .line 7
    :cond_2
    iget-boolean v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPopulatePending:Z

    if-eqz v1, :cond_3

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->sortChildDrawingOrder()V

    goto/16 :goto_14

    .line 9
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 10
    iget-object v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 11
    iget v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOffscreenPageLimit:I

    .line 12
    iget v5, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    sub-int/2addr v5, v1

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 13
    iget-object v7, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v7}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    .line 14
    iget v9, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    add-int/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 15
    iget v8, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mExpectedAdapterCount:I

    if-ne v7, v8, :cond_1f

    move v8, v6

    .line 16
    :goto_2
    iget-object v9, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 17
    iget-object v9, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    .line 18
    iget v10, v9, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    iget v11, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    if-lt v10, v11, :cond_4

    if-ne v10, v11, :cond_5

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_3
    if-nez v9, :cond_6

    if-lez v7, :cond_6

    .line 19
    iget v9, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    invoke-virtual {v0, v9, v8}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->addNewItem(II)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object v9

    :cond_6
    if-eqz v9, :cond_17

    add-int/lit8 v11, v8, -0x1

    if-ltz v11, :cond_7

    .line 20
    iget-object v12, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    .line 21
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getClientWidth()I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    if-gtz v13, :cond_8

    const/4 v3, 0x0

    goto :goto_5

    .line 22
    :cond_8
    iget v15, v9, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    sub-float v15, v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    int-to-float v6, v13

    div-float/2addr v3, v6

    add-float/2addr v3, v15

    .line 23
    :goto_5
    iget v6, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    add-int/lit8 v6, v6, -0x1

    move v15, v11

    move v11, v8

    const/4 v8, 0x0

    :goto_6
    if-ltz v6, :cond_e

    cmpl-float v16, v8, v3

    if-ltz v16, :cond_a

    if-ge v6, v5, :cond_a

    if-nez v12, :cond_9

    goto :goto_8

    .line 24
    :cond_9
    iget v10, v12, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-ne v6, v10, :cond_d

    iget-boolean v10, v12, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->scrolling:Z

    if-nez v10, :cond_d

    .line 25
    iget-object v10, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    iget-object v10, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v12, v12, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, v0, v6, v12}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v11, v11, -0x1

    if-ltz v15, :cond_c

    .line 27
    iget-object v10, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    goto :goto_7

    :cond_a
    if-eqz v12, :cond_b

    .line 28
    iget v10, v12, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-ne v6, v10, :cond_b

    .line 29
    iget v10, v12, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v10

    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_c

    .line 30
    iget-object v10, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    goto :goto_7

    :cond_b
    add-int/lit8 v10, v15, 0x1

    .line 31
    invoke-virtual {v0, v6, v10}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->addNewItem(II)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object v10

    .line 32
    iget v10, v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v10

    add-int/lit8 v11, v11, 0x1

    if-ltz v15, :cond_c

    .line 33
    iget-object v10, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    goto :goto_7

    :cond_c
    const/4 v10, 0x0

    :goto_7
    move-object v12, v10

    :cond_d
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 34
    :cond_e
    :goto_8
    iget v3, v9, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v5, v11, 0x1

    cmpg-float v6, v3, v14

    if-gez v6, :cond_16

    .line 35
    iget-object v6, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_f

    iget-object v6, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    goto :goto_9

    :cond_f
    const/4 v6, 0x0

    :goto_9
    if-gtz v13, :cond_10

    const/4 v10, 0x0

    goto :goto_a

    .line 36
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    int-to-float v8, v8

    int-to-float v10, v13

    div-float/2addr v8, v10

    add-float v10, v8, v14

    .line 37
    :goto_a
    iget v8, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    :goto_b
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v7, :cond_16

    cmpl-float v12, v3, v10

    if-ltz v12, :cond_13

    if-le v8, v1, :cond_13

    if-nez v6, :cond_11

    goto :goto_d

    .line 38
    :cond_11
    iget v12, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-ne v8, v12, :cond_15

    iget-boolean v12, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->scrolling:Z

    if-nez v12, :cond_15

    .line 39
    iget-object v12, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 40
    iget-object v12, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v6, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v0, v8, v6}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 41
    iget-object v6, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    iget-object v6, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    goto :goto_c

    :cond_12
    const/4 v6, 0x0

    goto :goto_c

    :cond_13
    if-eqz v6, :cond_14

    .line 42
    iget v12, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    if-ne v8, v12, :cond_14

    .line 43
    iget v6, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    .line 44
    iget-object v6, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    iget-object v6, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    goto :goto_c

    .line 45
    :cond_14
    invoke-virtual {v0, v8, v5}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->addNewItem(II)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 46
    iget v6, v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v6

    .line 47
    iget-object v6, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    iget-object v6, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    :cond_15
    :goto_c
    goto :goto_b

    .line 48
    :cond_16
    :goto_d
    invoke-direct {v0, v9, v11, v4}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->calculatePageOffsets(Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;ILcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;)V

    .line 49
    :cond_17
    iget-object v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v3, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    if-eqz v9, :cond_18

    iget-object v4, v9, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_e

    :cond_18
    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v1, v0, v3, v4}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 50
    iget-object v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_1b

    .line 52
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 53
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;

    .line 54
    iput v3, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->childIndex:I

    .line 55
    iget-boolean v6, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_19

    iget v6, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->widthFactor:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1a

    .line 56
    invoke-virtual {v0, v4}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->infoForChild(Landroid/view/View;)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 57
    iget v6, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->widthFactor:F

    iput v6, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->widthFactor:F

    .line 58
    iget v4, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    iput v4, v5, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$LayoutParams;->position:I

    goto :goto_10

    :cond_19
    const/4 v7, 0x0

    :cond_1a
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 59
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->sortChildDrawingOrder()V

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 62
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object v3

    goto :goto_11

    :cond_1c
    const/4 v3, 0x0

    :goto_11
    if-eqz v3, :cond_1d

    .line 63
    iget v1, v3, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    iget v3, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    if-eq v1, v3, :cond_20

    :cond_1d
    const/4 v1, 0x0

    .line 64
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_20

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 66
    invoke-virtual {v0, v3}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->infoForChild(Landroid/view/View;)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 67
    iget v4, v4, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    iget v5, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1e

    invoke-virtual {v3, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_14

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 68
    :cond_1f
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    .line 69
    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    :goto_13
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_20
    :goto_14
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mObserver:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PagerObserver;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v0, v1

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    .line 6
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v4, v2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->position:I

    iget-object v2, v2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->removeNonDecorViews()V

    .line 10
    iput v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    .line 11
    invoke-virtual {p0, v1, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 13
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 14
    iput v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mExpectedAdapterCount:I

    .line 15
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_5

    .line 16
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mObserver:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PagerObserver;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 17
    new-instance v2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PagerObserver;

    invoke-direct {v2, p0, v3}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PagerObserver;-><init>(Lcom/smartisanos/magicflow/view/pictureview/ViewPager;Lcom/smartisanos/magicflow/view/pictureview/ViewPager$1;)V

    iput-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mObserver:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PagerObserver;

    .line 18
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v4, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mObserver:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PagerObserver;

    invoke-virtual {v2, v4}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 19
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPopulatePending:Z

    .line 20
    iget-boolean v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFirstLayout:Z

    const/4 v4, 0x1

    .line 21
    iput-boolean v4, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFirstLayout:Z

    .line 22
    iget-object v5, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mExpectedAdapterCount:I

    .line 23
    iget v5, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_3

    .line 24
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v5, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v5, v6}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 25
    iget v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v2, v1, v4}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v1, -0x1

    .line 26
    iput v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mRestoredCurItem:I

    .line 27
    iput-object v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 28
    iput-object v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    .line 29
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->populate()V

    goto :goto_1

    .line 30
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 31
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapterChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnAdapterChangeListener;

    if-eqz v1, :cond_6

    if-eq v0, p1, :cond_6

    .line 32
    invoke-interface {v1, v0, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    :cond_6
    return-void
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const-string v2, "ViewPager"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "setChildrenDrawingOrderEnabled"

    :try_start_1
    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Can\'t find setChildrenDrawingOrderEnabled"

    .line 4
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "Error changing children drawing order"

    .line 6
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPopulatePending:Z

    .line 2
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPopulatePending:Z

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    if-nez p3, :cond_0

    .line 3
    iget p3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    if-ne p3, p1, :cond_0

    iget-object p3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_3

    :cond_0
    const/4 p3, 0x1

    if-gez p1, :cond_1

    move p1, v1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 7
    :cond_2
    :goto_0
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOffscreenPageLimit:I

    .line 8
    iget v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_3

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_4

    :cond_3
    move v0, v1

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 10
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;

    iput-boolean p3, v2, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_4
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    if-eq v0, p1, :cond_5

    goto :goto_2

    :cond_5
    move p3, v1

    .line 12
    :goto_2
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_8

    .line 13
    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    if-eqz p3, :cond_6

    .line 14
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOnPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_6

    .line 15
    invoke-interface {p2, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_6
    if-eqz p3, :cond_7

    .line 16
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInternalPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_7

    .line 17
    invoke-interface {p2, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 18
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_3

    .line 19
    :cond_8
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->populate(I)V

    .line 20
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_3

    .line 21
    :cond_9
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setScrollingCacheEnabled(Z)V

    :goto_3
    return-void
.end method

.method setInternalPageChangeListener(Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;)Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInternalPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mInternalPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOffscreenPageLimit:I

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->populate()V

    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnAdapterChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapterChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnAdapterChangeListener;

    return-void
.end method

.method public setOnPageChangeListener(Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mOnPageChangeListener:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageMargin:I

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageMargin:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 4
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->recomputeScrollPosition(IIII)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setPageTransformer(ZLcom/smartisanos/magicflow/view/pictureview/ViewPager$PageTransformer;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageTransformer:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PageTransformer;

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eq v2, v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    .line 3
    :goto_2
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageTransformer:Lcom/smartisanos/magicflow/view/pictureview/ViewPager$PageTransformer;

    .line 4
    invoke-virtual {p0, v2}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    .line 5
    :cond_3
    iput v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mDrawingOrder:I

    goto :goto_3

    .line 6
    :cond_4
    iput v1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mDrawingOrder:I

    :goto_3
    if-eqz v3, :cond_5

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->populate()V

    :cond_5
    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->smoothScrollTo(III)V

    return-void
.end method

.method smoothScrollTo(III)V
    .locals 8

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    sub-int v5, p1, v3

    sub-int v6, p2, v4

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    .line 6
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->completeScroll(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->populate()V

    .line 8
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setScrollState(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->setScrollState(I)V

    .line 11
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->getClientWidth()I

    move-result p1

    .line 12
    div-int/lit8 p2, p1, 0x2

    .line 13
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    .line 14
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr p2, v0

    .line 15
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 16
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 17
    :cond_2
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget p3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mCurItem:I

    invoke-virtual {p2, p3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p2

    mul-float/2addr p1, p2

    .line 18
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mPageMargin:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v1

    const/high16 p1, 0x43480000    # 200.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    :goto_0
    const/16 p2, 0x258

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 20
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 21
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/pictureview/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
