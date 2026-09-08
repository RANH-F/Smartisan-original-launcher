.class Lcom/smartisanos/magicflow/view/dslv/DragSortListView$2;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/dslv/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/dslv/DragSortListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$2;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$2;->this$0:Lcom/smartisanos/magicflow/view/dslv/DragSortListView;

    iget v1, v0, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->mDragState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView;->cancelDrag()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$2;->cancel()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/dslv/DragSortListView$2;->cancel()V

    return-void
.end method
