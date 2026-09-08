.class Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2$1;
.super Ljava/lang/Object;
.source "CardItemListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2$1;->this$1:Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2$1;->this$1:Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->access$600(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter$ItemViewVisibilityChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2$1;->this$1:Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->access$600(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter$ItemViewVisibilityChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2$1;->this$1:Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;

    iget-object v1, v1, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->access$500(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2$1;->val$view:Landroid/view/View;

    iget v3, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2$1;->val$position:I

    invoke-interface {v0, v1, v2, v3}, Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter$ItemViewVisibilityChangedListener;->onItemViewVisibilityChanged(Landroid/graphics/Rect;Landroid/view/View;I)V

    :cond_0
    return-void
.end method
