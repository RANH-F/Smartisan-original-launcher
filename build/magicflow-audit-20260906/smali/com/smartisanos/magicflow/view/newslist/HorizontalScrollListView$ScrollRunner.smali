.class Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;
.super Ljava/lang/Object;
.source "HorizontalScrollListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;


# direct methods
.method private constructor <init>(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;-><init>(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->access$000(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-static {v3}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->access$000(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-static {v0, v2}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->access$100(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->access$202(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;Z)Z

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-static {v0, v2}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->access$202(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;Z)Z

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getHorizontalScrollX()I

    move-result v0

    const/4 v3, 0x4

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->setScrollState(I)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-static {v0, v2}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->access$100(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;Z)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->access$300(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;)Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->access$300(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;)Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->access$400(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;->onScrollRestored(Landroid/view/View;)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-static {v0, v3}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->access$500(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;I)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->access$402(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;Landroid/view/View;)Landroid/view/View;

    goto :goto_1

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getHorizontalScrollX()I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    :goto_0
    invoke-virtual {v0, v3}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->setScrollState(I)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->access$100(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;Z)V

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->access$300(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;)Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 19
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->access$300(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;)Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->access$400(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;->onScrollCompleted(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method
