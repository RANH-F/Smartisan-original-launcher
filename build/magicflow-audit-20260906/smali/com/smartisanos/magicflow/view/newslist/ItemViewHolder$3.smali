.class Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$3;
.super Ljava/lang/Object;
.source "ItemViewHolder.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->bindAdListener(Landroid/content/Context;Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$3;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$3;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdClicked title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$3;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdCreativeClick title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result p1

    invoke-static {p1}, Lcom/smartisanos/magicflow/h/l;->a(I)I

    move-result p1

    .line 3
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/l;->b(I)I

    move-result v0

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v1

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getSource()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, v0, p2}, Lcom/smartisanos/magicflow/c;->a(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/l;->a(I)I

    move-result v0

    .line 2
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/magicflow/h/l;->b(I)I

    move-result v1

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v2

    .line 4
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getSource()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v2, v0, v1, p1}, Lcom/smartisanos/magicflow/c;->b(IILjava/lang/String;)V

    :cond_0
    return-void
.end method
