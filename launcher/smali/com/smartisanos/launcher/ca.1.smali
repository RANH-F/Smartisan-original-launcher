.class Lcom/smartisanos/launcher/ca;
.super Lcom/smartisanos/smengine/n;
.source "ApplicationProxy.java"


# instance fields
.field private final unlockSessionId:J

.field final synthetic this$0:Lcom/smartisanos/launcher/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ja;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/ca;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    invoke-static {}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->getSessionId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/launcher/ca;->unlockSessionId:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-wide v1, p0, Lcom/smartisanos/launcher/ca;->unlockSessionId:J

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->beginGlEvent(JZ)Z

    move-result v0

    if-nez v0, :unlock_play_current

    return-void

    :unlock_play_current

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "### play unlock animation."

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    if-eqz p0, :unlock_play_done

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    # maintained play event initializes the original scene before playing.
    if-eqz p0, :unlock_play_done

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->wr()V

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->onOriginalPlayDispatched(J)V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Lr()V

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    :unlock_play_done
    return-void
.end method
