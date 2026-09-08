.class public Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;
.super Landroid/widget/BaseAdapter;
.source "DragSortAdapter.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragSortListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$OnRemoveListener;,
        Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final REMOVED:I = -0x1


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mAdd:Z

.field private mCategoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsNewsChannel:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private onRemoveListener:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$OnRemoveListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->log:Lcom/smartisanos/magicflow/LOG;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mCategoryList:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$1;-><init>(Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 5
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mContext:Landroid/content/Context;

    .line 6
    iput-boolean p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mAdd:Z

    .line 7
    iput-boolean p3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mIsNewsChannel:Z

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mCategoryList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;)Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$OnRemoveListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->onRemoveListener:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$OnRemoveListener;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->onRemoveListener:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$OnRemoveListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->onRemoveListener:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$OnRemoveListener;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mCategoryList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mCategoryList:Ljava/util/ArrayList;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 7
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mContext:Landroid/content/Context;

    :cond_2
    return-void
.end method

.method public drag(II)V
    .locals 0

    return-void
.end method

.method public drop(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mCategoryList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eq p1, p2, :cond_3

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-le p1, p2, :cond_1

    :goto_0
    if-le p1, p2, :cond_2

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mCategoryList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge p1, p2, :cond_2

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mCategoryList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move p1, v2

    goto :goto_1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mCategoryList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mCategoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b007d

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$ViewHolder;-><init>(Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;)V

    const v0, 0x7f080185

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$ViewHolder;->ivDrag:Landroid/widget/ImageView;

    const v0, 0x7f0800ef

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ListContentItemText;

    iput-object v0, p3, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$ViewHolder;->contentItemText:Lsmartisan/widget/ListContentItemText;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$ViewHolder;

    .line 7
    :goto_0
    iget-object v0, p3, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$ViewHolder;->contentItemText:Lsmartisan/widget/ListContentItemText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisan/widget/ListContentItemText;->setArrowVisible(Z)V

    .line 8
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mIsNewsChannel:Z

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p3, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$ViewHolder;->contentItemText:Lsmartisan/widget/ListContentItemText;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/smartisanos/magicflow/o/n;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsmartisan/widget/ListContentItemText;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p3, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$ViewHolder;->contentItemText:Lsmartisan/widget/ListContentItemText;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/smartisanos/magicflow/o/n;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsmartisan/widget/ListContentItemText;->setTitle(Ljava/lang/CharSequence;)V

    .line 11
    :goto_1
    iget-object v0, p3, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$ViewHolder;->contentItemText:Lsmartisan/widget/ListContentItemText;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mAdd:Z

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p3, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$ViewHolder;->ivDrag:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object p1, p3, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$ViewHolder;->contentItemText:Lsmartisan/widget/ListContentItemText;

    const v0, 0x7f07014e

    invoke-virtual {p1, v0}, Lsmartisan/widget/ListContentItemText;->setIcon(I)V

    goto :goto_2

    .line 15
    :cond_2
    iget-object p1, p3, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$ViewHolder;->ivDrag:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object p1, p3, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$ViewHolder;->contentItemText:Lsmartisan/widget/ListContentItemText;

    const v0, 0x7f07006f

    invoke-virtual {p1, v0}, Lsmartisan/widget/ListContentItemText;->setIcon(I)V

    .line 17
    :goto_2
    iget-object p1, p3, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$ViewHolder;->contentItemText:Lsmartisan/widget/ListContentItemText;

    invoke-virtual {p1}, Lsmartisan/widget/ListContentItem;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    iget-object p3, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public remove(I)V
    .locals 0

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnRemoveListener(Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$OnRemoveListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->onRemoveListener:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$OnRemoveListener;

    return-void
.end method
