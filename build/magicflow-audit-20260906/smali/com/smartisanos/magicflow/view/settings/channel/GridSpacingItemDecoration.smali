.class public Lcom/smartisanos/magicflow/view/settings/channel/GridSpacingItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "GridSpacingItemDecoration.java"


# instance fields
.field private disabledTitlePosition:I

.field private disabledTitleTop:I

.field private enabledTitleTop:I

.field private spacing:I

.field private spanCount:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/GridSpacingItemDecoration;->spanCount:I

    .line 3
    iput p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/GridSpacingItemDecoration;->spacing:I

    .line 4
    iput p3, p0, Lcom/smartisanos/magicflow/view/settings/channel/GridSpacingItemDecoration;->enabledTitleTop:I

    .line 5
    iput p4, p0, Lcom/smartisanos/magicflow/view/settings/channel/GridSpacingItemDecoration;->disabledTitleTop:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .line 1
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    if-ltz p4, :cond_5

    .line 2
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    check-cast p3, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

    .line 3
    invoke-virtual {p3, p4}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 5
    iget v3, p0, Lcom/smartisanos/magicflow/view/settings/channel/GridSpacingItemDecoration;->enabledTitleTop:I

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 6
    iput v2, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 7
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 8
    iget v4, p0, Lcom/smartisanos/magicflow/view/settings/channel/GridSpacingItemDecoration;->disabledTitleTop:I

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 9
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 10
    iput p4, p0, Lcom/smartisanos/magicflow/view/settings/channel/GridSpacingItemDecoration;->disabledTitlePosition:I

    .line 11
    invoke-virtual {p3}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->getSelectedSize()I

    move-result v4

    invoke-virtual {p3}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->getItemCount()I

    move-result p3

    sub-int/2addr p3, v3

    if-ne v4, p3, :cond_1

    const/16 p3, 0x8

    .line 12
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    const/4 p2, 0x3

    if-ne v0, p2, :cond_4

    .line 14
    iget p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/GridSpacingItemDecoration;->disabledTitlePosition:I

    if-gt p4, p2, :cond_3

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_3
    add-int/2addr p2, v1

    sub-int/2addr p4, p2

    .line 15
    :goto_1
    iget p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/GridSpacingItemDecoration;->spanCount:I

    rem-int/2addr p4, p2

    .line 16
    iget p3, p0, Lcom/smartisanos/magicflow/view/settings/channel/GridSpacingItemDecoration;->spacing:I

    mul-int v0, p4, p3

    div-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p4, v1

    mul-int/2addr p4, p3

    .line 17
    div-int/2addr p4, p2

    sub-int p2, p3, p4

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 18
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 19
    :cond_4
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_5
    return-void
.end method
