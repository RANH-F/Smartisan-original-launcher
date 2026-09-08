.class Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$1;
.super Ljava/lang/Object;
.source "SwipeListView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$002(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;I)I

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    invoke-static {p3, p4}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->isItemScroll(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$002(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;I)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$002(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;I)I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$002(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;I)I

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$000(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$000(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    cmpg-float p1, p3, p1

    if-gez p1, :cond_1

    neg-float p1, p3

    neg-float p3, p4

    .line 2
    invoke-static {p1, p3}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->isItemScroll(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$002(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;I)I

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$002(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;I)I

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$002(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;I)I

    const/4 p1, 0x0

    return p1
.end method
