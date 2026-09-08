.class Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$4$1;
.super Ljava/lang/Object;
.source "TrainItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$4;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$4$1;->this$1:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/c;->c(I)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$4$1;->this$1:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$4;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$4;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$4$1;->this$1:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$4;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$4;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mItemView:Landroid/view/View;

    const/16 v1, 0x190

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->removeItemView(Landroid/view/View;IZ)V

    :cond_1
    return-void
.end method
