.class Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter$1;
.super Ljava/lang/Object;
.source "TrainItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;
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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter$1;->this$1:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter$1;->this$1:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->setSelectedStation(I)V

    return-void
.end method
