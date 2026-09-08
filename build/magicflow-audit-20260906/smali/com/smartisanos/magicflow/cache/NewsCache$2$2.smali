.class Lcom/smartisanos/magicflow/cache/NewsCache$2$2;
.super Ljava/lang/Object;
.source "NewsCache.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/NewsCache$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/cache/NewsCache$2;

.field final synthetic val$futures:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/cache/NewsCache$2;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/NewsCache$2$2;->this$0:Lcom/smartisanos/magicflow/cache/NewsCache$2;

    iput-object p2, p0, Lcom/smartisanos/magicflow/cache/NewsCache$2$2;->val$futures:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/NewsCache;->access$000()Lcom/smartisanos/magicflow/LOG;

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
    iget-object p1, p0, Lcom/smartisanos/magicflow/cache/NewsCache$2$2;->this$0:Lcom/smartisanos/magicflow/cache/NewsCache$2;

    iget-object p1, p1, Lcom/smartisanos/magicflow/cache/NewsCache$2;->val$noShowTtFeedAdList:Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->d()Lcom/smartisanos/magicflow/l/a;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/NewsCache$2$2;->this$0:Lcom/smartisanos/magicflow/cache/NewsCache$2;

    iget-boolean v1, v0, Lcom/smartisanos/magicflow/cache/NewsCache$2;->val$pullDownRefresh:Z

    iget-object v2, v0, Lcom/smartisanos/magicflow/cache/NewsCache$2;->val$noShowTtFeedAdList:Ljava/util/List;

    iget-object v0, v0, Lcom/smartisanos/magicflow/cache/NewsCache$2;->val$loadCategory:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lcom/smartisanos/magicflow/l/a;->b(ZLjava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/cache/NewsCache$2$2;->this$0:Lcom/smartisanos/magicflow/cache/NewsCache$2;

    iget-boolean p1, p1, Lcom/smartisanos/magicflow/cache/NewsCache$2;->val$finalLoadByCard:Z

    if-nez p1, :cond_2

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->d()Lcom/smartisanos/magicflow/l/a;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/NewsCache$2$2;->this$0:Lcom/smartisanos/magicflow/cache/NewsCache$2;

    iget-object v0, v0, Lcom/smartisanos/magicflow/cache/NewsCache$2;->val$category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/l/a;->f(Ljava/lang/String;)V

    .line 6
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/cache/NewsCache$2$2;->val$futures:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    iget-object p2, p0, Lcom/smartisanos/magicflow/cache/NewsCache$2$2;->this$0:Lcom/smartisanos/magicflow/cache/NewsCache$2;

    iget-object v0, p2, Lcom/smartisanos/magicflow/cache/NewsCache$2;->val$category:Ljava/lang/String;

    iget-object p2, p2, Lcom/smartisanos/magicflow/cache/NewsCache$2;->val$failedCallback:Lcom/smartisanos/magicflow/cache/FailedCallback;

    invoke-static {p1, v0, p2}, Lcom/smartisanos/magicflow/cache/NewsCache;->access$100(Ljava/util/concurrent/Future;Ljava/lang/String;Lcom/smartisanos/magicflow/cache/FailedCallback;)V

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
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/NewsCache$2$2;->this$0:Lcom/smartisanos/magicflow/cache/NewsCache$2;

    iget-object v0, v0, Lcom/smartisanos/magicflow/cache/NewsCache$2;->val$noShowTtFeedAdList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/NewsCache$2$2;->this$0:Lcom/smartisanos/magicflow/cache/NewsCache$2;

    iget-object v0, v0, Lcom/smartisanos/magicflow/cache/NewsCache$2;->val$noShowTtFeedAdList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->d()Lcom/smartisanos/magicflow/l/a;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/NewsCache$2$2;->this$0:Lcom/smartisanos/magicflow/cache/NewsCache$2;

    iget-boolean v2, v1, Lcom/smartisanos/magicflow/cache/NewsCache$2;->val$pullDownRefresh:Z

    iget-object v1, v1, Lcom/smartisanos/magicflow/cache/NewsCache$2;->val$loadCategory:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v1}, Lcom/smartisanos/magicflow/l/a;->b(ZLjava/util/List;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/cache/NewsCache$2$2;->val$futures:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/NewsCache$2$2;->this$0:Lcom/smartisanos/magicflow/cache/NewsCache$2;

    iget-object v1, v0, Lcom/smartisanos/magicflow/cache/NewsCache$2;->val$category:Ljava/lang/String;

    iget-object v0, v0, Lcom/smartisanos/magicflow/cache/NewsCache$2;->val$failedCallback:Lcom/smartisanos/magicflow/cache/FailedCallback;

    invoke-static {p1, v1, v0}, Lcom/smartisanos/magicflow/cache/NewsCache;->access$100(Ljava/util/concurrent/Future;Ljava/lang/String;Lcom/smartisanos/magicflow/cache/FailedCallback;)V

    return-void
.end method
