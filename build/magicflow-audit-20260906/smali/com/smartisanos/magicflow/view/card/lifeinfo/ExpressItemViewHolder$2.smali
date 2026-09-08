.class Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder$2;
.super Ljava/lang/Object;
.source "ExpressItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder$2;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder$2;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->access$000(Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;Landroid/content/Context;)V

    return-void
.end method
