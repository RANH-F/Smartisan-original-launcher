.class Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView$3;
.super Ljava/lang/Object;
.source "ExpressListView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView$3;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemViewDelete(Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;I)V
    .locals 0

    .line 1
    instance-of p2, p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->getLifeInfoItem()Lcom/smartisanos/magicflow/h/g;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->removeExpressCardItem(Lcom/smartisanos/magicflow/h/g;)V

    :cond_0
    return-void
.end method
