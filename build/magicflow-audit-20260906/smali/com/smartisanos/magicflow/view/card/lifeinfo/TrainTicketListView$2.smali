.class Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainTicketListView$2;
.super Ljava/lang/Object;
.source "TrainTicketListView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainTicketListView;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainTicketListView;

.field final synthetic val$category:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainTicketListView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainTicketListView$2;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainTicketListView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainTicketListView$2;->val$category:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemViewMove(IJ)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/h/c;->g()Lcom/smartisanos/magicflow/h/c;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainTicketListView$2;->val$category:Ljava/lang/String;

    const-string v1, "LifeInfo"

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/magicflow/h/c;->a(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method
