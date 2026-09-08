.class public Lcom/smartisanos/magicflow/view/dslv/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;,
        Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScrollProfile;,
        Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragSortListener;,
        Lcom/smartisanos/magicflow/view/dslv/DragSortListView$RemoveListener;,
        Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropListener;,
        Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragListener;,
        Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;,
        Lcom/smartisanos/magicflow/view/dslv/DragSortListView$RemoveAnimator;,
        Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;,
        Lcom/smartisanos/magicflow/view/dslv/DragSortListView$LiftAnimator;,
        Lcom/smartisanos/magicflow/view/dslv/DragSortListView$SmoothAnimator;,
        Lcom/smartisanos/magicflow/view/dslv/DragSortListView$HeightCache;,
        Lcom/smartisanos/magicflow/view/dslv/DragSortListView$AdapterWrapper;
    }
.end annotation


# static fields
.field public static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field public static final DROPPING:I = 0x2

.field public static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field public static final REMOVING:I = 0x1

.field public static final STOPPED:I = 0x3

.field private static final log:Lcom/smartisanos/magicflow/LOG;

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$AdapterWrapper;

.field private mAdjustAnimDuration:J

.field private mAdjustAnimate:Z

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private final mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private final mChildHeightCache:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragListener;

.field private final mDragScroller:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;

.field private mDragStartY:I

.field public mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;

.field private mDropListener:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private final mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewInvalidated:Z

.field private mFloatViewManager:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mFromPosition:I

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field private mLiftAnimator:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$LiftAnimator;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private final mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRemoveAnimator:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$RemoveAnimator;

