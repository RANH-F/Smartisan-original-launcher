.class Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6$1;
.super Ljava/lang/Object;
.source "ExpressAccountRegisterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;->onTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;

.field final synthetic val$millisUntilFinished:J


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6$1;->this$1:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;

    iput-wide p2, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6$1;->val$millisUntilFinished:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6$1;->this$1:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->access$300(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)Lsmartisan/widget/ShadowButton;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6$1;->val$millisUntilFinished:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
