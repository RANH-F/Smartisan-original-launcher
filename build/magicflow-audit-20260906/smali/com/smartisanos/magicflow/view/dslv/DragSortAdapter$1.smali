.class Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$1;
.super Ljava/lang/Object;
.source "DragSortAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq p1, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->access$000(Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->access$100(Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;)Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$OnRemoveListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->access$100(Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;)Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$OnRemoveListener;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$1;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-static {v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->access$000(Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$OnRemoveListener;->onRemove(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
