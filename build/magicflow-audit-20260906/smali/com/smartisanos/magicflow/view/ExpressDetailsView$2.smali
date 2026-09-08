.class Lcom/smartisanos/magicflow/view/ExpressDetailsView$2;
.super Ljava/lang/Object;
.source "ExpressDetailsView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/ExpressDetailsView;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/ExpressDetailsView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$2;->this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$2;->this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->access$000(Lcom/smartisanos/magicflow/view/ExpressDetailsView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$2;->this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->access$100(Lcom/smartisanos/magicflow/view/ExpressDetailsView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$2;->this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->access$200(Lcom/smartisanos/magicflow/view/ExpressDetailsView;)Lcom/smartisanos/magicflow/h/g;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->access$300(Lcom/smartisanos/magicflow/view/ExpressDetailsView;Lcom/smartisanos/magicflow/h/g;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/j;->a(Landroid/content/Context;Z)V

    :cond_1
    :goto_0
    return-void
.end method
