.class Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;
.super Ljava/lang/Object;
.source "SwipeListItemView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mOverScrollX:F

.field mTotalVectorX:F

.field mTotalVectorXInt:I

.field mTouchOnOver:Z

.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isFlingToRight(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$002(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;Z)Z

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->mOverScrollX:F

    .line 3
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->mTotalVectorX:F

    .line 4
    iput v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->mTotalVectorXInt:I

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$100(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    move v1, v0

    :cond_0
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->mTouchOnOver:Z

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$100(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$202(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;I)I

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$002(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;Z)Z

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->isLeftOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-direct {p0, p3}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->isFlingToRight(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$100(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)I

    move-result p1

    iget-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$700(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$700(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)I

    move-result p1

    iget-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$300(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x8

    .line 6
    iget-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$700(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)I

    move-result p4

    invoke-static {p2, p4, p3, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$800(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;IFI)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$700(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)I

    move-result p2

    const/16 p3, 0xfa

    invoke-virtual {p1, p2, p3}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->scrollTo(II)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$300(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)I

    move-result p4

    invoke-static {p1, p4, p3, p2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$800(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;IFI)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$002(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;Z)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->mTouchOnOver:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$100(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)I

    move-result p1

    iget-object p4, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-static {p4}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$300(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)I

    move-result p4

    if-ge p1, p4, :cond_1

    return p2

    :cond_1
    neg-float p1, p3

    .line 3
    iget p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->mTotalVectorX:F

    add-float/2addr p2, p1

    iput p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->mTotalVectorX:F

    .line 4
    iget p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->mTotalVectorX:F

    iget p3, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->mTotalVectorXInt:I

    int-to-float p4, p3

    sub-float/2addr p2, p4

    float-to-int p2, p2

    add-int/2addr p3, p2

    .line 5
    iput p3, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->mTotalVectorXInt:I

    .line 6
    iget-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$002(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;Z)Z

    .line 7
    iget-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    iget p4, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->mOverScrollX:F

    add-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    float-to-int p4, p4

    float-to-int v0, p1

    invoke-static {p2, p4, v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$400(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;II)I

    move-result p2

    .line 8
    iget-object p4, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-static {p4}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$500(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)I

    move-result p4

    if-lt p2, p4, :cond_2

    .line 9
    iget p4, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->mOverScrollX:F

    add-float/2addr p4, p1

    iput p4, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->mOverScrollX:F

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->mOverScrollX:F

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$600(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;I)Z

    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$002(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;Z)Z

    return v0
.end method
