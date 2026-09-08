.class Lcom/smartisanos/magicflow/view/MovieDetailsView$3;
.super Ljava/lang/Object;
.source "MovieDetailsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/MovieDetailsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/MovieDetailsView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/MovieDetailsView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView$3;->this$0:Lcom/smartisanos/magicflow/view/MovieDetailsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/MovieDetailsView$3;->this$0:Lcom/smartisanos/magicflow/view/MovieDetailsView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/MovieDetailsView;->access$200(Lcom/smartisanos/magicflow/view/MovieDetailsView;)V

    return-void
.end method
