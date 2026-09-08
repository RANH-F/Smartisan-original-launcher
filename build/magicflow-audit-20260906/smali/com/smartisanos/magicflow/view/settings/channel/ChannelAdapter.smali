.class public Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$onItemRangeChangeListener;,
        Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$TitleHolder;,
        Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHANNEL_TYPE:I = 0x3

.field public static final DISABLED_TITLE_TYPE:I = 0x2

.field public static final ENABLED_TITLE_TYPE:I = 0x1


# instance fields
.field private fixIndex:I

.field private mAllList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private onItemRangeChangeListener:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$onItemRangeChangeListener;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private selectedSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mAllList:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->selectedSize:I

    return p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->fixIndex:I

    return p0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;ILcom/smartisanos/magicflow/view/settings/channel/ChannelBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->removeFromSelected(ILcom/smartisanos/magicflow/view/settings/channel/ChannelBean;)V

    return-void
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;ILcom/smartisanos/magicflow/view/settings/channel/ChannelBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->removeFromDisabled(ILcom/smartisanos/magicflow/view/settings/channel/ChannelBean;)V

    return-void
.end method

.method private removeFromDisabled(ILcom/smartisanos/magicflow/view/settings/channel/ChannelBean;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, v0}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->setAdded(Z)V

    .line 2
    iget p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->selectedSize:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->selectedSize:I

    .line 3
    iget p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->selectedSize:I

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->itemMove(II)V

    .line 4
    iget p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->selectedSize:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->onItemRangeChangeListener:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$onItemRangeChangeListener;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$onItemRangeChangeListener;->refreshItemDecoration()V

    :cond_0
    return-void
.end method

.method private removeFromSelected(ILcom/smartisanos/magicflow/view/settings/channel/ChannelBean;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->setAdded(Z)V

    .line 2
    iget p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->selectedSize:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->itemMove(II)V

    .line 3
    iget p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->selectedSize:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->onItemRangeChangeListener:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$onItemRangeChangeListener;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$onItemRangeChangeListener;->refreshItemDecoration()V

    .line 6
    :cond_0
    iget p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->selectedSize:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->selectedSize:I

    return-void
.end method

.method private setChannel(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/o/n;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    iget v1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->fixIndex:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p2, p1, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 4
    iget-object p1, p1, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;->icon:Landroid/widget/ImageView;

    const p2, 0x7f07025e

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p1, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f07025d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7
    iget-object v0, p1, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;->enabledVector:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p1, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f07025a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 9
    iget-object v0, p1, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;->enabledVector:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    :goto_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$1;-><init>(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$2;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$2;-><init>(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private setTitle(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$TitleHolder;II)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p1, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$TitleHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0d01be

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2
    iget-object p2, p1, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$TitleHolder;->describe:Landroid/widget/TextView;

    const v0, 0x7f0d01bf

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p1, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$TitleHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0d0197

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget-object p2, p1, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$TitleHolder;->describe:Landroid/widget/TextView;

    const v0, 0x7f0d0198

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const/4 p2, 0x2

    if-ne p3, p2, :cond_1

    .line 5
    iget p3, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->selectedSize:I

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mAllList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    if-ne p3, v0, :cond_1

    .line 6
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getDisabledList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mAllList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->selectedSize:I

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mAllList:Ljava/util/List;

    add-int/lit8 v1, v1, 0x2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mAllList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3
    :cond_0
    iget v1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->fixIndex:I

    iget v2, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->selectedSize:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFixIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->fixIndex:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mAllList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mAllList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->getLayoutType()I

    move-result p1

    return p1
.end method

.method public getSelectedSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->selectedSize:I

    return v0
.end method

.method itemMove(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mAllList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mAllList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mAllList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_2

    :cond_0
    if-ge p1, p2, :cond_1

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mAllList:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_1
    if-le v0, p2, :cond_2

    .line 5
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mAllList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    check-cast p1, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mAllList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;

    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->setChannel(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;)V

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$TitleHolder;

    invoke-virtual {p0, p2}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->getItemViewType(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->setTitle(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$TitleHolder;II)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    const v2, 0x7f0b0098

    if-eq p2, v0, :cond_0

    .line 1
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;

    invoke-direct {p2, p1}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;

    invoke-direct {p2, p1}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0099

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$TitleHolder;

    invoke-direct {p2, p1}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$TitleHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setFixIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->fixIndex:I

    return-void
.end method

.method public setOnItemRangeChangeListener(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$onItemRangeChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->onItemRangeChangeListener:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$onItemRangeChangeListener;

    return-void
.end method

.method public setSelectedSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->selectedSize:I

    return-void
.end method
