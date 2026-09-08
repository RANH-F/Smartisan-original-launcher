.class Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6$2;
.super Ljava/lang/Object;
.source "ExpressAccountRegisterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6$2;->this$1:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6$2;->this$1:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->access$202(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;Z)Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6$2;->this$1:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->access$300(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)Lsmartisan/widget/ShadowButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsmartisan/widget/ShadowButton;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6$2;->this$1:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->access$300(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)Lsmartisan/widget/ShadowButton;

    move-result-object v0

    const v1, 0x7f0d023c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method
