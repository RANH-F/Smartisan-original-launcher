.class Lcom/smartisanos/magicflow/view/CollectionStreamView$3;
.super Ljava/lang/Object;
.source "CollectionStreamView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/CollectionStreamView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/CollectionStreamView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;

    .line 3
    iget-object v2, p1, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;->mItemInfo:Lcom/smartisanos/magicflow/h/l;

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$500(Lcom/smartisanos/magicflow/view/CollectionStreamView;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/magicflow/h/l;->c()Z

    move-result p1

    .line 6
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p3}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$600(Lcom/smartisanos/magicflow/view/CollectionStreamView;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x0

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$708(Lcom/smartisanos/magicflow/view/CollectionStreamView;)I

    .line 8
    invoke-virtual {v2, p2}, Lcom/smartisanos/magicflow/h/l;->a(Z)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$710(Lcom/smartisanos/magicflow/view/CollectionStreamView;)I

    .line 10
    invoke-virtual {v2, p3}, Lcom/smartisanos/magicflow/h/l;->a(Z)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$700(Lcom/smartisanos/magicflow/view/CollectionStreamView;)I

    move-result p1

    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$400(Lcom/smartisanos/magicflow/view/CollectionStreamView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$400(Lcom/smartisanos/magicflow/view/CollectionStreamView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 14
    :goto_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$700(Lcom/smartisanos/magicflow/view/CollectionStreamView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$800(Lcom/smartisanos/magicflow/view/CollectionStreamView;I)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$900(Lcom/smartisanos/magicflow/view/CollectionStreamView;)Lcom/smartisanos/magicflow/view/newslist/CollectionListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 16
    :cond_2
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result p1

    if-nez p1, :cond_3

    .line 17
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p1

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Lcom/smartisanos/magicflow/c;->a(II)V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    new-instance p2, Lcom/smartisanos/magicflow/view/NewsWebView;

    iget-object v1, p1, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/magicflow/view/NewsWebView;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/l;IZZ)V

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$1002(Lcom/smartisanos/magicflow/view/CollectionStreamView;Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/view/NewsWebView;

    .line 19
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$1000(Lcom/smartisanos/magicflow/view/CollectionStreamView;)Lcom/smartisanos/magicflow/view/NewsWebView;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/smartisanos/magicflow/view/NewsWebView;->setNewsSourceType(I)V

    .line 20
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$3;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$1000(Lcom/smartisanos/magicflow/view/CollectionStreamView;)Lcom/smartisanos/magicflow/view/NewsWebView;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/b;->a(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V

    :cond_3
    :goto_2
    return-void
.end method
