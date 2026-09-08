.class Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "NewsChannelSettingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;-><init>(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView$1;->this$0:Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView$1;->this$0:Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->access$000(Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView$1;->this$0:Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->access$100(Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView$1;->this$0:Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->access$000(Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->getSpanSize()I

    move-result p1

    return p1
.end method
