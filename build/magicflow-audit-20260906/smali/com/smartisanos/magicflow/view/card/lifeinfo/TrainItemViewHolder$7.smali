.class Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$7;
.super Ljava/lang/Object;
.source "TrainItemViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->showSelectArriveStationDialog(Landroid/content/Context;Lcom/smartisanos/magicflow/h/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;

.field final synthetic val$adapter:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$7;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$7;->val$adapter:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$7;->val$adapter:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->updateList()V

    return-void
.end method
