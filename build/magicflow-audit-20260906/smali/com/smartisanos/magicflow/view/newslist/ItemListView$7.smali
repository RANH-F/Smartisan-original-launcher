.class Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;
.super Ljava/lang/Object;
.source "ItemListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemListView;->loadInitData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

.field final synthetic val$needAdSize:I

.field final synthetic val$noShowTtFeedAdList:Ljava/util/List;

.field final synthetic val$tasks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView;Ljava/util/List;ILjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;->val$tasks:Ljava/util/List;

    iput p3, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;->val$needAdSize:I

    iput-object p4, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;->val$noShowTtFeedAdList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/magicflow/f;->a()Lcom/smartisanos/magicflow/f;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;->val$tasks:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$700(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Z

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/r;

    .line 4
    iget v2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;->val$needAdSize:I

    new-instance v3, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;Lcom/smartisanos/magicflow/h/r;Z)V

    invoke-static {v2, v3}, Lcom/smartisanos/magicflow/i/d;->a(ILcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
