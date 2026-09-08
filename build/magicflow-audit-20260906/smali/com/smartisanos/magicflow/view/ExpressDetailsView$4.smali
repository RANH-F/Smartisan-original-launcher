.class Lcom/smartisanos/magicflow/view/ExpressDetailsView$4;
.super Ljava/lang/Object;
.source "ExpressDetailsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/ExpressDetailsView;->hideProgressBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

.field final synthetic val$showErrLayout:Z


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/ExpressDetailsView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$4;->this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    iput-boolean p2, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$4;->val$showErrLayout:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$4;->this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->access$100(Lcom/smartisanos/magicflow/view/ExpressDetailsView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$4;->this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->access$000(Lcom/smartisanos/magicflow/view/ExpressDetailsView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setNoNetworkState(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$4;->this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->access$000(Lcom/smartisanos/magicflow/view/ExpressDetailsView;)Lcom/smartisanos/magicflow/view/NoNetworkView;

    move-result-object v0

    iget-boolean v2, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$4;->val$showErrLayout:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$4;->this$0:Lcom/smartisanos/magicflow/view/ExpressDetailsView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/ExpressDetailsView;->access$600(Lcom/smartisanos/magicflow/view/ExpressDetailsView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-boolean v2, p0, Lcom/smartisanos/magicflow/view/ExpressDetailsView$4;->val$showErrLayout:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
