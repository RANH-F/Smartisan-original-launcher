.class Lcom/smartisanos/launcher/animations/c/b;
.super Lcom/smartisanos/smengine/a;
.source "UnlockAnimationXML.java"


# instance fields
.field private final unlockSessionId:J

.field final synthetic dB:Lcom/smartisanos/launcher/view/b/M;

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/c/k;

.field private time:J


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/c/k;Lcom/smartisanos/launcher/view/b/M;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/c/b;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/c/b;->dB:Lcom/smartisanos/launcher/view/b/M;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    invoke-static {}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->getRenderSessionId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/launcher/animations/c/b;->unlockSessionId:J

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcom/smartisanos/launcher/animations/c/b;->time:J

    return-void
.end method


# virtual methods
.method public Fj()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/b;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/animations/c/k;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "UnlockAnim, UnlockAnimationXML ============== onKill"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "I don\'t know where call onKill"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onComplete()V
    .locals 8

    invoke-static {}, Lcom/smartisanos/launcher/diagnostics/AnimationTimingDiagnostics;->onUnlockAnimationFinished()V

    iget-wide v0, p0, Lcom/smartisanos/launcher/animations/c/b;->unlockSessionId:J

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->onUnlockAnimationFinished(J)V

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/animations/c/k;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnlockAnim, UnlockAnimationXML ============== onComplete, cell size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/c/b;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    .line 3
    invoke-static {v3}, Lcom/smartisanos/launcher/animations/c/k;->h(Lcom/smartisanos/launcher/animations/c/k;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", theme:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/theme/v;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/animations/c/k;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnlockAnim, currentTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/c/b;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v3, v3, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/g;->Lj()Laurelienribon/tweenengine/h;

    move-result-object v3

    invoke-virtual {v3}, Laurelienribon/tweenengine/b;->getCurrentTime()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/c/b;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v3, v3, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    .line 6
    invoke-virtual {v3}, Lcom/smartisanos/smengine/g;->Lj()Laurelienribon/tweenengine/h;

    move-result-object v3

    invoke-virtual {v3}, Laurelienribon/tweenengine/b;->getDuration()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/animations/c/k;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnlockAnim, spend time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/smartisanos/launcher/animations/c/b;->time:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    mul-float/2addr v3, v1

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/c/b;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/c/k;->h(Lcom/smartisanos/launcher/animations/c/k;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_1

    .line 10
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/c/b;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v3}, Lcom/smartisanos/launcher/animations/c/k;->h(Lcom/smartisanos/launcher/animations/c/k;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 11
    invoke-virtual {v3, v1, v1, v1, v1}, Lcom/smartisanos/launcher/view/a/g;->setColor(FFFF)V

    .line 12
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 13
    iget v7, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v3, v7, v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 14
    invoke-virtual {v3, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 15
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const v4, 0x8000

    .line 16
    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    const/16 v4, 0x11

    .line 17
    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 20
    iget v6, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v2, v6, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 21
    invoke-virtual {v2, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 22
    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/smartisanos/launcher/view/V;->setColor(FFFF)V

    .line 23
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 24
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Jo()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    .line 25
    invoke-virtual {v3, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 26
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 27
    invoke-virtual {v3, v1, v1, v1, v1}, Lcom/smartisanos/launcher/view/a/g;->setColor(FFFF)V

    .line 28
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 29
    iget v7, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v3, v7, v6, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 30
    invoke-virtual {v3, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    goto :goto_1

    .line 31
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Fh()Lcom/smartisanos/launcher/view/hc;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 32
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 33
    iget v6, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v2, v6, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 34
    invoke-virtual {v2, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 35
    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/smartisanos/launcher/view/hc;->setColor(FFFF)V

    .line 36
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 37
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 38
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v3

    .line 39
    iget v6, v3, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v3, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v2, v6, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 40
    invoke-virtual {v2, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 41
    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/smartisanos/launcher/view/Lc;->setColor(FFFF)V

    .line 42
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Lc;->updateGeometricState()V

    .line 43
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 44
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 45
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/c/b;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->h(Lcom/smartisanos/launcher/animations/c/k;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 46
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 47
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 48
    :cond_5
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/animations/c/k;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnlockAnim complete, Constants.sIsGaussianTheme:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", Constants.isTransparentTheme:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 49
    :cond_6
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_9

    .line 50
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/view/Lc;->rb(Z)V

    .line 51
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/view/V;->rb(Z)V

    .line 52
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/view/V;->kb(Z)V

    .line 53
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Fh()Lcom/smartisanos/launcher/view/hc;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 54
    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/view/hc;->rb(Z)V

    .line 55
    :cond_7
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/c/b;->dB:Lcom/smartisanos/launcher/view/b/M;

    instance-of v3, v2, Lcom/smartisanos/launcher/view/b/ka;

    if-eqz v3, :cond_8

    .line 56
    check-cast v2, Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/view/b/ka;->rb(Z)V

    .line 57
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 58
    :cond_9
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/c/b;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->i(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 59
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/c/b;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->i(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/c;

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/c;->sb(Z)V

    .line 60
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/c/b;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/c/k;->i(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/c;

    invoke-virtual {v2, v0, v1}, Lcom/smartisanos/launcher/view/c;->c(ZF)V

    .line 61
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/c/b;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/c/k;->i(Lcom/smartisanos/launcher/animations/c/k;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->sn()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/c;

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 62
    :cond_a
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/J;->k(Z)V

    .line 63
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/p;->La(I)V

    .line 64
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/c/b;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    iget-object v1, v1, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_b

    .line 65
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    goto :goto_2

    .line 66
    :cond_b
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/smartisanos/launcher/animations/c/k;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v1

    const-string v2, "UnlockAnim, timeline = null, why?"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 67
    :cond_c
    :goto_2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/b;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/smartisanos/launcher/animations/c/k;->Mn:Lcom/smartisanos/smengine/g;

    .line 68
    invoke-static {p0, v1}, Lcom/smartisanos/launcher/animations/c/k;->a(Lcom/smartisanos/launcher/animations/c/k;Lcom/smartisanos/launcher/view/b/M;)Lcom/smartisanos/launcher/view/b/M;

    .line 69
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 v1, 0x20000

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 70
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 71
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 72
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_d

    invoke-static {}, Lcom/smartisanos/launcher/animations/c/k;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "UnlockAnim, UnlockAnimationXML onComplete over"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-static {}, Lcom/smartisanos/launcher/diagnostics/AnimationTimingDiagnostics;->onUnlockAnimationStarted()V

    iget-wide v0, p0, Lcom/smartisanos/launcher/animations/c/b;->unlockSessionId:J

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->onUnlockAnimationStarted(J)V

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/animations/c/k;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "UnlockAnim, UnlockAnimationXML ============== onStart"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/launcher/animations/c/b;->time:J

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    return-void
.end method
