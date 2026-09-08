.class public Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HeaderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrappedAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_ITEM_TYPE_FOOTER:I = 0x30d40

.field private static final BASE_ITEM_TYPE_HEADER:I = 0x186a0


# instance fields
.field private mFootViews:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInnerAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;

.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance p1, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {p1}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 3
    new-instance p1, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {p1}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 4
    iput-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mInnerAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;)Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mInnerAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;

    return-object p0
.end method

.method private getRealItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mInnerAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method private isFooterViewPos(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->getHeadersCount()I

    move-result v0

    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->getRealItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isHeaderViewPos(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->getHeadersCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public addFootView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    const v2, 0x30d40

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    const v2, 0x186a0

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mInnerAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;

    return-void
.end method

.method public getFootersCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->getHeadersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->getFootersCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->getRealItemCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->isHeaderViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->isFooterViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->getRealItemCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mInnerAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->isHeaderViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->isFooterViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mInnerAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$ItemViewHolder;

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mHeaderViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, v0, p2}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$ItemViewHolder;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;Landroid/view/View;)V

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mFootViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p1, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$ItemViewHolder;

    iget-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    iget-object v0, p2, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mFooterView:Landroid/view/View;

    invoke-direct {p1, p2, v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$ItemViewHolder;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;Landroid/view/View;)V

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->mInnerAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
