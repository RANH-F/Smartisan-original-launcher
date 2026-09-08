.class Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightTicketListView$3;
.super Ljava/lang/Object;
.source "FlightTicketListView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightTicketListView;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightTicketListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightTicketListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightTicketListView$3;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightTicketListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemViewDelete(Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightItemViewHolder;

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->getLifeInfoItem()Lcom/smartisanos/magicflow/h/m;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/FlightDataCache;->removeFlightCardItem(Lcom/smartisanos/magicflow/h/m;)V

    :cond_0
    return-void
.end method
