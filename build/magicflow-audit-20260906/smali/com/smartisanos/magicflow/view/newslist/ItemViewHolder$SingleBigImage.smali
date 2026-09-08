.class public final Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;
.super Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;
.source "ItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleBigImage"
.end annotation


# instance fields
.field private final SHOW_AD_TITLE_TIME:J

.field private bigAdImage:Landroid/widget/ImageView;

.field private mDepictViewStatusRunnable:Ljava/lang/Runnable;

.field private videoLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const-wide/16 v0, 0xbb8

    .line 2
    iput-wide v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->SHOW_AD_TITLE_TIME:J

    .line 3
    new-instance p1, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage$2;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->mDepictViewStatusRunnable:Ljava/lang/Runnable;

    const p1, 0x7f0801d7

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->bigAdImage:Landroid/widget/ImageView;

    const p1, 0x7f0801e3

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->videoLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->showDepictView(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->mDepictViewStatusRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private showDepictView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->mDepictViewStatusRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->c(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->title:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setItemInfo(Lcom/smartisanos/magicflow/h/l;Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->setItemInfo(Lcom/smartisanos/magicflow/h/l;Z)V

    .line 2
    iget-object p2, p1, Lcom/smartisanos/magicflow/h/l;->q:[Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-eqz v1, :cond_0

    .line 3
    aget-object p2, p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->bigAdImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 5
    iget-boolean p2, p1, Lcom/smartisanos/magicflow/h/l;->E:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 6
    invoke-direct {p0, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->showDepictView(Z)V

    .line 7
    :cond_1
    iget-boolean p2, p1, Lcom/smartisanos/magicflow/h/l;->E:Z

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/smartisanos/magicflow/h/l;->D:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz p2, :cond_3

    iget-boolean v1, p1, Lcom/smartisanos/magicflow/h/l;->z:Z

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->videoLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 14
    :cond_2
    iget-object p1, p1, Lcom/smartisanos/magicflow/h/l;->D:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    new-instance p2, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage$1;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage$1;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;)V

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;->videoLayout:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method
