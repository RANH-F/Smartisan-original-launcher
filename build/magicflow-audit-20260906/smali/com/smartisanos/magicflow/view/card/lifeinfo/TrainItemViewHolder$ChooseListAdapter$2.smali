.class Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter$2;
.super Ljava/lang/Object;
.source "TrainItemViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter$2;->this$1:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter$2;->this$1:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->access$200(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;)Lcom/smartisanos/magicflow/h/y;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/TrainDataCache;->saveTrainItem(Lcom/smartisanos/magicflow/h/m;)V

    return-void
.end method
