.class Lcom/smartisanos/magicflow/view/NewsStreamView$1;
.super Ljava/lang/Object;
.source "NewsStreamView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnItemClickListener;


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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/smartisanos/magicflow/h/l;I)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-boolean p1, p2, Lcom/smartisanos/magicflow/h/l;->E:Z

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    .line 3
    iget p1, p2, Lcom/smartisanos/magicflow/h/l;->b:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/o/j;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Context;Lcom/smartisanos/magicflow/h/l;Z)V

    goto/16 :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lcom/smartisanos/magicflow/o/j;->a(Landroid/content/Context;ILcom/smartisanos/magicflow/o/j$c;Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 7
    invoke-static {}, Lcom/smartisanos/magicflow/b;->h()Lcom/smartisanos/magicflow/view/DetailsContentView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    new-instance v7, Lcom/smartisanos/magicflow/view/NewsWebView;

    iget-object v2, v0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/magicflow/view/NewsWebView;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/l;IZZ)V

    invoke-static {v0, v7}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$002(Lcom/smartisanos/magicflow/view/NewsStreamView;Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/view/NewsWebView;

    .line 9
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$000(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/NewsWebView;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/smartisanos/magicflow/view/NewsWebView;->setNewsSourceType(I)V

    .line 10
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/DetailsContentView;->getBaseView()Lcom/smartisanos/magicflow/view/BaseView;

    move-result-object p2

    iget-object p3, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p3}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$000(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/NewsWebView;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/smartisanos/magicflow/view/DetailsContentView;->enterView(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-static {}, Lcom/smartisanos/magicflow/b;->h()Lcom/smartisanos/magicflow/view/DetailsContentView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 12
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$100(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/h/q;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/magicflow/h/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->e(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    new-instance v7, Lcom/smartisanos/magicflow/view/NewsWebView;

    iget-object v2, v0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/magicflow/view/NewsWebView;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/l;IZZ)V

    invoke-static {v0, v7}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$002(Lcom/smartisanos/magicflow/view/NewsStreamView;Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/view/NewsWebView;

    .line 14
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$000(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/NewsWebView;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/smartisanos/magicflow/view/NewsWebView;->setNewsSourceType(I)V

    .line 15
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/DetailsContentView;->getBaseView()Lcom/smartisanos/magicflow/view/BaseView;

    move-result-object p2

    iget-object p3, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p3}, Lcom/smartisanos/magicflow/view/NewsStreamView;->access$000(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/NewsWebView;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/smartisanos/magicflow/view/DetailsContentView;->enterView(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V

    :cond_5
    :goto_0
    return-void
.end method
