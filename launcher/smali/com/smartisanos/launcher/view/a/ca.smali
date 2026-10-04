.class public Lcom/smartisanos/launcher/view/a/ca;
.super Ljava/lang/Object;
.source "CellOnDock.java"


# instance fields
.field private Qj:Lcom/smartisanos/launcher/view/a/g;

.field private log:Lcom/smartisanos/launcher/va;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/launcher/view/a/ca;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->log:Lcom/smartisanos/launcher/va;

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method


# virtual methods
.method public Bi()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 2
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    instance-of v1, v1, Lcom/smartisanos/launcher/view/b/M;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    instance-of v1, v1, Lcom/smartisanos/launcher/view/b/ka;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v3

    if-ne v1, v3, :cond_2

    if-eqz v0, :cond_2

    const v1, 0x3dcccccd    # 0.1f

    .line 6
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/mymaterial/u;

    .line 9
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/smartisanos/smengine/mymaterial/u;->setBlendColor(FFFF)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Lm()V

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public Ci()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 8
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/Z;->ga(Z)V

    .line 10
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Nm()V

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->SH:Lcom/smartisanos/smengine/i;

    return-void
.end method

.method public T(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->FH:Lcom/smartisanos/launcher/view/l;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/l;->T(Z)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method public create()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v1, v0, Lcom/smartisanos/launcher/view/a/g;->iH:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->ll()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0x1b

    aget-object v3, v1, v2

    if-eqz v3, :cond_1

    .line 7
    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v2, :cond_2

    const/4 v3, 0x5

    .line 12
    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->db(I)Lcom/smartisanos/smengine/F;

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->qb(I)V

    .line 14
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->iH:Z

    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->Oa(Z)V

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->gt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/launcher/view/a/g;->a(ILcom/smartisanos/smengine/Camera;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->db(Z)V

    # The original folder background occludes the entire Dock through depth testing.
    # Keep that state until the existing folder owner finishes closing.
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v0

    if-nez v0, :dock_projection_depth_ready

    # Visible Dock projections overlap; transparent texels must not occlude the next shadow.
    # db(false) restores the original state before this Dock-only override each frame.
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0x1b

    aget-object v0, v0, v3

    if-eqz v0, :dock_projection_depth_ready

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    :dock_projection_depth_ready
    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/g;->d(Lcom/smartisanos/smengine/Camera;)V

    .line 6
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/g;->b(Lcom/smartisanos/smengine/Camera;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v3, 0x10

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/g;->c(Lcom/smartisanos/smengine/Camera;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v4

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v4

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/g;->c(Lcom/smartisanos/smengine/Camera;)V

    .line 16
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0x8

    aget-object v2, v0, v1

    if-eqz v2, :cond_6

    .line 20
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->_m()V

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v2

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    :cond_7
    return-void
.end method

.method public init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x2

    iput v1, v0, Lcom/smartisanos/launcher/view/a/g;->VH:I

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    .line 3
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->FH:Lcom/smartisanos/launcher/view/l;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/d;->Rg()Lcom/smartisanos/smengine/ha;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setTouchListener(Lcom/smartisanos/smengine/ha;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->FH:Lcom/smartisanos/launcher/view/l;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/d;->Qg()Lcom/smartisanos/smengine/fa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setSingleTapListener(Lcom/smartisanos/smengine/fa;)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ca;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setCollideListener(Lcom/smartisanos/smengine/V;)V

    return-void
.end method
