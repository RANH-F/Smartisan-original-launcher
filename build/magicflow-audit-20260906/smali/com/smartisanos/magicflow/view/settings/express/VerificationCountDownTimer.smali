.class public Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "VerificationCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer$CountDownTimer;
    }
.end annotation


# instance fields
.field private countDownTimer:Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer$CountDownTimer;


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method protected destory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer;->onFinish()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer;->countDownTimer:Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer$CountDownTimer;

    return-void
.end method

.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer;->countDownTimer:Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer$CountDownTimer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer$CountDownTimer;->onFinish()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer;->countDownTimer:Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer$CountDownTimer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer$CountDownTimer;->onTick(J)V

    :cond_0
    return-void
.end method

.method protected setCountDownTimer(Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer$CountDownTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer;->countDownTimer:Lcom/smartisanos/magicflow/view/settings/express/VerificationCountDownTimer$CountDownTimer;

    return-void
.end method
