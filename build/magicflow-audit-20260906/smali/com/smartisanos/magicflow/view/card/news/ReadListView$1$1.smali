.class Lcom/smartisanos/magicflow/view/card/news/ReadListView$1$1;
.super Ljava/lang/Object;
.source "ReadListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/news/ReadListView$1;->onDataChanged(Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/card/news/ReadListView$1;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/news/ReadListView$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/ReadListView$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/news/ReadListView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/ReadListView$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/news/ReadListView$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/news/ReadListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/ReadListView;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->getAdapter()Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/ReadListView$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/news/ReadListView$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/news/ReadListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/ReadListView;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->getAdapter()Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;

    const-string v1, "smartisan_read"

    .line 3
    invoke-static {v1}, Lcom/smartisanos/magicflow/cache/NewsCache;->getNewsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->update(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/ReadListView$1$1;->this$1:Lcom/smartisanos/magicflow/view/card/news/ReadListView$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/news/ReadListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/ReadListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->onViewStatusChange()V

    return-void
.end method
