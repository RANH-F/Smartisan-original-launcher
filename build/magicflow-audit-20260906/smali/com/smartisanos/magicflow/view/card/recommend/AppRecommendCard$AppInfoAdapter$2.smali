.class Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$2;
.super Ljava/lang/Object;
.source "AppRecommendCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$2;->this$1:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lsmartisan/widget/DownloadProgressView;

    .line 3
    invoke-virtual {v0}, Lsmartisan/widget/DownloadProgressView;->getCurrentState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->access$200()Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    const-string v0, "progressView onClick return by DownloadProgressView.STATE_PROCESSING"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/h/a;

    .line 6
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$2;->this$1:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;

    invoke-static {v1, v0, p1}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;->access$300(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;Lsmartisan/widget/DownloadProgressView;Lcom/smartisanos/magicflow/h/a;)V

    :cond_1
    return-void
.end method
