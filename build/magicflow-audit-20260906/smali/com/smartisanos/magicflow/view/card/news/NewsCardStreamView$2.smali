.class Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;
.super Ljava/lang/Object;
.source "NewsCardStreamView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadViewStatusChange(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->access$200(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/o/j;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->access$100(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setNoNetworkState(I)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->access$100(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->access$300(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->access$300(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->setItemListViewVisibility(I)V

    goto :goto_2

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->access$400(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/j;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->access$100(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setNoNetworkState(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->access$300(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->access$300(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->setItemListViewVisibility(I)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->access$100(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object v0

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->access$100(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setNoNetworkState(I)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->access$100(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object v0

    if-nez p1, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->access$300(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->access$300(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    move-result-object v0

    if-nez p1, :cond_5

    move v2, v1

    :cond_5
    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->setItemListViewVisibility(I)V

    .line 16
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->access$000(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
