.class public Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelHolder"
.end annotation


# instance fields
.field enabledVector:Landroid/widget/ImageView;

.field icon:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0801df

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f0801de

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0800f8

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;->enabledVector:Landroid/widget/ImageView;

    return-void
.end method
