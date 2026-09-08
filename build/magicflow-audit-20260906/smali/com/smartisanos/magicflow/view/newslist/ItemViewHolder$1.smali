.class Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$1;
.super Ljava/lang/Object;
.source "ItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder$1;->this$0:Lcom/smartisanos/magicflow/view/newslist/ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/h/l;

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/l/a;->a(Lcom/smartisanos/magicflow/h/l;Z)V

    return-void
.end method
