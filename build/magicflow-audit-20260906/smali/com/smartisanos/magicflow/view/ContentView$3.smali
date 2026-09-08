.class Lcom/smartisanos/magicflow/view/ContentView$3;
.super Ljava/lang/Object;
.source "ContentView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/WelcomeView$OnWelcomeViewDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/ContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/ContentView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/ContentView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ContentView$3;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWelcomeViewDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView$3;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/ContentView;->access$500(Lcom/smartisanos/magicflow/view/ContentView;)Lcom/smartisanos/magicflow/view/MagicFlowScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView$3;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/ContentView;->access$600(Lcom/smartisanos/magicflow/view/ContentView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView$3;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/ContentView;->access$700(Lcom/smartisanos/magicflow/view/ContentView;)Lcom/smartisanos/magicflow/view/WelcomeView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView$3;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/ContentView;->access$700(Lcom/smartisanos/magicflow/view/ContentView;)Lcom/smartisanos/magicflow/view/WelcomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/WelcomeView;->clean()V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView$3;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/ContentView;->access$700(Lcom/smartisanos/magicflow/view/ContentView;)Lcom/smartisanos/magicflow/view/WelcomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView$3;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/ContentView;->access$702(Lcom/smartisanos/magicflow/view/ContentView;Lcom/smartisanos/magicflow/view/WelcomeView;)Lcom/smartisanos/magicflow/view/WelcomeView;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView$3;->this$0:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/smartisanos/magicflow/i/a;->c(Landroid/content/Context;)V

    .line 9
    new-instance v1, Lcom/smartisanos/magicflow/view/ContentView$3$1;

    invoke-direct {v1, p0, v0}, Lcom/smartisanos/magicflow/view/ContentView$3$1;-><init>(Lcom/smartisanos/magicflow/view/ContentView$3;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
