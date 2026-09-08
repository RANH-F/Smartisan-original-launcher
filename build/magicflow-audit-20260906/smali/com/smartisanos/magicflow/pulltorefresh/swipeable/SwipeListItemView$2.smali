.class Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$2;
.super Ljava/lang/Object;
.source "SwipeListItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$900(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$900(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->access$600(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;I)Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
