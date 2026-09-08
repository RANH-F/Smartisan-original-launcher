.class Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$1;
.super Ljava/lang/Object;
.source "ChannelAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->setChannel(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

.field final synthetic val$bean:Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;

.field final synthetic val$holder:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$1;->val$holder:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$1;->val$bean:Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->access$000(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$1;->val$holder:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->access$100(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$1;->val$holder:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->access$200(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;)I

    move-result v0

    if-le p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$1;->val$holder:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$1;->val$bean:Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;

    invoke-static {p1, v0, v1}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->access$300(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;ILcom/smartisanos/magicflow/view/settings/channel/ChannelBean;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$1;->val$holder:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$ChannelHolder;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$1;->val$bean:Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;

    invoke-static {p1, v0, v1}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->access$400(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;ILcom/smartisanos/magicflow/view/settings/channel/ChannelBean;)V

    :cond_2
    :goto_0
    return-void
.end method