.field private mRemoveListener:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$RemoveListener;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private final mTouchLoc:Landroid/graphics/Point;

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "listViewStyle"

    const-string v1, "attr"

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    .line 2
    invoke-direct/range {p0 .. p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 4
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    iput v2, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatAlpha:F

    .line 7
    iput v2, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 8
    iput-boolean v1, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAnimate:Z

    .line 9
    iput-boolean v1, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAdjustAnimate:Z

    const-wide/16 v3, 0x0

    .line 10
    iput-wide v3, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAdjustAnimDuration:J

    const/4 v5, 0x1

    .line 11
    iput-boolean v5, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragEnabled:Z

    .line 12
    iput v1, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    .line 13
    iput v5, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 14
    iput v1, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mWidthMeasureSpec:I

    new-array v6, v5, [Landroid/view/View;

    .line 15
    iput-object v6, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    const v6, 0x3eaaaaab

    .line 16
    iput v6, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 17
    iput v6, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    const/high16 v8, 0x3f000000    # 0.5f

    .line 18
    iput v8, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 19
    new-instance v6, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$1;

    invoke-direct {v6, v7}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$1;-><init>(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)V

    iput-object v6, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mScrollProfile:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScrollProfile;

    .line 20
    iput v1, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragFlags:I

    .line 21
    iput-boolean v1, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 22
    iput-boolean v1, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mInTouchEvent:Z

    const/4 v6, 0x0

    .line 23
    iput-object v6, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewManager:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;

    .line 24
    iput v1, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCancelMethod:I

    const/high16 v6, 0x3e800000    # 0.25f

    .line 25
    iput v6, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSlideRegionFrac:F

    const/4 v6, 0x0

    .line 26
    iput v6, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSlideFrac:F

    .line 27
    iput-boolean v1, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 28
    iput-boolean v1, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 29
    new-instance v9, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$HeightCache;

    const/4 v10, 0x3

    invoke-direct {v9, v7, v10}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$HeightCache;-><init>(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;I)V

    iput-object v9, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mChildHeightCache:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$HeightCache;

    .line 30
    iput v6, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 31
    iput-boolean v1, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mListViewIntercepted:Z

    const/4 v9, -0x1

    .line 32
    iput v9, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFromPosition:I

    .line 33
    iput-boolean v1, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewInvalidated:Z

    const/16 v9, 0x96

    if-eqz v0, :cond_3

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "styleable"

    const-string v12, "DragSortListView"

    invoke-static {v12, v11}, Lcom/smartisanos/magicflow/a;->a(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v12

    invoke-virtual {v10, v0, v12, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    const-string v0, "DragSortListView_collapsed_height"

    .line 35
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 36
    invoke-virtual {v10, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mItemHeightCollapsed:I

    const-string v0, "DragSortListView_float_alpha"

    .line 37
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget v12, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatAlpha:F

    invoke-virtual {v10, v0, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatAlpha:F

    .line 38
    iget v0, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatAlpha:F

    iput v0, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCurrFloatAlpha:F

    const-string v0, "DragSortListView_drag_enabled"

    .line 39
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-boolean v12, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragEnabled:Z

    invoke-virtual {v10, v0, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragEnabled:Z

    const-string v0, "DragSortListView_slide_shuffle_speed"

    .line 40
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/high16 v12, 0x3f400000    # 0.75f

    .line 41
    invoke-virtual {v10, v0, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    sub-float v0, v2, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 42
    iget v0, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSlideRegionFrac:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAnimate:Z

    const-string v0, "DragSortListView_adjust_item_animation_duration"

    .line 43
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-long v12, v0

    iput-wide v12, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAdjustAnimDuration:J

    .line 44
    iget-wide v12, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAdjustAnimDuration:J

    cmp-long v0, v12, v3

    if-eqz v0, :cond_1

    .line 45
    iput-boolean v5, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAdjustAnimate:Z

    .line 46
    iput-boolean v1, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAnimate:Z

    :cond_1
    const-string v0, "DragSortListView_drag_scroll_start"

    .line 47
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget v2, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    invoke-virtual {v10, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 48
    invoke-virtual {v7, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->setDragScrollStart(F)V

    const-string v0, "DragSortListView_max_drag_scroll_speed"

    .line 49
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget v2, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mMaxScrollSpeed:F

    invoke-virtual {v10, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mMaxScrollSpeed:F

    const-string v0, "DragSortListView_remove_animation_duration"

    .line 50
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    const-string v0, "DragSortListView_drop_animation_duration"

    .line 51
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    const-string v0, "DragSortListView_use_default_controller"

    .line 52
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DragSortListView_remove_enabled"

    .line 53
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    const-string v0, "DragSortListView_remove_mode"

    .line 54
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const-string v0, "DragSortListView_sort_enabled"

    .line 55
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    const-string v0, "DragSortListView_drag_start_mode"

    .line 56
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const-string v0, "DragSortListView_drag_handle_id"

    .line 57
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const-string v0, "DragSortListView_fling_handle_id"

    .line 58
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const-string v0, "DragSortListView_click_remove_id"

    .line 59
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const-string v0, "DragSortListView_float_background_color"

    .line 60
    invoke-static {v0, v11}, Lcom/smartisanos/magicflow/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x1000000

    invoke-virtual {v10, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 61
    new-instance v15, Lcom/smartisanos/magicflow/view/dslv/DragSortController;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/magicflow/view/dslv/DragSortController;-><init>(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;IIIII)V

    .line 62
    invoke-virtual {v15, v13}, Lcom/smartisanos/magicflow/view/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 63
    invoke-virtual {v15, v14}, Lcom/smartisanos/magicflow/view/dslv/DragSortController;->setSortEnabled(Z)V

    .line 64
    invoke-virtual {v15, v11}, Lcom/smartisanos/magicflow/view/dslv/SimpleFloatViewManager;->setBackgroundColor(I)V

    .line 65
    iput-object v15, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewManager:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;

    .line 66
    invoke-virtual {v7, v15}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    :cond_2
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_3
    move v12, v9

    .line 68
    :goto_1
    new-instance v0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;

    invoke-direct {v0, v7}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;-><init>(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)V

    iput-object v0, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragScroller:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;

    if-lez v12, :cond_4

    .line 69
    new-instance v0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$RemoveAnimator;

    invoke-direct {v0, v7, v8, v12}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$RemoveAnimator;-><init>(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;FI)V

    iput-object v0, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mRemoveAnimator:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$RemoveAnimator;

    :cond_4
    if-lez v9, :cond_5

    .line 70
    new-instance v0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;

    invoke-direct {v0, v7, v8, v9}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;-><init>(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;FI)V

    iput-object v0, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDropAnimator:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;

    :cond_5
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 71
    invoke-static/range {v10 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 72
    iget-object v0, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 73
    new-instance v0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$2;

    invoke-direct {v0, v7}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$2;-><init>(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)V

    iput-object v0, v7, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mMaxScrollSpeed:F

    return p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeight:I

    return p0
.end method

.method static synthetic access$1100(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->dropFloatView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    return p0
.end method

.method static synthetic access$1400(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    return p0
.end method

.method static synthetic access$1500(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mUseRemoveVelocity:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mRemoveVelocityX:F

    return p0
.end method

.method static synthetic access$1602(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mRemoveVelocityX:F

    return p1
.end method

.method static synthetic access$1700(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;ILandroid/view/View;Z)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragDeltaY:I

    return p0
.end method

.method static synthetic access$2000(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewMid:I

    return p0
.end method

.method static synthetic access$202(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragDeltaY:I

    return p1
.end method

.method static synthetic access$2100(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mUpScrollStartYF:F

    return p0
.end method

.method static synthetic access$2200(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragUpScrollHeight:F

    return p0
.end method

.method static synthetic access$2300(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScrollProfile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mScrollProfile:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScrollProfile;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDownScrollStartYF:F

    return p0
.end method

.method static synthetic access$2500(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragDownScrollHeight:F

    return p0
.end method

.method static synthetic access$2602(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2800()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->log:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeightHalf:I

    return p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mY:I

    return p0
.end method

.method static synthetic access$600(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatPos:I

    return p0
.end method

.method static synthetic access$800(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    return p0
.end method

.method static synthetic access$900(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mItemHeightCollapsed:I

    return p0
.end method

.method private adjustAllItems()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-gt v2, v1, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    add-int v5, v0, v2

    .line 6
    invoke-direct {p0, v5, v4, v3}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private adjustItem(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 7

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    if-eq p1, v1, :cond_0

    const/4 p3, -0x2

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result p3

    .line 6
    :goto_0
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v1, :cond_7

    .line 7
    :cond_1
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    const/16 v3, 0x50

    const/4 v4, 0x0

    if-ge p1, v1, :cond_3

    .line 8
    move-object v1, p2

    check-cast v1, Lcom/smartisanos/magicflow/view/dslv/DragSortItemView;

    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/view/dslv/DragSortItemView;->setGravity(I)V

    .line 9
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v1, :cond_7

    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAdjustAnimate:Z

    if-eqz v1, :cond_7

    .line 10
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFromPosition:I

    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    if-le v1, v2, :cond_2

    .line 11
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v2, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_1
    move-object v1, p2

    goto/16 :goto_2

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 13
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeight:I

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_2

    :cond_3
    const/16 v5, 0x30

    if-le p1, v1, :cond_5

    .line 14
    move-object v1, p2

    check-cast v1, Lcom/smartisanos/magicflow/view/dslv/DragSortItemView;

    invoke-virtual {v1, v5}, Lcom/smartisanos/magicflow/view/dslv/DragSortItemView;->setGravity(I)V

    .line 15
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v1, :cond_7

    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAdjustAnimate:Z

    if-eqz v1, :cond_7

    .line 16
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFromPosition:I

    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    if-le v1, v2, :cond_4

    .line 17
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 18
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_2

    .line 19
    :cond_4
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeight:I

    int-to-float v1, v1

    invoke-direct {v2, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_1

    .line 20
    :cond_5
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mItemHeightCollapsed:I

    if-ne v1, v6, :cond_7

    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAdjustAnimate:Z

    if-eqz v1, :cond_7

    .line 21
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFromPosition:I

    iget v6, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    if-le v1, v6, :cond_6

    .line 22
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 23
    move-object v2, v1

    check-cast v2, Lcom/smartisanos/magicflow/view/dslv/DragSortItemView;

    invoke-virtual {v2, v5}, Lcom/smartisanos/magicflow/view/dslv/DragSortItemView;->setGravity(I)V

    .line 24
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_2

    .line 25
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 26
    move-object v2, v1

    check-cast v2, Lcom/smartisanos/magicflow/view/dslv/DragSortItemView;

    invoke-virtual {v2, v3}, Lcom/smartisanos/magicflow/view/dslv/DragSortItemView;->setGravity(I)V

    .line 27
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeight:I

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_2

    :cond_7
    move-object v1, v2

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    .line 28
    iget-wide v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAdjustAnimDuration:J

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 30
    :cond_9
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p3, v1, :cond_a

    .line 31
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/4 v0, 0x0

    .line 34
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v1, :cond_b

    iget-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz p1, :cond_b

    const/4 v0, 0x4

    :cond_b
    if-eq v0, p3, :cond_c

    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method private adjustOnReorder()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    if-ge v1, v0, :cond_2

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_2
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v1

    .line 4
    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v2, :cond_0

    sub-int v2, p2, v0

    sub-int v0, v1, v0

    goto :goto_0

    :cond_0
    move v2, p2

    move v0, v1

    .line 5
    :goto_0
    iget v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeight:I

    .line 6
    iget v4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    iget v5, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v4, v5, :cond_1

    iget v5, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v4, v5, :cond_1

    .line 7
    iget v4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v3, v4

    :cond_1
    const/4 v4, 0x0

    if-gt p1, p3, :cond_2

    .line 8
    iget p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    if-le p1, p2, :cond_7

    sub-int/2addr v3, v0

    add-int/2addr v4, v3

    goto :goto_1

    :cond_2
    if-ne p1, p4, :cond_5

    .line 9
    iget p3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, p3, :cond_4

    sub-int/2addr v2, v3

    :cond_3
    add-int/2addr v4, v2

    goto :goto_1

    .line 10
    :cond_4
    iget p3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, p3, :cond_3

    sub-int/2addr p2, v1

    add-int/2addr v4, p2

    goto :goto_1

    .line 11
    :cond_5
    iget p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, p2, :cond_6

    sub-int/2addr v4, v3

    goto :goto_1

    .line 12
    :cond_6
    iget p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, p2, :cond_7

    sub-int/2addr v4, v0

    :cond_7
    :goto_1
    return v4
.end method

.method private static buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 8

    .line 1
    invoke-static {p0, p1, p2}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    add-int/2addr v0, v4

    move v5, v2

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    if-ge v6, p2, :cond_3

    .line 4
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    if-ne v6, v3, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5
    :cond_2
    aput v1, p3, v5

    .line 6
    aput v3, p4, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v6, 0x1

    move v1, v6

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-ne v3, p2, :cond_4

    move v3, p1

    .line 7
    :cond_4
    aput v1, p3, v5

    .line 8
    aput v3, p4, v5

    add-int/2addr v5, v4

    if-le v5, v4, :cond_5

    .line 9
    aget p0, p3, v2

    if-ne p0, p1, :cond_5

    add-int/lit8 p0, v5, -0x1

    aget p2, p4, p0

    if-ne p2, p1, :cond_5

    .line 10
    aget p0, p3, p0

    aput p0, p3, v2

    add-int/lit8 v5, v5, -0x1

    :cond_5
    return v5
.end method

.method private calcItemHeight(II)I
    .locals 6

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 3
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAnimate:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeight:I

    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v3, v1, v2

    .line 5
    iget v4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSlideFrac:F

    int-to-float v5, v3

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 6
    iget v5, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_4

    .line 7
    iget p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v5, p1, :cond_2

    if-eqz v0, :cond_1

    add-int p2, v4, v2

    goto :goto_1

    :cond_1
    move p2, v1

    goto :goto_1

    .line 8
    :cond_2
    iget p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v5, p1, :cond_3

    sub-int p2, v1, v4

    goto :goto_1

    :cond_3
    move p2, v2

    goto :goto_1

    .line 9
    :cond_4
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    if-ne p1, v1, :cond_6

    if-eqz v0, :cond_5

    add-int/2addr p2, v4

    goto :goto_1

    :cond_5
    add-int/2addr p2, v3

    goto :goto_1

    .line 10
    :cond_6
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v0, :cond_7

    add-int/2addr p2, v3

    sub-int/2addr p2, v4

    :cond_7
    :goto_1
    return p2
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->calcItemHeight(II)I

    move-result p1

    return p1
.end method

.method private clearPositions()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    .line 2
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    .line 3
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    .line 4
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatPos:I

    return-void
.end method

.method private continueDrag(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 2
    iget p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragDeltaY:I

    sub-int p1, p2, p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->doDragFloatView(Z)V

    .line 4
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewMid:I

    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewMid:I

    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragScroller:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->getScrollDir()I

    move-result v1

    .line 7
    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mLastY:I

    const/4 v3, -0x1

    if-le v0, v2, :cond_1

    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDownScrollStartY:I

    if-le v0, v2, :cond_1

    if-eq v1, p1, :cond_1

    if-eq v1, v3, :cond_0

    .line 8
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragScroller:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragScroller:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mLastY:I

    if-ge p2, v2, :cond_3

    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mUpScrollStartY:I

    if-ge p2, v2, :cond_3

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    .line 11
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragScroller:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragScroller:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 13
    :cond_3
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mUpScrollStartY:I

    if-lt p2, v1, :cond_4

    iget p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDownScrollStartY:I

    if-gt v0, p2, :cond_4

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragScroller:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;

    .line 14
    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->isScrolling()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 15
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragScroller:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private destroyFloatView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewManager:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCancelMethod:I

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mInTouchEvent:Z

    .line 3
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 4
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    .line 5
    :cond_0
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatAlpha:F

    iput v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mChildHeightCache:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$HeightCache;->clear()V

    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->updateFloatView()V

    .line 6
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    .line 7
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->updatePositions()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->adjustAllItems()V

    .line 10
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v0

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->layoutChildren()V

    :cond_0
    if-nez v2, :cond_1

    if-eqz p3, :cond_2

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_2
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method private doRemoveItem()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->doRemoveItem(I)V

    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mRemoveListener:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$RemoveListener;->remove(I)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->destroyFloatView()V

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->adjustOnReorder()V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->clearPositions()V

    .line 8
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 9
    iput p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    :goto_0
    return-void
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 7
    iget v6, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v6, :cond_0

    .line 8
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result p1

    add-int/2addr p1, v5

    add-int/2addr v1, p1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    sub-int/2addr p1, v5

    sub-int v1, p1, v1

    move v7, v1

    move v1, p1

    move p1, v7

    .line 10
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 11
    invoke-virtual {p2, v3, p1, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 12
    invoke-virtual {v0, v3, p1, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 14
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method private dropFloatView()V
    .locals 4

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDropListener:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatPos:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDropListener:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropListener;

    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropListener;->drop(II)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->adjustOnReorder()V

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->destroyFloatView()V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->clearPositions()V

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->adjustAllItems()V

    .line 9
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 10
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    :goto_0
    return-void
.end method

.method private static findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2
    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    if-ge v1, p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-eq p1, v0, :cond_2

    .line 4
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p0

    if-lt p0, p2, :cond_1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method private getChildHeight(I)I
    .locals 5

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result p1

    return p1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mChildHeightCache:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$HeightCache;->get(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    return v0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 7
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    .line 8
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    .line 9
    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    :cond_3
    const/4 v2, 0x0

    if-ltz v1, :cond_5

    .line 10
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v4, v3, v1

    if-nez v4, :cond_4

    .line 11
    invoke-interface {v0, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v0, v2, v1

    goto :goto_0

    .line 13
    :cond_4
    aget-object v1, v3, v1

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_5
    invoke-interface {v0, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    .line 15
    invoke-direct {p0, p1, v0, v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    .line 16
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mChildHeightCache:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$HeightCache;

    invoke-virtual {v1, p1, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$HeightCache;->add(II)V

    return v0
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 3

    .line 17
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 20
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 21
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p1, :cond_3

    return p1

    .line 22
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_5

    .line 23
    :cond_4
    invoke-direct {p0, p2}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :cond_5
    return p1
.end method

.method private getItemHeight(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->calcItemHeight(II)I

    move-result p1

    return p1
.end method

.method private getShuffleEdge(II)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    if-le p1, v0, :cond_7

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 5
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeight:I

    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v1, v2

    .line 6
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->getChildHeight(I)I

    move-result v2

    .line 7
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->getItemHeight(I)I

    move-result v3

    .line 8
    iget v4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    iget v5, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    if-gt v4, v5, :cond_3

    if-ne p1, v4, :cond_2

    .line 9
    iget v6, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v6, v4, :cond_2

    if-ne p1, v5, :cond_1

    add-int/2addr p2, v3

    .line 10
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeight:I

    goto :goto_0

    :cond_1
    sub-int/2addr v3, v2

    add-int/2addr p2, v3

    goto :goto_0

    .line 11
    :cond_2
    iget v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    if-le p1, v3, :cond_5

    iget v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v3, :cond_5

    :goto_0
    sub-int/2addr p2, v1

    goto :goto_1

    :cond_3
    if-le p1, v5, :cond_4

    .line 12
    iget v4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v4, :cond_4

    add-int/2addr p2, v1

    goto :goto_1

    .line 13
    :cond_4
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v1, :cond_5

    iget v4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v4, v1, :cond_5

    sub-int/2addr v3, v2

    add-int/2addr p2, v3

    .line 14
    :cond_5
    :goto_1
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v1, :cond_6

    .line 15
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v1, v0

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->getChildHeight(I)I

    move-result p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    goto :goto_2

    :cond_6
    sub-int/2addr v2, v0

    .line 16
    iget p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    :cond_7
    :goto_2
    return p2
.end method

.method private static insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    sub-int v2, v0, v1

    if-lez v2, :cond_1

    add-int v2, v1, v0

    shr-int/lit8 v2, v2, 0x1

    .line 2
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private invalidateFloatView()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewInvalidated:Z

    return-void
.end method

.method private measureFloatView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewManager:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;

    invoke-interface {v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewManager:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;

    .line 4
    invoke-interface {v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeight:I

    .line 5
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeightHalf:I

    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    :cond_0
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingLeft()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 8
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    .line 9
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 10
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 11
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private printPosData()V
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSrcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mFirstExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSecondExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void
.end method

.method private static rotate(IIII)I
    .locals 1

    sub-int v0, p3, p2

    add-int/2addr p0, p1

    if-ge p0, p2, :cond_0

    add-int/2addr p0, v0

    goto :goto_0

    :cond_0
    if-lt p0, p3, :cond_1

    sub-int/2addr p0, v0

    :cond_1
    :goto_0
    return p0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mLastX:I

    .line 3
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mLastY:I

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mX:I

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mY:I

    if-nez v0, :cond_1

    .line 6
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mX:I

    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mLastX:I

    .line 7
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mY:I

    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mLastY:I

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mOffsetX:I

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mY:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mOffsetY:I

    return-void
.end method

.method private updateFloatView()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewManager:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mX:I

    iget v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mY:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 3
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewManager:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v0, v2, v3, v4}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 6
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v3

    .line 8
    iget v4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    if-le v2, v3, :cond_1

    .line 9
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v3, v1, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 10
    :cond_1
    iget v4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragFlags:I

    and-int/2addr v1, v4

    if-nez v1, :cond_2

    if-ge v2, v3, :cond_2

    .line 11
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    .line 14
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 15
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    .line 16
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v5

    if-ge v3, v1, :cond_3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    .line 17
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 18
    :cond_3
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_4

    .line 19
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    if-gt v3, v1, :cond_4

    sub-int/2addr v1, v3

    .line 20
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 21
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 22
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    if-lt v4, v6, :cond_5

    .line 23
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v3

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 25
    :cond_5
    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_6

    .line 26
    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    if-lt v4, v2, :cond_6

    sub-int/2addr v2, v3

    .line 27
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 28
    :cond_6
    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v1, v2

    .line 29
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v5, v2

    if-ge v0, v5, :cond_7

    .line 30
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v5, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_7
    if-le v0, v1, :cond_8

    .line 31
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 32
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewMid:I

    return-void
.end method

.method private updatePositions()Z
    .locals 14

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFromPosition:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    sub-int v2, v1, v0

    .line 4
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    sub-int v0, v1, v0

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 9
    invoke-direct {p0, v1, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v3

    .line 10
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v4

    .line 11
    iget v5, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v5, v3, :cond_4

    :goto_0
    if-ltz v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 12
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->getItemHeight(I)I

    move-result v2

    if-nez v1, :cond_1

    sub-int/2addr v0, v4

    sub-int/2addr v0, v2

    goto :goto_2

    :cond_1
    add-int/2addr v2, v4

    sub-int/2addr v0, v2

    .line 13
    invoke-direct {p0, v1, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v2

    .line 14
    iget v5, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewMid:I

    if-lt v5, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v5

    :goto_1
    if-ge v1, v5, :cond_3

    add-int/lit8 v6, v5, -0x1

    if-ne v1, v6, :cond_5

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    goto :goto_2

    :cond_5
    add-int/2addr v2, v4

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 16
    invoke-direct {p0, v2}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->getItemHeight(I)I

    move-result v6

    .line 17
    invoke-direct {p0, v2, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v7

    .line 18
    iget v8, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v8, v7, :cond_6

    move v0, v7

    goto :goto_2

    :cond_6
    move v1, v2

    move v2, v6

    move v3, v7

    goto :goto_1

    .line 19
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .line 20
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    const/4 v5, 0x0

    .line 21
    iget v6, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    .line 22
    iget v7, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    .line 23
    iget v8, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSlideFrac:F

    .line 24
    iget-boolean v9, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAnimate:Z

    if-eqz v9, :cond_a

    sub-int v9, v0, v3

    .line 25
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 26
    iget v10, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v10, v0, :cond_7

    move v13, v3

    move v3, v0

    move v0, v13

    .line 27
    :cond_7
    sget-object v10, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "edgeTop="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " edgeBot="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 28
    iget v10, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSlideRegionFrac:F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    int-to-float v9, v9

    mul-float/2addr v10, v9

    float-to-int v9, v10

    add-int/2addr v0, v9

    sub-int v10, v3, v9

    .line 29
    iget v12, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v12, v0, :cond_8

    add-int/lit8 v3, v1, -0x1

    .line 30
    iput v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    .line 31
    iput v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    sub-int/2addr v0, v12

    int-to-float v0, v0

    mul-float/2addr v0, v11

    int-to-float v3, v9

    div-float/2addr v0, v3

    .line 32
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSlideFrac:F

    goto :goto_3

    :cond_8
    if-ge v12, v10, :cond_9

    .line 33
    iput v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    .line 34
    iput v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    goto :goto_3

    .line 35
    :cond_9
    iput v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    add-int/lit8 v0, v1, 0x1

    .line 36
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    const/high16 v0, 0x3f800000    # 1.0f

    sub-int/2addr v3, v12

    int-to-float v3, v3

    int-to-float v9, v9

    div-float/2addr v3, v9

    add-float/2addr v3, v0

    mul-float/2addr v3, v11

    .line 37
    iput v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSlideFrac:F

    goto :goto_3

    .line 38
    :cond_a
    iput v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    .line 39
    iput v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    .line 40
    :goto_3
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_b

    .line 41
    iput v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    .line 42
    iput v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    move v1, v2

    goto :goto_4

    .line 43
    :cond_b
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v4

    if-lt v0, v9, :cond_c

    .line 44
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v4

    add-int/lit8 v1, v0, -0x1

    .line 45
    iput v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    .line 46
    iput v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    .line 47
    :cond_c
    :goto_4
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v0, v6, :cond_d

    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v0, v7, :cond_d

    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSlideFrac:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_e

    :cond_d
    move v5, v3

    .line 48
    :cond_e
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatPos:I

    if-eq v1, v0, :cond_10

    .line 49
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragListener:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragListener;

    if-eqz v4, :cond_f

    sub-int/2addr v0, v2

    sub-int v2, v1, v2

    .line 50
    invoke-interface {v4, v0, v2}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragListener;->drag(II)V

    .line 51
    :cond_f
    iput v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatPos:I

    goto :goto_5

    :cond_10
    move v3, v5

    :goto_5
    return v3
.end method

.method private updateScrollStarts()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v2, v0

    .line 3
    iget v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    int-to-float v4, v1

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mUpScrollStartYF:F

    .line 4
    iget v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v3

    mul-float/2addr v5, v4

    add-float/2addr v5, v2

    iput v5, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDownScrollStartYF:F

    .line 5
    iget v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mUpScrollStartYF:F

    float-to-int v4, v3

    iput v4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mUpScrollStartY:I

    .line 6
    iget v4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDownScrollStartYF:F

    float-to-int v5, v4

    iput v5, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDownScrollStartY:I

    sub-float/2addr v3, v2

    .line 7
    iput v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragUpScrollHeight:F

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, v4

    .line 8
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragDownScrollHeight:F

    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragScroller:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDropListener:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatPos:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDropListener:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropListener;

    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropListener;->drop(II)V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->destroyFloatView()V

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->clearPositions()V

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->adjustAllItems()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 11
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mInTouchEvent:Z

    .line 12
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    .line 13
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    goto :goto_0

    .line 14
    :cond_1
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    :cond_2
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v1, :cond_0

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 5
    :cond_0
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v1, :cond_1

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 10
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v3

    if-gez v2, :cond_2

    neg-int v2, v2

    :cond_2
    if-ge v2, v3, :cond_3

    sub-int v2, v3, v2

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x437f0000    # 255.0f

    .line 12
    iget v4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCurrFloatAlpha:F

    mul-float/2addr v4, v3

    mul-float/2addr v4, v2

    float-to-int v10, v4

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewManager:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;

    invoke-interface {v4}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    .line 15
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, v0

    int-to-float v9, v1

    const/16 v11, 0x1f

    move-object v5, p1

    .line 16
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 17
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public getFloatAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAdapterWrapper:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public isDragEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->measureFloatView()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 6
    iput-boolean v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    :cond_1
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method public moveCheckState(IILjava/util/ArrayList;)Landroid/util/SparseBooleanArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/SparseBooleanArray;"
        }
    .end annotation

    .line 18
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 19
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v3, 0x1

    .line 20
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->moveCheckState(IILandroid/util/SparseBooleanArray;)V

    .line 22
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 23
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_2

    .line 24
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public moveCheckState(II)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-ge p2, p1, :cond_0

    move v1, p1

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, p1

    move v1, p2

    :goto_0
    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 4
    invoke-static {v0, v2, v1, v4, v5}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v0

    const/4 v6, 0x0

    if-ne v0, v3, :cond_1

    .line 5
    aget v7, v4, v6

    aget v8, v5, v6

    if-ne v7, v8, :cond_1

    return-void

    :cond_1
    if-ge p1, p2, :cond_2

    move p1, v6

    :goto_1
    if-eq p1, v0, :cond_3

    .line 6
    aget p2, v4, p1

    const/4 v7, -0x1

    invoke-static {p2, v7, v2, v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->rotate(IIII)I

    move-result p2

    invoke-virtual {p0, p2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 7
    aget p2, v5, p1

    invoke-static {p2, v7, v2, v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->rotate(IIII)I

    move-result p2

    invoke-virtual {p0, p2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v6

    :goto_2
    if-eq p1, v0, :cond_3

    .line 8
    aget p2, v4, p1

    invoke-virtual {p0, p2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 9
    aget p2, v5, p1

    invoke-virtual {p0, p2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public moveCheckState(IILandroid/util/SparseBooleanArray;)V
    .locals 9

    if-ge p2, p1, :cond_0

    move v0, p1

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, p1

    move v0, p2

    :goto_0
    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 10
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 11
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 12
    invoke-static {p3, v1, v0, v3, v4}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v2, :cond_1

    .line 13
    aget v7, v3, v6

    aget v8, v4, v6

    if-ne v7, v8, :cond_1

    return-void

    :cond_1
    if-ge p1, p2, :cond_2

    move p1, v6

    :goto_1
    if-eq p1, v5, :cond_3

    .line 14
    aget p2, v3, p1

    const/4 v7, -0x1

    invoke-static {p2, v7, v1, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->rotate(IIII)I

    move-result p2

    invoke-virtual {p3, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 15
    aget p2, v4, p1

    invoke-static {p2, v7, v1, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->rotate(IIII)I

    move-result p2

    invoke-virtual {p3, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v6

    :goto_2
    if-eq p1, v5, :cond_3

    .line 16
    aget p2, v3, p1

    invoke-virtual {p3, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 17
    aget p2, v4, p1

    invoke-virtual {p3, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public moveItem(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDropListener:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDropListener:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropListener;

    invoke-interface {v0, p1, p2}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropListener;->drop(II)V

    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    if-ne p1, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->cancelDrag()V

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 6
    :cond_3
    iget p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    if-ne p1, v1, :cond_4

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->stopDrag(Z)Z

    .line 8
    :cond_4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->doActionUpOrCancel()V

    :goto_0
    return v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_2

    .line 6
    iget v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    if-eqz v2, :cond_1

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    return v0

    .line 8
    :cond_1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mInTouchEvent:Z

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    move p1, v0

    goto :goto_1

    .line 10
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mListViewIntercepted:Z

    move p1, v0

    goto :goto_0

    :cond_4
    move p1, v4

    :goto_0
    if-eq v1, v0, :cond_6

    if-eq v1, v3, :cond_6

    if-eqz p1, :cond_5

    .line 12
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    .line 13
    iput v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 14
    :cond_6
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->doActionUpOrCancel()V

    :goto_1
    if-eq v1, v0, :cond_7

    if-ne v1, v3, :cond_8

    .line 15
    :cond_7
    iput-boolean v4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mInTouchEvent:Z

    :cond_8
    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->isLayoutRequested()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->measureFloatView()V

    :cond_0
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 6
    :cond_1
    iput p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mWidthMeasureSpec:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->updateScrollStarts()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 6
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mLastCallWasIntercept:Z

    if-nez v0, :cond_2

    .line 7
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 8
    :cond_2
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    .line 9
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    move v1, v3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 10
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v3

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eq p1, v3, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    if-eqz v1, :cond_6

    .line 12
    iput v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 13
    :cond_5
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->doActionUpOrCancel()V

    :cond_6
    :goto_0
    return v1
.end method

.method public removeCheckState(I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 4
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    add-int/2addr v3, v4

    .line 6
    invoke-static {v0, p1, v3, v1, v2}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-eq v6, v0, :cond_3

    .line 7
    aget v7, v1, v6

    const/4 v8, -0x1

    if-eq v7, p1, :cond_2

    aget v7, v2, v6

    aget v9, v1, v6

    if-ge v7, v9, :cond_1

    aget v7, v2, v6

    if-gt v7, p1, :cond_2

    .line 8
    :cond_1
    aget v7, v1, v6

    invoke-static {v7, v8, p1, v3}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 9
    :cond_2
    aget v7, v2, v6

    invoke-static {v7, v8, p1, v3}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mUseRemoveVelocity:Z

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->removeItem(IF)V

    return-void
.end method

.method public removeItem(IF)V
    .locals 3

    .line 3
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_6

    .line 4
    :cond_0
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    .line 6
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    .line 7
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    .line 8
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatPos:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    .line 12
    iput p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 13
    iget-boolean p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz p2, :cond_4

    .line 14
    iget p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCancelMethod:I

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p2}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 16
    :cond_3
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p2}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mRemoveAnimator:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$RemoveAnimator;

    if-eqz p2, :cond_5

    .line 18
    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$SmoothAnimator;->start()V

    goto :goto_1

    .line 19
    :cond_5
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->doRemoveItem(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAdapterWrapper:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$AdapterWrapper;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    instance-of v0, p1, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->setDropListener(Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropListener;)V

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->setDragListener(Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragListener;)V

    .line 8
    :cond_1
    instance-of v0, p1, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$RemoveListener;

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->setRemoveListener(Lcom/smartisanos/magicflow/view/dslv/DragSortListView$RemoveListener;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAdapterWrapper:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$AdapterWrapper;

    .line 11
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mAdapterWrapper:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$AdapterWrapper;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragEnabled:Z

    return-void
.end method

.method public setDragListener(Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragListener:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragListener;

    return-void
.end method

.method public setDragScrollProfile(Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScrollProfile;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mScrollProfile:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScrollProfile;

    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->setDragScrollStarts(FF)V

    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    .line 1
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 2
    :cond_0
    iput p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    :goto_0
    cmpl-float p2, p1, v0

    if-lez p2, :cond_1

    .line 3
    iput v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1

    .line 4
    :cond_1
    iput p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 5
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->updateScrollStarts()V

    :cond_2
    return-void
.end method

.method public setDragSortListener(Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragSortListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->setDropListener(Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropListener;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->setDragListener(Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragListener;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->setRemoveListener(Lcom/smartisanos/magicflow/view/dslv/DragSortListView$RemoveListener;)V

    return-void
.end method

.method public setDropListener(Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDropListener:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropListener;

    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCurrFloatAlpha:F

    return-void
.end method

.method public setFloatViewManager(Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewManager:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;

    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mMaxScrollSpeed:F

    return-void
.end method

.method public setRemoveListener(Lcom/smartisanos/magicflow/view/dslv/DragSortListView$RemoveListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mRemoveListener:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$RemoveListener;

    return-void
.end method

.method public startDrag(IIII)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mInTouchEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatViewManager:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v2, p0

    move v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 3
    invoke-virtual/range {v2 .. v7}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 3

    .line 4
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFirstExpPos:I

    .line 9
    iput p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSecondExpPos:I

    .line 10
    iput p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    .line 11
    iput p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatPos:I

    const/4 p1, 0x4

    .line 12
    iput p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    .line 13
    iput v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragFlags:I

    .line 14
    iget v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragFlags:I

    or-int/2addr p3, v0

    iput p3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragFlags:I

    .line 15
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 16
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->measureFloatView()V

    .line 17
    iput p4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragDeltaX:I

    .line 18
    iput p5, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragDeltaY:I

    .line 19
    iget p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mY:I

    iput p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragStartY:I

    .line 20
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget p4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mX:I

    iget p5, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr p4, p5

    iput p4, p3, Landroid/graphics/Point;->x:I

    .line 21
    iget p4, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragDeltaY:I

    sub-int/2addr p2, p4

    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 22
    iget p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 23
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_2
    iget p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCancelMethod:I

    if-eq p1, v2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    goto :goto_0

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->requestLayout()V

    .line 28
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mLiftAnimator:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$LiftAnimator;

    if-eqz p1, :cond_5

    .line 29
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$SmoothAnimator;->start()V

    :cond_5
    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method public stopDrag(Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mUseRemoveVelocity:Z

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result p1

    return p1
.end method

.method public stopDrag(ZF)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragScroller:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    if-eqz p1, :cond_0

    .line 5
    iget p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->removeItem(IF)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDropAnimator:Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DropAnimator;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$SmoothAnimator;->start()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->dropFloatView()V

    :goto_0
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result p1

    return p1
.end method
