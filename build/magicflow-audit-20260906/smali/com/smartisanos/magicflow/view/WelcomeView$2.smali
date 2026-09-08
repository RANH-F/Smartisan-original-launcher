.class Lcom/smartisanos/magicflow/view/WelcomeView$2;
.super Ljava/lang/Object;
.source "WelcomeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/view/WelcomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/WelcomeView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/WelcomeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/WelcomeView$2;->this$0:Lcom/smartisanos/magicflow/view/WelcomeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/WelcomeView$2;->this$0:Lcom/smartisanos/magicflow/view/WelcomeView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/WelcomeView;->access$100(Lcom/smartisanos/magicflow/view/WelcomeView;)V

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Lcom/smartisanos/magicflow/h/v;->b(I)V

    .line 4
    sput p1, Lcom/smartisanos/magicflow/h/d;->T:I

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/c;->c()V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/WelcomeView$2;->this$0:Lcom/smartisanos/magicflow/view/WelcomeView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/WelcomeView;->access$200(Lcom/smartisanos/magicflow/view/WelcomeView;)Lcom/smartisanos/magicflow/view/WelcomeView$OnWelcomeViewDismissListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/WelcomeView$2;->this$0:Lcom/smartisanos/magicflow/view/WelcomeView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/WelcomeView;->access$200(Lcom/smartisanos/magicflow/view/WelcomeView;)Lcom/smartisanos/magicflow/view/WelcomeView$OnWelcomeViewDismissListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/smartisanos/magicflow/view/WelcomeView$OnWelcomeViewDismissListener;->onWelcomeViewDismiss()V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/WelcomeView$2;->this$0:Lcom/smartisanos/magicflow/view/WelcomeView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
