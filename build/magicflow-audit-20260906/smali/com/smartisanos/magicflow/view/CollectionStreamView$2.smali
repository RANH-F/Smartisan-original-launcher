.class Lcom/smartisanos/magicflow/view/CollectionStreamView$2;
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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$000(Lcom/smartisanos/magicflow/view/CollectionStreamView;)I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$400(Lcom/smartisanos/magicflow/view/CollectionStreamView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$400(Lcom/smartisanos/magicflow/view/CollectionStreamView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/CollectionStreamView$2;->this$0:Lcom/smartisanos/magicflow/view/CollectionStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/CollectionStreamView;->access$300(Lcom/smartisanos/magicflow/view/CollectionStreamView;)V

    return-void
.end method
