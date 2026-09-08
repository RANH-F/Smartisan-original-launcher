.class Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2;
.super Ljava/lang/Object;
.source "ItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;
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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/l;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, v0, Lcom/smartisanos/magicflow/h/l;->E:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/smartisanos/magicflow/h/l;->D:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDislikeDialog(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2$1;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2;Landroid/view/View;Lcom/smartisanos/magicflow/h/l;)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdDislike;->setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    .line 5
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTAdDislike;->showDislikeDialog()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->access$000(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;ZLcom/smartisanos/magicflow/h/l;)V

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;

    const-string v1, "dislike"

    iget-object v2, v0, Lcom/smartisanos/magicflow/h/l;->x:Ljava/lang/String;

    iget-object v3, v0, Lcom/smartisanos/magicflow/h/l;->l:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {p1, v1, v2, v3, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->access$100(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/smartisanos/magicflow/i/d;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
