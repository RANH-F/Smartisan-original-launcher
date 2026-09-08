.class Lcom/smartisanos/magicflow/view/newslist/ItemListView$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ItemListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemListView;->init()V
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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$1;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$1;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;->resetVelocity()V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method
