.class Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView$1;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->createRefreshableView(Landroid/util/AttributeSet;Z)Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;

    iget-object v0, v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;

    iget-object v0, v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 3
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;

    iget-object v0, v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView$1;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;

    iget-object v0, v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 3
    invoke-interface {v1, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
