.class public Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShortcutToolAdapter.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/dslv/DragSortListView$DragSortListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mToolNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->mToolNameList:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public drag(II)V
    .locals 0

    return-void
.end method

.method public drop(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->mToolNameList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eq p1, p2, :cond_3

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    if-le p1, p2, :cond_1

    :goto_0
    if-le p1, p2, :cond_2

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->mToolNameList:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge p1, p2, :cond_2

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->mToolNameList:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move p1, v2

    goto :goto_1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->mToolNameList:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->mToolNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->mToolNameList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->mToolNameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->getItem(I)Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

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
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b00d9

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter$ViewHolder;

    invoke-direct {p3, p2}, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter$ViewHolder;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->mToolNameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    invoke-virtual {p3, p1}, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter$ViewHolder;->setData(Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;)V

    return-object p2
.end method

.method public remove(I)V
    .locals 0

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->mToolNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutToolAdapter;->mToolNameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
