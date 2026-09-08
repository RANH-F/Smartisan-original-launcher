.class Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$2;
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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$2;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$2;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;

    iget-object v1, v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/m;

    if-nez v1, :cond_2

    .line 3
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->access$000(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    const-string v0, "mSelectDestinationOnClickListener mInfo is null"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$2;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/m;

    check-cast v1, Lcom/smartisanos/magicflow/h/y;

    invoke-static {v0, p1, v1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->access$100(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;Landroid/content/Context;Lcom/smartisanos/magicflow/h/y;)V

    return-void
.end method
