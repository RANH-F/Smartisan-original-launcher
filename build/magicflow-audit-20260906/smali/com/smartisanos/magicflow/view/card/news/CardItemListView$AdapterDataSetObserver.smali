.class Lcom/smartisanos/magicflow/view/card/news/CardItemListView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CardItemListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/news/CardItemListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;


# direct methods
.method private constructor <init>(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$AdapterDataSetObserver;->this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;Lcom/smartisanos/magicflow/view/card/news/CardItemListView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$AdapterDataSetObserver;-><init>(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$AdapterDataSetObserver;->this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->access$100(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$AdapterDataSetObserver;->this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->access$700(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)V

    :cond_0
    return-void
.end method
