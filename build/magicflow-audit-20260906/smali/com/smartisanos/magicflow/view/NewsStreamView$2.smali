.class Lcom/smartisanos/magicflow/view/NewsStreamView$2;
.super Ljava/lang/Object;
.source "NewsStreamView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewItemDeleteListener;


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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListViewItemDelete(Lcom/smartisanos/magicflow/h/l;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-boolean v0, p1, Lcom/smartisanos/magicflow/h/l;->E:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0119

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/NewsStreamView;->onRemoveNews(Lcom/smartisanos/magicflow/h/l;)V

    return-void
.end method
