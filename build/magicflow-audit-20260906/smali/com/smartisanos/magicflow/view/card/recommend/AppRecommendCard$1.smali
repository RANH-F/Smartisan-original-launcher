.class Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$1;
.super Ljava/lang/Object;
.source "AppRecommendCard.java"

# interfaces
.implements Lcom/smartisanos/magicflow/cache/DataChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$1;->this$0:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$1;->this$0:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->access$500(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;)V

    return-void
.end method
