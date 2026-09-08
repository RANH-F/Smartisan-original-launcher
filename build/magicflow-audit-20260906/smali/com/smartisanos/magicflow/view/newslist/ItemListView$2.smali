.class Lcom/smartisanos/magicflow/view/newslist/ItemListView$2;
.super Ljava/lang/Object;
.source "ItemListView.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$2;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$2;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;->getVelocityY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x1770

    if-ge v0, v1, :cond_1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$2;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    .line 4
    invoke-static {v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$000(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$2;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$000(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$2;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$100(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewsExposureEvent position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$2;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$200(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/c;->i(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$2$1;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$2$1;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView$2;Ljava/lang/Object;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/smartisanos/magicflow/o/m;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
