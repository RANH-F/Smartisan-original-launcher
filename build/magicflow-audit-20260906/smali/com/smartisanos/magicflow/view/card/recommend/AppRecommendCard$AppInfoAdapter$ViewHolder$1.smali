.class Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "AppRecommendCard.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/card/recommend/DownloadChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder$1;->this$2:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadChanged(Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder$1;->this$2:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;

    iget v1, p1, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->progress:I

    iget v2, p1, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->status:I

    iget p1, p1, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->reason:I

    invoke-static {v0, v1, v2, p1}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->access$400(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;III)V

    return-void
.end method
