.class public Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CollectionListAdapter.java"


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mContext:Landroid/content/Context;

.field private mEditMode:I

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxMinCount:[I

.field private mUseListDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->log:Lcom/smartisanos/magicflow/LOG;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mEditMode:I

    .line 5
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mMaxMinCount:[I

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 3
    aget v0, v1, v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/h/l;

    iget p1, p1, Lcom/smartisanos/magicflow/h/l;->k:I

    return p1
.end method

.method public getListItemInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/h/l;

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/h/d$a;->values()[Lcom/smartisanos/magicflow/h/d$a;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/h/d$a;->values()[Lcom/smartisanos/magicflow/h/d$a;

    move-result-object v2

    iget v3, p1, Lcom/smartisanos/magicflow/h/l;->k:I

    aget-object v2, v2, v3

    .line 5
    sget-object v3, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter$1;->$SwitchMap$com$smartisanos$magicflow$data$Constants$ListItemViewType:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 6
    sget-object v2, Lcom/smartisanos/magicflow/h/d$a;->a:Lcom/smartisanos/magicflow/h/d$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-nez p2, :cond_0

    const p2, 0x7f0b006e

    .line 7
    invoke-virtual {v0, p2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 8
    new-instance p3, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleImage;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleImage;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object p3, v1, v2

    .line 9
    aget-object p3, v1, v2

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleImage;

    aput-object p3, v1, v2

    goto :goto_0

    .line 11
    :cond_1
    sget-object v2, Lcom/smartisanos/magicflow/h/d$a;->d:Lcom/smartisanos/magicflow/h/d$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-nez p2, :cond_2

    const p2, 0x7f0b0067

    .line 12
    invoke-virtual {v0, p2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 13
    new-instance p3, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object p3, v1, v2

    .line 14
    aget-object p3, v1, v2

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$GroupImage;

    aput-object p3, v1, v2

    goto :goto_0

    .line 16
    :cond_3
    sget-object v2, Lcom/smartisanos/magicflow/h/d$a;->c:Lcom/smartisanos/magicflow/h/d$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-nez p2, :cond_4

    const p2, 0x7f0b0065

    .line 17
    invoke-virtual {v0, p2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 18
    new-instance p3, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;-><init>(Landroid/content/Context;Landroid/view/View;)V

    aput-object p3, v1, v2

    .line 19
    aget-object p3, v1, v2

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$SingleBigImage;

    aput-object p3, v1, v2

    .line 21
    :goto_0
    aget-object p3, v1, v2

    if-eqz p3, :cond_7

    .line 22
    invoke-virtual {p3, p1, v4}, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->setItemInfo(Lcom/smartisanos/magicflow/h/l;Z)V

    .line 23
    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mEditMode:I

    if-nez v0, :cond_5

    .line 24
    iget-object p1, p3, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->mCheckBoxImg:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 25
    :cond_5
    iget-object v0, p3, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->mCheckBoxImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/l;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 27
    iget-object p1, p3, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->mCheckBoxImg:Landroid/widget/ImageView;

    const p3, 0x7f0700d6

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 28
    :cond_6
    iget-object p1, p3, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->mCheckBoxImg:Landroid/widget/ImageView;

    const p3, 0x7f0700d5

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    :goto_1
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/h/d$a;->values()[Lcom/smartisanos/magicflow/h/d$a;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public setEditMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mEditMode:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setMaxMinCount([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mMaxMinCount:[I

    return-void
.end method

.method public setUseListDivider(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mUseListDivider:Z

    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
