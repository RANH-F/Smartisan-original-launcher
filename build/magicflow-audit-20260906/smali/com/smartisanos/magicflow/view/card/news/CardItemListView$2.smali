.class Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;
.super Ljava/lang/Object;
.source "CardItemListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/card/news/CardItemListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->access$400(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-static {v2}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->access$400(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;->this$0:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-static {v3}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->access$500(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 7
    new-instance v3, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2$1;-><init>(Lcom/smartisanos/magicflow/view/card/news/CardItemListView$2;Landroid/view/View;I)V

    invoke-static {v3}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
