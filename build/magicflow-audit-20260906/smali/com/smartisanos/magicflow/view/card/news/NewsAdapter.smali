.class public Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;
.super Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;
.source "NewsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DEL_ITEM_VIEW_TYPE:I = 0x2

.field public static final HEAD_ITEM_VIEW_TYPE:I = 0x1

.field public static final MAX_DISPLAYED_NUMBER:I = 0x5


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mContext:Landroid/content/Context;

.field private mInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;"
        }
    .end annotation
.end field

.field private mNewsType:Ljava/lang/String;

.field private mParent:Landroid/view/ViewGroup;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->log:Lcom/smartisanos/magicflow/LOG;

    .line 3
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->mNewsType:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->mStreamType:I

    .line 6
    iput-object p4, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->mParent:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;)Lcom/smartisanos/magicflow/LOG;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->log:Lcom/smartisanos/magicflow/LOG;

    return-object p0
.end method

.method private bindAdListenerHolder(Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p1, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p1, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter$1;

    invoke-direct {v2, p0}, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter$1;-><init>(Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;)V

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->mInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->mInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->mInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->mInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "getItem position > mInfoList.size()-1 return null"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->mInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public getView(I)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "getView return null by itemInfo=null"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    iput p1, v0, Lcom/smartisanos/magicflow/h/l;->A:I

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->mNewsType:Ljava/lang/String;

    iput-object v2, v0, Lcom/smartisanos/magicflow/h/l;->B:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    return-object v1

    :cond_1
    const v1, 0x7f0b0070

    .line 7
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;

    invoke-direct {v1, v0}, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 10
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->hideDivider()V

    .line 11
    :cond_2
    iget-object p1, v1, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    return-object p1

    :cond_3
    const p1, 0x7f0b0096

    .line 12
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 13
    new-instance v0, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;

    invoke-direct {v0, p1}, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;-><init>(Landroid/view/View;)V

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object p1, v0, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->itemView:Landroid/view/View;

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;

    .line 4
    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->markAsRead(Z)V

    .line 5
    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/l;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;

    .line 8
    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->markAsRead(Z)V

    .line 9
    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->mInfo:Lcom/smartisanos/magicflow/h/l;

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->mStreamType:I

    invoke-static {v0, p1, v1}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->handleClickListItem(Lcom/smartisanos/magicflow/h/l;Landroid/content/Context;I)V

    :cond_3
    return-void
.end method

.method public reportNewsShow(Landroid/graphics/Rect;Landroid/view/View;I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p3}, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/l;

    if-eqz v0, :cond_5

    .line 2
    iget-boolean v1, v0, Lcom/smartisanos/magicflow/h/l;->E:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sget v2, Lcom/smartisanos/magicflow/h/d;->I:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-gt v1, v2, :cond_1

    .line 4
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int p1, v1, p1

    goto :goto_0

    .line 5
    :cond_1
    iput v3, v0, Lcom/smartisanos/magicflow/h/l;->H:I

    move p1, v4

    .line 6
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_3

    .line 7
    iget v2, v0, Lcom/smartisanos/magicflow/h/l;->H:I

    if-eqz v2, :cond_3

    div-int/lit8 v2, v1, 0x2

    if-lt p1, v2, :cond_3

    .line 8
    sget-boolean p2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p2, :cond_2

    .line 9
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewsExposureEvent position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",visibleHeight="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 10
    :cond_2
    iput v4, v0, Lcom/smartisanos/magicflow/h/l;->H:I

    .line 11
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p1

    const-string p2, "news_card_tt"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/c;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-lez v1, :cond_4

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    if-ge p1, p2, :cond_5

    .line 13
    :cond_4
    iput v3, v0, Lcom/smartisanos/magicflow/h/l;->H:I

    :cond_5
    :goto_1
    return-void
.end method

.method public setItemViewData(Landroid/view/View;I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/l;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "setItemViewData return null by itemInfo=null"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iput p2, v0, Lcom/smartisanos/magicflow/h/l;->A:I

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->mNewsType:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/magicflow/h/l;->B:Ljava/lang/String;

    .line 5
    iget-boolean v1, v0, Lcom/smartisanos/magicflow/h/l;->E:Z

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p2}, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 8
    check-cast p1, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1, v0, v2}, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->setItemInfo(Lcom/smartisanos/magicflow/h/l;Z)V

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p1, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, v0, Lcom/smartisanos/magicflow/h/l;->D:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->bindAdListenerHolder(Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p1, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->hideDivider()V

    goto :goto_1

    .line 14
    :cond_2
    check-cast p1, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->setItemInfo(Lcom/smartisanos/magicflow/h/l;)V

    .line 16
    iget-object p1, p1, Lcom/smartisanos/magicflow/view/card/news/NewsHeadViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->mInfoList:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;->notifyDataSetChanged()V

    return-void
.end method
