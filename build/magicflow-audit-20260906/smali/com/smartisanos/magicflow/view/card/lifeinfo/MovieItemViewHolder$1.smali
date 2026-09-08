.class Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder$1;
.super Ljava/lang/Object;
.source "MovieItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder$1;->this$0:Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder$1$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder$1$1;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieItemViewHolder$1;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Context;ZLandroid/view/View$OnClickListener;)V

    return-void
.end method
