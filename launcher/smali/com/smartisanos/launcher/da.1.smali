.class Lcom/smartisanos/launcher/da;
.super Lcom/smartisanos/smengine/n;
.source "ApplicationProxy.java"


# instance fields
.field private final unlockSessionId:J

.field final synthetic this$0:Lcom/smartisanos/launcher/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ja;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/da;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    invoke-static {}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->getSessionId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/launcher/da;->unlockSessionId:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-wide v1, p0, Lcom/smartisanos/launcher/da;->unlockSessionId:J

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->beginGlForceFinish(J)Z

    move-result v0

    if-nez v0, :unlock_finish_current

    return-void

    :unlock_finish_current

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "### forceFinish unlock animation."

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Fd()V

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    :cond_1
    invoke-static {v1, v2}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->onForceFinishComplete(J)V

    return-void
.end method
