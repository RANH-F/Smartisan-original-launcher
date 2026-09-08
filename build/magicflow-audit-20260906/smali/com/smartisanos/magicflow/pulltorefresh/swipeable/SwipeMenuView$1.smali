.class Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$1;
.super Ljava/lang/Object;
.source "SwipeMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

.field final synthetic val$temp:I


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

    iput p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$1;->val$temp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->access$000(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->access$000(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->access$200(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->access$100(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$1;->val$temp:I

    invoke-interface {p1, v0, v1, v2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;->onMenuViewClick(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;Ljava/util/List;I)V

    :cond_0
    return-void
.end method
