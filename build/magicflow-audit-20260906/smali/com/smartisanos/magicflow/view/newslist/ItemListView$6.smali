.class Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;
.super Ljava/lang/Object;
.source "ItemListView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/cache/NewsDataChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged(Ljava/lang/String;ZI)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$300(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$400(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/magicflow/cache/NewsCache;->getNewNewsNum()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-static {}, Lcom/smartisanos/magicflow/cache/NewsCache;->getNewNewsNum()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$500(Lcom/smartisanos/magicflow/view/newslist/ItemListView;ZI)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$600(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$600(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;->onListViewDataLoadFinish(Z)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iget-object v3, v0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    if-eqz v3, :cond_5

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    if-eq p3, v1, :cond_4

    .line 7
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$100(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removedPosition="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    invoke-virtual {p1, p3}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->removeItemByPosition(I)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    add-int/2addr p3, v2

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iget-object p2, p2, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    .line 12
    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->getItemCount()I

    move-result p2

    .line 13
    invoke-virtual {p1, v2, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/NewsCache;->getNewsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iget-object p2, p2, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->setData(Ljava/util/List;)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->finishRefreshing()V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsLoading:Z

    .line 19
    iput-boolean p2, p1, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsRefreshing:Z

    return-void
.end method
