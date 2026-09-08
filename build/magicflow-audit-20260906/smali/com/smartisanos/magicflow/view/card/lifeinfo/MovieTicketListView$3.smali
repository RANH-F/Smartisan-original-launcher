.class Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieTicketListView$3;
.super Ljava/lang/Object;
.source "MovieTicketListView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieTicketListView;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieTicketListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieTicketListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieTicketListView$3;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieTicketListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemViewDelete(Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->getLifeInfoItem()Lcom/smartisanos/magicflow/h/m;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/MovieDataCache;->removeMovieCardItem(Lcom/smartisanos/magicflow/h/m;)V

    :cond_0
    return-void
.end method
