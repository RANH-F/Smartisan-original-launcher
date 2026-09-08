.class Lcom/smartisanos/magicflow/view/newslist/ItemListView$2$1;
.super Ljava/lang/Object;
.source "ItemListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemListView$2;->onChildViewDetachedFromWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/newslist/ItemListView$2;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView$2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$2$1;->this$1:Lcom/smartisanos/magicflow/view/newslist/ItemListView$2;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$2$1;->val$tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$2$1;->this$1:Lcom/smartisanos/magicflow/view/newslist/ItemListView$2;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$2;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->access$000(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$2$1;->val$tag:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
