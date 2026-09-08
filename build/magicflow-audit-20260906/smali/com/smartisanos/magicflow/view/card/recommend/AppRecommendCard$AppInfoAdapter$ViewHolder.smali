.class Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppRecommendCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field downloadChangeObserver:Lcom/smartisanos/magicflow/view/card/recommend/DownloadChangeObserver;

.field info:Lcom/smartisanos/magicflow/h/a;

.field itemView:Landroid/view/View;

.field ivIcon:Landroid/widget/ImageView;

.field openButton:Landroid/widget/TextView;

.field progressView:Lsmartisan/widget/DownloadProgressView;

.field start_five:Landroid/widget/ImageView;

.field start_four:Landroid/widget/ImageView;

.field start_one:Landroid/widget/ImageView;

.field start_three:Landroid/widget/ImageView;

.field start_two:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;

.field tvBrief:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->this$1:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder$1;-><init>(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->downloadChangeObserver:Lcom/smartisanos/magicflow/view/card/recommend/DownloadChangeObserver;

    return-void
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->handleDownloadChanged(III)V

    return-void
.end method

.method private handleDownloadChanged(III)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->access$200()Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    const/4 p3, 0x2

    const/4 v0, 0x1

    if-ne p2, p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    .line 4
    invoke-virtual {p3}, Lsmartisan/widget/DownloadProgressView;->getCurrentState()I

    move-result p3

    if-eq p3, v0, :cond_1

    .line 5
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {p2, p1}, Lsmartisan/widget/DownloadProgressView;->setProgress(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    if-ne p2, p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {p1, v0}, Lsmartisan/widget/DownloadProgressView;->setCurrentState(I)V

    goto :goto_0

    :cond_2
    const/16 p3, 0x10

    if-ne p2, p3, :cond_3

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {p1, v0}, Lsmartisan/widget/DownloadProgressView;->setCurrentState(I)V

    goto :goto_0

    :cond_3
    const/16 p3, 0x8

    if-ne p2, p3, :cond_4

    .line 8
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->info:Lcom/smartisanos/magicflow/h/a;

    iget-object p2, p2, Lcom/smartisanos/magicflow/h/a;->f:Ljava/lang/String;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->downloadComplete(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {p2, p1}, Lsmartisan/widget/DownloadProgressView;->setCurrentState(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private resetStars()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->start_one:Landroid/widget/ImageView;

    const v1, 0x7f0700fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->start_two:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->start_three:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->start_four:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->start_five:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method private setProgressView(Lcom/smartisanos/magicflow/h/a;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/smartisanos/magicflow/h/a;->i:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->openButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->openButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p1, Lcom/smartisanos/magicflow/h/a;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->unregisterDownloadChangeObserver(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->openButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p1, Lcom/smartisanos/magicflow/h/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->getDownloadInfo(Ljava/lang/String;)Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisan/widget/DownloadProgressView;->setProgress(I)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsmartisan/widget/DownloadProgressView;->setCurrentState(I)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    iget v2, v0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->progress:I

    invoke-virtual {v1, v2}, Lsmartisan/widget/DownloadProgressView;->setProgress(I)V

    .line 13
    iget v0, v0, Lcom/smartisanos/magicflow/view/card/recommend/DownloadInfo;->status:I

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->setProgressViewState(I)V

    .line 14
    :goto_0
    iget-object p1, p1, Lcom/smartisanos/magicflow/h/a;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->downloadChangeObserver:Lcom/smartisanos/magicflow/view/card/recommend/DownloadChangeObserver;

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->registerDownloadChangeObserver(Ljava/lang/String;Lcom/smartisanos/magicflow/view/card/recommend/DownloadChangeObserver;)V

    :goto_1
    return-void
.end method

.method private setProgressViewState(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {p1, v0}, Lsmartisan/widget/DownloadProgressView;->setCurrentState(I)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsmartisan/widget/DownloadProgressView;->setCurrentState(I)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {p1, v0}, Lsmartisan/widget/DownloadProgressView;->setCurrentState(I)V

    :goto_0
    return-void
.end method

.method private setStartsBackground(II)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->start_five:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->start_four:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->start_three:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->start_two:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->start_one:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private setupStars(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    float-to-int v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const v2, 0x7f0700fe

    .line 1
    invoke-direct {p0, v1, v2}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->setStartsBackground(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    int-to-float v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    const p1, 0x7f0700fc

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->setStartsBackground(II)V

    :cond_2
    return-void
.end method


# virtual methods
.method public bindData(Lcom/smartisanos/magicflow/h/a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->info:Lcom/smartisanos/magicflow/h/a;

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->info:Lcom/smartisanos/magicflow/h/a;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->info:Lcom/smartisanos/magicflow/h/a;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/a;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->tvBrief:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->info:Lcom/smartisanos/magicflow/h/a;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->tvBrief:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->info:Lcom/smartisanos/magicflow/h/a;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->info:Lcom/smartisanos/magicflow/h/a;

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->setProgressView(Lcom/smartisanos/magicflow/h/a;)V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->resetStars()V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->info:Lcom/smartisanos/magicflow/h/a;

    iget p1, p1, Lcom/smartisanos/magicflow/h/a;->b:F

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->setupStars(F)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->info:Lcom/smartisanos/magicflow/h/a;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public clean()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->info:Lcom/smartisanos/magicflow/h/a;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->unregisterDownloadChangeObserver(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->openButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->progressView:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/widget/ImageView;)V

    return-void
.end method
