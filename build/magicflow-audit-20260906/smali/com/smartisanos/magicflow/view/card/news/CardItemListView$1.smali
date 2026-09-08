.class Lcom/smartisanos/magicflow/view/card/news/CardItemListView$1;
.super Ljava/lang/Object;
.source "CardItemListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/news/CardItemListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->access$100(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->access$200(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->access$300(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->access$300(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/smartisanos/magicflow/o/d;->postDelay(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
