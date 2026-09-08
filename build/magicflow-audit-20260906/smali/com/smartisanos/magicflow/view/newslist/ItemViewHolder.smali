.class public Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;,
        Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;,
        Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleImage;
    }
.end annotation


# instance fields
.field protected ad:Landroid/widget/ImageView;

.field protected adDownload:Landroid/widget/ImageView;

.field protected context:Landroid/content/Context;

.field protected delete:Landroid/widget/FrameLayout;

.field protected dislike:Landroid/widget/ImageView;

.field protected divider:Landroid/widget/ImageView;

.field log:Lcom/smartisanos/magicflow/LOG;

.field protected mCheckBoxImg:Landroid/widget/ImageView;

.field public mItemInfo:Lcom/smartisanos/magicflow/h/l;

.field private mItemListAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

.field private mOnDeleteListener:Landroid/view/View$OnClickListener;

.field private mOnDislikeListener:Landroid/view/View$OnClickListener;

.field protected source:Landroid/widget/TextView;

.field protected symbol:Landroid/widget/TextView;

.field protected title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->log:Lcom/smartisanos/magicflow/LOG;

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$1;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->mOnDeleteListener:Landroid/view/View$OnClickListener;

    .line 4
    new-instance v0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$2;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->mOnDislikeListener:Landroid/view/View$OnClickListener;

    .line 5
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->context:Landroid/content/Context;

    const p1, 0x7f08001d

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->ad:Landroid/widget/ImageView;

    const p1, 0x7f0802ce

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->symbol:Landroid/widget/TextView;

    const p1, 0x7f0802e0

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f0802aa

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->source:Landroid/widget/TextView;

    const p1, 0x7f080061

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->dislike:Landroid/widget/ImageView;

    const p1, 0x7f0801a6

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->divider:Landroid/widget/ImageView;

    const p1, 0x7f0800dd

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->delete:Landroid/widget/FrameLayout;

    const p1, 0x7f0800ad

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->mCheckBoxImg:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;ZLcom/smartisanos/magicflow/h/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->deleteNews(ZLcom/smartisanos/magicflow/h/l;)V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->buildRegisterParamMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private buildRegisterParamMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "action"

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "source_en"

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "source_id"

    .line 4
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "source_type"

    .line 5
    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private deleteNews(ZLcom/smartisanos/magicflow/h/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->mItemListAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mOnListViewItemDeleteListener:Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewItemDeleteListener;

    invoke-interface {v0, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewItemDeleteListener;->onListViewItemDelete(Lcom/smartisanos/magicflow/h/l;)V

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/c;->h(I)V

    :cond_0
    return-void
.end method

.method private getResponse(Ljava/lang/String;)Lcom/smartisanos/magicflow/m/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/j/a;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/j/a;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/j/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/m/a;

    return-object p1
.end method


# virtual methods
.method public bindAdListener(Landroid/content/Context;Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup;

    new-instance v2, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$3;

    invoke-direct {v2, p0}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$3;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;)V

    invoke-interface {p3, p2, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 6
    invoke-interface {p3}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    move-result p2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "ad type err"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_2

    .line 9
    check-cast p1, Landroid/app/Activity;

    invoke-interface {p3, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setActivityForDownloadApp(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public hideDivider()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->divider:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public markAsRead(Lcom/smartisanos/magicflow/h/l;Z)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/smartisanos/magicflow/h/l;->E:Z

    if-nez v0, :cond_2

    iget v0, p1, Lcom/smartisanos/magicflow/h/l;->k:I

    sget-object v1, Lcom/smartisanos/magicflow/h/d$a;->c:Lcom/smartisanos/magicflow/h/d$a;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget p1, p1, Lcom/smartisanos/magicflow/h/l;->k:I

    sget-object v0, Lcom/smartisanos/magicflow/h/d$a;->e:Lcom/smartisanos/magicflow/h/d$a;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0500e4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0500e1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAdapter(Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->mItemListAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    return-void
.end method

.method public setImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {p2, p1, v0}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public setItemInfo(Lcom/smartisanos/magicflow/h/l;Z)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->mItemInfo:Lcom/smartisanos/magicflow/h/l;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/l;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->source:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/l;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->source:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->dislike:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->dislike:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->dislike:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->dislike:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->mOnDislikeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->delete:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->delete:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->mOnDeleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_1
    iget-boolean p2, p1, Lcom/smartisanos/magicflow/h/l;->E:Z

    if-eqz p2, :cond_2

    .line 13
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->ad:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->symbol:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->symbol:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->ad:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    :goto_1
    iget-boolean p2, p1, Lcom/smartisanos/magicflow/h/l;->a:Z

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->markAsRead(Lcom/smartisanos/magicflow/h/l;Z)V

    return-void
.end method

.method public setViewInfo(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0802e0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0802aa

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->source:Landroid/widget/TextView;

    const v0, 0x7f0800ad

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->mCheckBoxImg:Landroid/widget/ImageView;

    return-void
.end method

.method public showDivider()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->divider:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
