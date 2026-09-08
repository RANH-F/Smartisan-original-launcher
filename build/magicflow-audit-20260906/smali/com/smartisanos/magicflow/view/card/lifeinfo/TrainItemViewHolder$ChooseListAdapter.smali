.class Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrainItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChooseListAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfo:Lcom/smartisanos/magicflow/h/y;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/y$b;",
            ">;"
        }
    .end annotation
.end field

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private stationColorNotSelected:I

.field private stationColorSelected:I

.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;Lcom/smartisanos/magicflow/h/y;Landroid/view/LayoutInflater;Landroid/content/res/Resources;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mList:Ljava/util/List;

    .line 3
    new-instance p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter$1;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    const p1, 0x7f050065

    .line 4
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->stationColorSelected:I

    const p1, 0x7f050064

    .line 5
    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->stationColorNotSelected:I

    .line 6
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mInfo:Lcom/smartisanos/magicflow/h/y;

    .line 7
    iput-object p3, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mInfo:Lcom/smartisanos/magicflow/h/y;

    if-eqz p1, :cond_6

    .line 9
    iget-object p1, p1, Lcom/smartisanos/magicflow/h/y;->v:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 10
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mInfo:Lcom/smartisanos/magicflow/h/y;

    iget-object p2, p2, Lcom/smartisanos/magicflow/h/y;->v:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/smartisanos/magicflow/h/y$b;

    .line 11
    iget-boolean p3, p3, Lcom/smartisanos/magicflow/h/y$b;->c:Z

    if-eqz p3, :cond_0

    move p2, p4

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-nez p2, :cond_2

    .line 12
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mInfo:Lcom/smartisanos/magicflow/h/y;

    iget-object p2, p2, Lcom/smartisanos/magicflow/h/y;->v:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/magicflow/h/y$b;

    iput-boolean p4, p2, Lcom/smartisanos/magicflow/h/y$b;->c:Z

    .line 13
    :cond_2
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mInfo:Lcom/smartisanos/magicflow/h/y;

    iget-object p2, p2, Lcom/smartisanos/magicflow/h/y;->m:Ljava/lang/String;

    const/4 p3, -0x1

    if-eqz p2, :cond_4

    move p4, v0

    :goto_1
    if-ge p4, p1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mInfo:Lcom/smartisanos/magicflow/h/y;

    iget-object v1, v1, Lcom/smartisanos/magicflow/h/y;->v:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/h/y$b;

    .line 15
    iget-object v1, v1, Lcom/smartisanos/magicflow/h/y$b;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move p3, p4

    goto :goto_2

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-lez p3, :cond_5

    .line 16
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mList:Ljava/util/List;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mInfo:Lcom/smartisanos/magicflow/h/y;

    iget-object p2, p2, Lcom/smartisanos/magicflow/h/y;->v:Ljava/util/List;

    invoke-interface {p2, v0, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mList:Ljava/util/List;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mInfo:Lcom/smartisanos/magicflow/h/y;

    iget-object p2, p2, Lcom/smartisanos/magicflow/h/y;->v:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    :goto_3
    return-void
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;)Lcom/smartisanos/magicflow/h/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mInfo:Lcom/smartisanos/magicflow/h/y;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0b0033

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/smartisanos/magicflow/h/y$b;

    const v0, 0x7f0802bd

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0802be

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 5
    iget-boolean v2, p3, Lcom/smartisanos/magicflow/h/y$b;->c:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 7
    iget-object v1, p3, Lcom/smartisanos/magicflow/h/y$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-boolean p3, p3, Lcom/smartisanos/magicflow/h/y$b;->c:Z

    if-eqz p3, :cond_1

    .line 9
    iget p3, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->stationColorSelected:I

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget p3, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->stationColorNotSelected:I

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    :goto_0
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public setSelectedStation(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mInfo:Lcom/smartisanos/magicflow/h/y;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/y;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mInfo:Lcom/smartisanos/magicflow/h/y;

    iget-object v3, v3, Lcom/smartisanos/magicflow/h/y;->v:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/magicflow/h/y$b;

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    .line 3
    iput-boolean v4, v3, Lcom/smartisanos/magicflow/h/y$b;->c:Z

    goto :goto_1

    .line 4
    :cond_0
    iput-boolean v1, v3, Lcom/smartisanos/magicflow/h/y$b;->c:Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mList:Ljava/util/List;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;->mInfo:Lcom/smartisanos/magicflow/h/y;

    iget-object v0, v0, Lcom/smartisanos/magicflow/h/y;->v:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateList()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter$2;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainItemViewHolder$ChooseListAdapter;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
