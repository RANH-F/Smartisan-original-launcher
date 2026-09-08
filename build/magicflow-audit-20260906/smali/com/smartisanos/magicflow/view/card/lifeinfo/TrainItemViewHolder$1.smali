.class Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$1;
.super Ljava/lang/Object;
.source "TrainItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$1;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$1;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/m;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$1;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->handleItemClick(Landroid/content/Context;)V

    return-void
.end method
