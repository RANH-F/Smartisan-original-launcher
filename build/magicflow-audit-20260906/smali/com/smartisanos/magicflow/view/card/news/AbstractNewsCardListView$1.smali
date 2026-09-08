.class Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView$1;
.super Ljava/lang/Object;
.source "AbstractNewsCardListView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter$ItemViewVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/q;Lcom/smartisanos/magicflow/view/card/news/CardItemListView;Landroid/widget/ProgressBar;Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemViewVisibilityChanged(Landroid/graphics/Rect;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->access$000(Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;)Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView$1;->this$0:Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->access$000(Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;)Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->reportNewsShow(Landroid/graphics/Rect;Landroid/view/View;I)V

    :cond_0
    return-void
.end method
