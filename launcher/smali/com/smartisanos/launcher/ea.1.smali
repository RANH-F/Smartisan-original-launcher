.class Lcom/smartisanos/launcher/ea;
.super Lcom/smartisanos/smengine/n;
.source "ApplicationProxy.java"


# instance fields
.field private final unlockSessionId:J

.field final synthetic this$0:Lcom/smartisanos/launcher/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ja;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/ea;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    invoke-static {}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->getSessionId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/launcher/ea;->unlockSessionId:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-wide v3, p0, Lcom/smartisanos/launcher/ea;->unlockSessionId:J

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->beginGlEvent(JZ)Z

    move-result v0

    if-nez v0, :unlock_prepare_current

    return-void

    :unlock_prepare_current

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "UnlockAnim,### init unlock anmiation ####"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/ub;->Mc()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "UnlockAnim,status can\'t handle TouchDown"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launcher status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ub;->Tc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/d;->Oj()V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->th()V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/ub;->Uc()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 9
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "UnlockAnim,### cancel previous uncompleted touch event while init unlock anmiation###"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->rh()V

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->wr()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Kd()Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->onPrepareReady(JZ)V

    .line 14
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    :cond_4
    return-void
.end method
