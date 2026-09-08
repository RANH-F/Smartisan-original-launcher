.class public Lcom/smartisanos/magicflow/view/MagicFlowScrollView;
.super Landroid/widget/ScrollView;
.source "MagicFlowScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/MagicFlowScrollView$OnTouchEventUpListener;
    }
.end annotation


# instance fields
.field private eventUpListener:Lcom/smartisanos/magicflow/view/MagicFlowScrollView$OnTouchEventUpListener;

.field private interceptTouch:Z

.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mDownX:F

.field private mDownY:F

.field private parentInterceptTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p1, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->log:Lcom/smartisanos/magicflow/LOG;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->parentInterceptTouch:Z

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->interceptTouch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    const-class p1, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->log:Lcom/smartisanos/magicflow/LOG;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->parentInterceptTouch:Z

    .line 8
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->interceptTouch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const-class p1, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->log:Lcom/smartisanos/magicflow/LOG;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->parentInterceptTouch:Z

    .line 12
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->interceptTouch:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    goto/16 :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    .line 3
    iget v3, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-nez v5, :cond_1

    cmpl-float v5, v3, v4

    if-nez v5, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v5, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->parentInterceptTouch:Z

    if-eqz v5, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 6
    :cond_2
    iget-boolean v5, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->interceptTouch:Z

    if-eqz v5, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v5, v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v0, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 10
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->parentInterceptTouch:Z

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 12
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->interceptTouch:Z

    goto :goto_0

    .line 13
    :cond_6
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->parentInterceptTouch:Z

    .line 14
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->interceptTouch:Z

    goto :goto_0

    .line 15
    :cond_7
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->parentInterceptTouch:Z

    .line 16
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->interceptTouch:Z

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->mDownX:F

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->mDownY:F

    .line 19
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->isNeedInterceptTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "onInterceptTouchEvent return false"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->eventUpListener:Lcom/smartisanos/magicflow/view/MagicFlowScrollView$OnTouchEventUpListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/smartisanos/magicflow/view/MagicFlowScrollView$OnTouchEventUpListener;->onTouchEventUp(Landroid/view/MotionEvent;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public scrollTo(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 3
    invoke-static {v2}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v1, v4

    if-ge v3, v1, :cond_1

    .line 5
    :cond_0
    invoke-static {v2, v0}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 6
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public setOnTouchEventUpListener(Lcom/smartisanos/magicflow/view/MagicFlowScrollView$OnTouchEventUpListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->eventUpListener:Lcom/smartisanos/magicflow/view/MagicFlowScrollView$OnTouchEventUpListener;

    return-void
.end method
