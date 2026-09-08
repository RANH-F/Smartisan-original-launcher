.class public Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;
.super Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;
.source "ItemListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter<",
        "Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final REPORT_NEWS_SHOW_MAX_VELOCITY:I = 0x1770


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mContext:Landroid/content/Context;

.field private mDataContainer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFromCard:Z

.field private mMaxMinCount:[I

.field private mNewsType:Ljava/lang/String;

.field public mOnItemClickListener:Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnItemClickListener;

.field public mOnListViewItemDeleteListener:Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewItemDeleteListener;

.field private mShowDislike:Z

.field private mUseListDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->log:Lcom/smartisanos/magicflow/LOG;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mDataContainer:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mDataContainer:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mDataContainer:Ljava/util/List;

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mOnListViewItemDeleteListener:Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewItemDeleteListener;

    .line 5
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mOnItemClickListener:Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnItemClickListener;

    .line 6
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getItem(I)Lcom/smartisanos/magicflow/h/l;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mDataContainer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/h/l;

    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mDataContainer:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mMaxMinCount:[I

    if-eqz v2, :cond_2

    .line 3
    aget v2, v2, v1

    if-lez v2, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mMaxMinCount:[I

    aget v3, v2, v1

    if-gt v0, v3, :cond_1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mDataContainer:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    aget v0, v2, v1

    :goto_0
    return v0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mDataContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->getItem(I)Lcom/smartisanos/magicflow/h/l;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/smartisanos/magicflow/h/d$a;->a:Lcom/smartisanos/magicflow/h/d$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/smartisanos/magicflow/h/l;->k:I

    :goto_0
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->onBindViewHolder(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;I)V
    .locals 4

    .line 2
    invoke-virtual {p0, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->getItem(I)Lcom/smartisanos/magicflow/h/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput p2, v0, Lcom/smartisanos/magicflow/h/l;->A:I

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mNewsType:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/magicflow/h/l;->B:Ljava/lang/String;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->setItemInfo(Lcom/smartisanos/magicflow/h/l;Z)V

    .line 6
    iget-boolean v2, v0, Lcom/smartisanos/magicflow/h/l;->E:Z

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/l;->D:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-virtual {p1, v2, p1, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->bindAdListener(Landroid/content/Context;Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter$1;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter$1;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;Lcom/smartisanos/magicflow/h/l;Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->hideDivider()V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->showDivider()V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/h/d$a;->values()[Lcom/smartisanos/magicflow/h/d$a;

    move-result-object v1

    aget-object p2, v1, p2

    .line 4
    sget-object v1, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter$2;->$SwitchMap$com$smartisanos$magicflow$data$Constants$ListItemViewType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const p2, 0x7f0b0070

    .line 5
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleImage;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleImage;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 7
    invoke-virtual {p2, p0}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleImage;->setAdapter(Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;)V

    return-object p2

    :cond_0
    const p2, 0x7f0b0068

    .line 8
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 9
    new-instance p2, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 10
    invoke-virtual {p2, p0}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->setAdapter(Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;)V

    return-object p2

    :cond_1
    const p2, 0x7f0b006c

    .line 11
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 12
    new-instance p2, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 13
    invoke-virtual {p2, p0}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->setAdapter(Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;)V

    return-object p2
.end method

.method public removeItemByPosition(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mDataContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mDataContainer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mDataContainer:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mDataContainer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setIsFromCard(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mIsFromCard:Z

    return-void
.end method

.method public setMaxMinCount([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mMaxMinCount:[I

    return-void
.end method

.method public setNewsType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mNewsType:Ljava/lang/String;

    return-void
.end method

.method public setOnItemClickListener(Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mOnItemClickListener:Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnItemClickListener;

    return-void
.end method

.method public setOnListViewItemDeleteListener(Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewItemDeleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mOnListViewItemDeleteListener:Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewItemDeleteListener;

    return-void
.end method

.method public setShowDislike(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mShowDislike:Z

    return-void
.end method

.method public setUseListDivider(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->mUseListDivider:Z

    return-void
.end method
