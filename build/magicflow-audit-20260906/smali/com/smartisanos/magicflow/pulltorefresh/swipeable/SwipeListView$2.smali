.class Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$2;
.super Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;
.source "SwipeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->setAdapter(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-direct {p0, p2, p3}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public createMenuViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$100(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuCreator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$100(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuCreator;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuCreator;->create()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->createMenuViews()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onMenuViewClick(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$200(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$2;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$200(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$OnMenuItemClickListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->getPosition()I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$OnMenuItemClickListener;->onMenuItemClick(ILjava/util/List;I)V

    :cond_0
    return-void
.end method
