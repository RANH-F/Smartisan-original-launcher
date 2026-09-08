.class Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$1;
.super Ljava/lang/Object;
.source "MusicPaymentCard.java"

# interfaces
.implements Lcom/smartisanos/magicflow/cache/DataChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->getSmartisanTrack()Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->getSmartisanTrack()Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$000(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;Lcom/smartisanos/magicflow/view/card/music/Track;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->getTrack()Lcom/smartisanos/magicflow/view/card/music/Track;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$000(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;Lcom/smartisanos/magicflow/view/card/music/Track;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard$1;->this$0:Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;->access$100(Lcom/smartisanos/magicflow/view/card/music/MusicPaymentCard;)V

    return-void
.end method
