.class Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;
.super Ljava/lang/Object;
.source "ExpressAccountRegisterView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer$CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;->sendVerificationCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;->this$0:Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6$2;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6$1;-><init>(Lcom/smartisanos/magicflow/view/settings/express/ExpressAccountRegisterView$6;J)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
