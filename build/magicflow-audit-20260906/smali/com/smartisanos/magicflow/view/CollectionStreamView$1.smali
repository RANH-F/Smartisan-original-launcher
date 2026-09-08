.class Lcom/smartisanos/magicflow/view/CollectionStreamView$1;
.super Ljava/lang/Object;
.source "CollectionStreamView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/CollectionStreamView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/CollectionStreamView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$000(Lcom/smartisanos/magicflow/view/CollectionStreamView;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$100(Lcom/smartisanos/magicflow/view/CollectionStreamView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$200(Lcom/smartisanos/magicflow/view/CollectionStreamView;)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$1;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$300(Lcom/smartisanos/magicflow/view/CollectionStreamView;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/b;->j()Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void
.end method
