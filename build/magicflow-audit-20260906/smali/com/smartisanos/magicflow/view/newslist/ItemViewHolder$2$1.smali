.class Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2$1;
.super Ljava/lang/Object;
.source "ItemViewHolder.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2;

.field final synthetic val$info:Lcom/smartisanos/magicflow/h/l;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2;Landroid/view/View;Lcom/smartisanos/magicflow/h/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2$1;->this$1:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2$1;->val$info:Lcom/smartisanos/magicflow/h/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onSelected(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2$1;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d0118

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2$1;->this$1:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2$1;->val$info:Lcom/smartisanos/magicflow/h/l;

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->access$000(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;ZLcom/smartisanos/magicflow/h/l;)V

    return-void
.end method
