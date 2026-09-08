.class public Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;
.super Landroid/widget/ListView;
.source "PinnedSectionListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;,
        Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSectionListAdapter;
    }
.end annotation


# instance fields
.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private final mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

.field mRecycleSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

.field private mSectionsDistanceY:I

.field private mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mShadowHeight:I

.field private final mTouchPoint:Landroid/graphics/PointF;

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchTarget:Landroid/view/View;

.field mTranslateY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    .line 3
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    .line 4
    new-instance p1, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$1;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 5
    new-instance p1, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$2;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    .line 9
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    .line 10
    new-instance p1, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$1;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 11
    new-instance p1, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$2;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 12
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->initView()V

    return-void
.end method

.method private clearTouchTarget()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 4
    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchSlop:I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->initShadow(Z)V

    return-void
.end method

.method public static isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z
    .locals 1

    .line 1
    :goto_0
    instance-of v0, p0, Landroid/widget/WrapperListAdapter;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/widget/WrapperListAdapter;

    invoke-interface {p0}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_1
    check-cast p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSectionListAdapter;

    invoke-interface {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSectionListAdapter;->isItemViewTypePinned(I)Z

    move-result p0

    return p0
.end method

.method private isPinnedViewTouched(Landroid/view/View;FF)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTranslateY:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    float-to-int p2, p2

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private performPinnedItemClick()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget v3, v3, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->position:I

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v4, v0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->playSoundEffect(I)V

    const/4 v0, 0x1

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget v5, v1, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->position:I

    iget-wide v6, v1, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->id:J

    move-object v3, p0

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method createPinnedShadow(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mRecycleSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mRecycleSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-interface {v1, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :cond_1
    iget v3, v2, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 9
    iget v2, v2, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v3, :cond_2

    move v3, v4

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v2, v5, :cond_3

    move v2, v5

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 12
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 13
    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 15
    iput v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTranslateY:I

    .line 16
    iput-object v1, v0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 17
    iput p1, v0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->position:I

    .line 18
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->id:J

    .line 19
    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    return-void
.end method

.method destroyPinnedShadow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mRecycleSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingLeft()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v2, v2, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    iget v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mShadowHeight:I

    iget v5, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mSectionsDistanceY:I

    .line 9
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_1
    add-int/2addr v3, v4

    .line 10
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    int-to-float v0, v0

    .line 11
    iget v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTranslateY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v0, v0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/ListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/ListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mSectionsDistanceY:I

    if-lez v1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v1, v1, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v2, v2, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v3, v3, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v4, v4, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 17
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mShadowHeight:I

    add-int/2addr v4, v5

    .line 18
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 5
    invoke-direct {p0, v3, v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v3, v3, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    iput-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    .line 7
    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iput v0, v3, Landroid/graphics/PointF;->x:F

    .line 8
    iput v1, v3, Landroid/graphics/PointF;->y:F

    .line 9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    .line 10
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 11
    invoke-direct {p0, v3, v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    .line 13
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 14
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->performPinnedItemClick()Z

    .line 15
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->clearTouchTarget()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 16
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->clearTouchTarget()V

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 17
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 18
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 20
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 21
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 22
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 23
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 24
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->clearTouchTarget()V

    :cond_4
    :goto_0
    return v0

    .line 25
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method ensureShadowForPosition(III)V
    .locals 1

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->destroyPinnedShadow()V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->position:I

    if-eq v0, p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->destroyPinnedShadow()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->createPinnedShadow(I)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_5

    sub-int v0, p1, p2

    sub-int/2addr p3, v0

    .line 7
    invoke-virtual {p0, p1, p3}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->findFirstVisibleSectionPosition(II)I

    move-result p1

    const/4 p3, -0x1

    const/4 v0, 0x0

    if-le p1, p3, :cond_4

    sub-int/2addr p1, p2

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object p2, p2, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result p3

    add-int/2addr p2, p3

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mSectionsDistanceY:I

    .line 11
    iget p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mSectionsDistanceY:I

    if-gez p1, :cond_3

    .line 12
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTranslateY:I

    goto :goto_0

    .line 13
    :cond_3
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTranslateY:I

    goto :goto_0

    .line 14
    :cond_4
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mTranslateY:I

    const p1, 0x7fffffff

    .line 15
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mSectionsDistanceY:I

    :cond_5
    :goto_0
    return-void
.end method

.method findCurrentSectionPosition(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, -0x1

    if-lt p1, v1, :cond_0

    return v2

    .line 3
    :cond_0
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_1

    .line 4
    move-object v1, v0

    check-cast v1, Landroid/widget/SectionIndexer;

    .line 5
    invoke-interface {v1, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v3

    .line 6
    invoke-interface {v1, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    .line 7
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 8
    invoke-static {v0, v3}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    :goto_0
    if-ltz p1, :cond_3

    .line 9
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 10
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v1

    if-eqz v1, :cond_2

    return p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method findFirstVisibleSectionPosition(II)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    const/4 v3, -0x1

    if-lt v2, v1, :cond_0

    return v3

    :cond_0
    add-int v2, p1, p2

    if-lt v2, v1, :cond_1

    sub-int p2, v1, p1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    add-int v2, p1, v1

    .line 4
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    .line 5
    invoke-static {v0, v4}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public initShadow(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez p1, :cond_1

    .line 2
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x3

    new-array v2, v2, [I

    const-string v3, "#ffa0a0a0"

    .line 3
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "#50a0a0a0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "#00a0a0a0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    invoke-direct {p1, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 p1, 0x41000000    # 8.0f

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mShadowHeight:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 7
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mShadowHeight:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    if-eqz p1, :cond_0

    sub-int/2addr p4, p2

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object p1, p1, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eq p4, p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->recreatePinnedShadow()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2
    new-instance p1, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$3;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$3;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method recreatePinnedShadow()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->destroyPinnedShadow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->findCurrentSectionPosition(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    sub-int/2addr v2, v0

    .line 7
    invoke-virtual {p0, v1, v0, v2}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->ensureShadowForPosition(III)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    if-eq v0, p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->destroyPinnedShadow()V

    .line 6
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    :goto_0
    return-void
.end method

.method public setShadowVisible(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->initShadow(Z)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->mShadowHeight:I

    add-int/2addr p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/ListView;->invalidate(IIII)V

    :cond_0
    return-void
.end method
