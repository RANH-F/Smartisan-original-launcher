.class Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$5;
.super Ljava/lang/Object;
.source "TrainItemViewHolder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$5;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$5;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;->access$000(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onItemSelected "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
