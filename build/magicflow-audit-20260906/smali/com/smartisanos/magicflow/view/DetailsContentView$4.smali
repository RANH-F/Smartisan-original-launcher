.class Lcom/smartisanos/magicflow/view/DetailsContentView$4;
.super Ljava/lang/Object;
.source "DetailsContentView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/DetailsContentView;->exitView(Lcom/smartisanos/magicflow/view/BaseView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/DetailsContentView;

.field final synthetic val$closeView:Lcom/smartisanos/magicflow/view/BaseView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/DetailsContentView;Lcom/smartisanos/magicflow/view/BaseView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView$4;->this$0:Lcom/smartisanos/magicflow/view/DetailsContentView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/DetailsContentView$4;->val$closeView:Lcom/smartisanos/magicflow/view/BaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    return-void
.end method

.method public onEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView$4;->val$closeView:Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BaseView;->onExit()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView$4;->this$0:Lcom/smartisanos/magicflow/view/DetailsContentView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/DetailsContentView;->access$000(Lcom/smartisanos/magicflow/view/DetailsContentView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView$4;->this$0:Lcom/smartisanos/magicflow/view/DetailsContentView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/DetailsContentView;->access$000(Lcom/smartisanos/magicflow/view/DetailsContentView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView$4;->val$closeView:Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/DetailsContentView$4;->this$0:Lcom/smartisanos/magicflow/view/DetailsContentView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/DetailsContentView$4;->val$closeView:Lcom/smartisanos/magicflow/view/BaseView;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/BaseView;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    return-void
.end method

.method public onRepeat()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
