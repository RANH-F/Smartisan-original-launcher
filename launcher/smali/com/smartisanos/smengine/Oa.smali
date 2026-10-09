.class Lcom/smartisanos/smengine/Oa;
.super Ljava/lang/Object;
.source "World.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public running:Z
.field public suspended:Z
.field public volatile hasSample:Z
.field public volatile currentLux:F
.field public duration:I

.field public mU:F

.field public nU:F

.field public volatile start:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/Oa;->duration:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/smartisanos/smengine/Oa;->start:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/Ka;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/smengine/Oa;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ub;->Rc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :cond_0
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "some status error. shadowLenUpdate return"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ub;->Sc()V

    # Keep the interrupted interpolation; Qa resumes it when the scene accepts updates.
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->resumeShadowOwner()Lcom/smartisanos/smengine/Oa;
    move-result-object v0
    const/4 v1, 0x1
    iput-boolean v1, v0, Lcom/smartisanos/smengine/Oa;->suspended:Z
    return-void

    .line 8
    :cond_2
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Oa;->suspended:Z
    iget v0, p0, Lcom/smartisanos/smengine/Oa;->start:I

    .line 9
    iget v1, p0, Lcom/smartisanos/smengine/Oa;->start:I

    add-int/lit8 v1, v1, 0x10

    .line 10
    iget v2, p0, Lcom/smartisanos/smengine/Oa;->duration:I

    if-le v0, v2, :cond_3

    if-le v1, v2, :cond_3

    const/4 v0, 0x0
    iput v0, p0, Lcom/smartisanos/smengine/Oa;->start:I
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Oa;->running:Z
    return-void

    .line 12
    :cond_3
    iget v0, p0, Lcom/smartisanos/smengine/Oa;->start:I

    int-to-float v0, v0

    iget v2, p0, Lcom/smartisanos/smengine/Oa;->duration:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_4

    move v0, v2

    .line 13
    :cond_4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->ae()Lcom/smartisanos/smengine/Ma;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/Ma;->getInterpolation(F)F

    move-result v0

    .line 14
    iput v1, p0, Lcom/smartisanos/smengine/Oa;->start:I

    .line 15
    iget v1, p0, Lcom/smartisanos/smengine/Oa;->nU:F

    iget v3, p0, Lcom/smartisanos/smengine/Oa;->mU:F

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    .line 16
    iput v0, p0, Lcom/smartisanos/smengine/Oa;->currentLux:F
    invoke-static {v0}, Lcom/smartisanos/smengine/Ra;->S(F)F

    move-result v1

    float-to-double v3, v1

    const-wide v5, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v3, v3, v5

    const/4 v4, 0x0

    if-gez v3, :cond_5

    move v1, v4

    :cond_5
    cmpl-float v3, v1, v2

    if-lez v3, :cond_6

    move v1, v2

    .line 17
    :cond_6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->tt()Z

    move-result v2

    if-eqz v2, :cond_7

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_7
    const v2, 0x3f333333    # 0.7f

    .line 18
    :goto_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v3

    mul-float/2addr v2, v1

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/Ra;->V(F)V
    iget v3, p0, Lcom/smartisanos/smengine/Oa;->start:I
    invoke-static {v0, v2, v3}, Lcom/smartisanos/launcher/theme/IconIlluminationCompat;->traceLightFrame(FFI)V

    .line 19
    invoke-static {}, Lcom/smartisanos/smengine/n;->obtain()Lcom/smartisanos/smengine/n;

    move-result-object v2

    .line 20
    invoke-virtual {v2, p0}, Lcom/smartisanos/smengine/n;->j(Ljava/lang/Runnable;)V

    .line 21
    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 22
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateNeedDisplay()V

    .line 23
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->wt()V

    .line 24
    sget-boolean v2, Lcom/smartisanos/smengine/Ra;->dV:Z

    if-eqz v2, :cond_8

    .line 25
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentlight alpha = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", start = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/smengine/Oa;->start:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fl = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/smengine/Oa;->mU:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", tl = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/smengine/Oa;->nU:F

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", light = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_8
    return-void
.end method
