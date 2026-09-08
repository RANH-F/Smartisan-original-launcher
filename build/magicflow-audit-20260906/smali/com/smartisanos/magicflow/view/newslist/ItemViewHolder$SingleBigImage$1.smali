.class Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage$1;
.super Ljava/lang/Object;
.source "ItemViewHolder.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->setItemInfo(Lcom/smartisanos/magicflow/h/l;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage$1;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(JJ)V
    .locals 0

    return-void
.end method

.method public onVideoAdComplete(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage$1;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->access$200(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;Z)V

    return-void
.end method

.method public onVideoAdContinuePlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage$1;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->access$200(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;Z)V

    return-void
.end method

.method public onVideoAdPaused(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage$1;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->access$200(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;Z)V

    return-void
.end method

.method public onVideoAdStartPlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage$1;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->access$300(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-static {p1, v0, v1}, Lcom/smartisanos/magicflow/o/m;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onVideoError(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage$1;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoError i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",i1="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage$1;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->access$200(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;Z)V

    return-void
.end method

.method public onVideoLoad(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    return-void
.end method
