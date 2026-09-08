.class public Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;
.super Landroid/widget/ScrollView;
.source "HeaderScrollView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;


# instance fields
.field private headContentHeight:I

.field private mHeader:Landroid/view/View;

.field private mInnerLayout:Landroid/widget/LinearLayout;

.field private mListener:Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView$RefreshHeaderListener;

.field private mRefreshAnim:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x87

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->headContentHeight:I

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->mInnerLayout:Landroid/widget/LinearLayout;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->mInnerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b00b7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->mHeader:Landroid/view/View;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->mHeader:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->measureView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->headContentHeight:I

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->mHeader:Landroid/view/View;

    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->headContentHeight:I

    const/4 v2, -0x1

    mul-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->mInnerLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01001a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->mRefreshAnim:Landroid/view/animation/Animation;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->mRefreshAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    .line 4
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 5
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    .line 6
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 8
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->mInnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getHeaderHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->headContentHeight:I

    return v0
.end method

.method public getHeaderTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getScrollDistance()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p1

    if-gtz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->getHeaderHeight()I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->mListener:Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView$RefreshHeaderListener;

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2, p1}, Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView$RefreshHeaderListener;->headerClipBottomChanged(I)V

    :cond_1
    return-void
.end method

.method public scrollToTop()Z
    .locals 1

    const/16 v0, 0x21

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v0

    return v0
.end method

.method public setHeaderPadding(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->mHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setRefreshHeaderListener(Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView$RefreshHeaderListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->mListener:Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView$RefreshHeaderListener;

    return-void
.end method
