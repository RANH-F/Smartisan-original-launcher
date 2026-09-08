.class Lcom/smartisanos/magicflow/view/NewsStreamView$3;
.super Ljava/lang/Object;
.source "NewsStreamView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/NewsStreamView;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/NewsStreamView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListViewDataLoadFinish(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$200(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListViewDataLoadFinish success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$300(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$400(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$300(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/o/j;->e()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$400(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$400(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setNoNetworkState(I)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$300(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$100(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/h/q;

    move-result-object p1

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/q;->b:Ljava/lang/String;

    const-string v2, "news_local"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    .line 11
    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$100(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/h/q;

    move-result-object p1

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/q;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-static {}, Lcom/smartisanos/magicflow/o/j;->d()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$400(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object p1

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setNoNetworkState(I)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$400(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$300(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/j;->g(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$400(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setNoNetworkState(I)V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$400(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$300(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$400(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setNoNetworkState(I)V

    .line 21
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$400(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$300(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 23
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$500(Lcom/smartisanos/magicflow/view/NewsStreamView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
