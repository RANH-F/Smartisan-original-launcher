.class Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;
.super Ljava/lang/Object;
.source "ItemListView.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;

.field final synthetic val$netConnected:Z

.field final synthetic val$newsResult:Lcom/smartisanos/magicflow/h/r;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;Lcom/smartisanos/magicflow/h/r;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;->this$1:Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;->val$newsResult:Lcom/smartisanos/magicflow/h/r;

    iput-boolean p3, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;->val$netConnected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;->this$1:Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$100(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAd error: code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",message="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;->this$1:Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;->val$noShowTtFeedAdList:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->d()Lcom/smartisanos/magicflow/l/a;

    move-result-object p1

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;->this$1:Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;

    iget-object v1, v0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;->val$noShowTtFeedAdList:Ljava/util/List;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    .line 4
    invoke-static {v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$200(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, p2, v1, v0}, Lcom/smartisanos/magicflow/l/a;->b(ZLjava/util/List;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;->this$1:Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;->val$newsResult:Lcom/smartisanos/magicflow/h/r;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$200(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;->val$netConnected:Z

    invoke-static {p1, p2, v0, v1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$800(Lcom/smartisanos/magicflow/view/newslist/ItemListView;Lcom/smartisanos/magicflow/h/r;Ljava/lang/String;Z)V

    return-void
.end method

.method public onFeedAdLoad(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTFeedAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;->this$1:Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;->val$noShowTtFeedAdList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;->this$1:Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;->val$noShowTtFeedAdList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->d()Lcom/smartisanos/magicflow/l/a;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;->this$1:Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;

    iget-object v2, v2, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-static {v2}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$200(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/smartisanos/magicflow/l/a;->b(ZLjava/util/List;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;->this$1:Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;->val$newsResult:Lcom/smartisanos/magicflow/h/r;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$200(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7$1;->val$netConnected:Z

    invoke-static {p1, v0, v1, v2}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$800(Lcom/smartisanos/magicflow/view/newslist/ItemListView;Lcom/smartisanos/magicflow/h/r;Ljava/lang/String;Z)V

    return-void
.end method
