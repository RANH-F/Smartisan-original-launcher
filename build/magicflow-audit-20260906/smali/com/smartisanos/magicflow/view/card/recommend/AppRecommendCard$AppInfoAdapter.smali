.class Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppRecommendCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;->this$0:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;Lsmartisan/widget/DownloadProgressView;Lcom/smartisanos/magicflow/h/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;->handleDownload(Lsmartisan/widget/DownloadProgressView;Lcom/smartisanos/magicflow/h/a;)V

    return-void
.end method

.method private handleDownload(Lsmartisan/widget/DownloadProgressView;Lcom/smartisanos/magicflow/h/a;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lsmartisan/widget/DownloadProgressView;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, v2}, Lsmartisan/widget/DownloadProgressView;->setCurrentState(I)V

    .line 3
    invoke-static {p2}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->startDownload(Lcom/smartisanos/magicflow/h/a;)J

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p2, Lcom/smartisanos/magicflow/h/a;->f:Ljava/lang/String;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->getDownloadId(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->pauseDownloadById(J)V

    .line 5
    invoke-virtual {p1, v2}, Lsmartisan/widget/DownloadProgressView;->setCurrentState(I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1, v1}, Lsmartisan/widget/DownloadProgressView;->setCurrentState(I)V

    .line 7
    iget-object v0, p2, Lcom/smartisanos/magicflow/h/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->containsDownloadInfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    invoke-static {p2}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->startDownload(Lcom/smartisanos/magicflow/h/a;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p2, v0, v3

    if-gez p2, :cond_4

    .line 9
    invoke-virtual {p1, v2}, Lsmartisan/widget/DownloadProgressView;->setCurrentState(I)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p2, Lcom/smartisanos/magicflow/h/a;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->getDownloadId(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->resumeDownloadById(J)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/smartisanos/magicflow/h/d;->A:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    if-le v0, v3, :cond_0

    aget v0, v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/smartisanos/magicflow/h/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/h/a;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;->getItem(I)Lcom/smartisanos/magicflow/h/a;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;->this$0:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->access$000(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b0064

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;-><init>(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;)V

    .line 3
    iput-object p2, p3, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0802da

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    const v0, 0x7f080041

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    const v0, 0x7f080040

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->tvBrief:Landroid/widget/TextView;

    const v0, 0x7f0802b6

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->start_one:Landroid/widget/ImageView;

    const v0, 0x7f0802b7

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->start_two:Landroid/widget/ImageView;

    const v0, 0x7f0802b8

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->start_three:Landroid/widget/ImageView;

    const v0, 0x7f0802b9

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->start_four:Landroid/widget/ImageView;

    const v0, 0x7f0802ba

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->start_five:Landroid/widget/ImageView;

    const v0, 0x7f0800ec

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/DownloadProgressView;

    iput-object v0, p3, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    const v0, 0x7f0801f7

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->openButton:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;

    .line 16
    :goto_0
    iget-object v0, p3, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$1;-><init>(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p3, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$2;-><init>(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p3, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->openButton:Landroid/widget/TextView;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$3;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$3;-><init>(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/h/a;

    .line 20
    invoke-virtual {p3, p1}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->bindData(Lcom/smartisanos/magicflow/h/a;)V

    return-object p2
.end method

.method public updateList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
