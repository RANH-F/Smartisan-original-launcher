.class public Lcom/smartisanos/launcher/view/a/ga;
.super Ljava/lang/Object;
.source "CellOnPage.java"


# instance fields
.field protected Qj:Lcom/smartisanos/launcher/view/a/g;

.field protected Zy:Lcom/smartisanos/launcher/view/a/pa;

.field protected _y:Z

.field protected az:Lcom/smartisanos/smengine/a/k;

.field protected bz:Lcom/smartisanos/smengine/a/k;

.field protected cz:Lcom/smartisanos/smengine/a/k;

.field protected dz:Lcom/smartisanos/smengine/a/k;

.field protected ez:Z

.field protected fz:Z

.field private log:Lcom/smartisanos/launcher/va;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/launcher/view/a/ga;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/a/ga;->_y:Z

    .line 4
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->az:Lcom/smartisanos/smengine/a/k;

    .line 5
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v3, v3, v2, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->bz:Lcom/smartisanos/smengine/a/k;

    .line 6
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v2, v3, v3, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->cz:Lcom/smartisanos/smengine/a/k;

    .line 7
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, v2, v3, v3, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->dz:Lcom/smartisanos/smengine/a/k;

    .line 8
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/a/ga;->ez:Z

    .line 9
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/a/ga;->fz:Z

    .line 10
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method private Xc(I)Lcom/smartisanos/smengine/F;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, p1

    check-cast v1, Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 3
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    .line 4
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Am()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr v2, v0

    add-float/2addr v1, v0

    .line 5
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v0, p1

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3, v0}, Lcom/smartisanos/smengine/F;->c(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    const-string v1, "TextureModularColorMaterial"

    .line 6
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    .line 7
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 8
    invoke-virtual {p1, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 10
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    const/4 v2, 0x2

    .line 12
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    const-string v1, "brick_up_overlay.png"

    .line 13
    invoke-static {v1, v0}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v1, v1, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 17
    iget v0, v0, Lcom/smartisanos/launcher/view/jb;->Iv:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 18
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-object p1
.end method

.method private Yc(I)Lcom/smartisanos/smengine/F;
    .locals 5

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v3, v2}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    const-string v0, "TextureModularColorMaterial"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/L;->Va(I)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/f;->r(IZ)V

    .line 6
    new-instance v3, Lcom/smartisanos/smengine/Ca;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v2, v2, v2}, Lcom/smartisanos/smengine/Ca;-><init>(IIII)V

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v1, v1, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 8
    iget v0, v0, Lcom/smartisanos/launcher/view/jb;->Gv:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/Z;->a(Lcom/smartisanos/smengine/y;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/view/a/ga;->h(Lcom/smartisanos/smengine/SceneNode;Z)V

    return-object p1
.end method

.method private Zc(I)Lcom/smartisanos/smengine/F;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, p1

    check-cast v0, Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    :cond_0
    const-string v0, "brick_unselect.png"

    .line 3
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v2, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v2, p1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v2, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v4, v5

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    sub-float/2addr v3, v5

    iget v2, v2, Lcom/smartisanos/launcher/view/a/g;->WG:F

    invoke-static {p1, v4, v3, v2, v1}, Lcom/smartisanos/smengine/F;->c(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    const-string v2, "TextureModularColorMaterial"

    .line 5
    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    .line 6
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {p1, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    .line 12
    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    const/4 v2, 0x2

    .line 14
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 16
    iget v1, v0, Lcom/smartisanos/launcher/view/a/g;->_G:I

    iget v0, v0, Lcom/smartisanos/launcher/view/a/g;->aH:I

    invoke-virtual {v2, v1, v0}, Lcom/smartisanos/smengine/N;->q(II)Lcom/smartisanos/smengine/Ga;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v2

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v4

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v0

    invoke-virtual {p1, v1, v2, v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    .line 18
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 21
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v1, v1, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 22
    iget v0, v0, Lcom/smartisanos/launcher/view/jb;->Yv:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 24
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-object p1
.end method

.method private _c(I)Lcom/smartisanos/smengine/F;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, p1

    check-cast v1, Lcom/smartisanos/smengine/F;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, p1, v2}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    :cond_0
    const-string v0, "brick_unselect.png"

    .line 3
    invoke-static {v0, v2}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v1, p1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v4, v5

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    sub-float/2addr v3, v5

    iget v1, v1, Lcom/smartisanos/launcher/view/a/g;->WG:F

    invoke-static {p1, v4, v3, v1, v2}, Lcom/smartisanos/smengine/F;->c(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    const-string v1, "TextureModularColorMaterial"

    .line 5
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    .line 6
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {p1, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 10
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 11
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    new-instance v2, Lcom/smartisanos/smengine/a/k;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->b(Lcom/smartisanos/smengine/a/k;)V

    .line 12
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 13
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v2, v2, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 15
    iget v0, v0, Lcom/smartisanos/launcher/view/jb;->Xv:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v0, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/a/ga;)Lcom/smartisanos/launcher/va;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->log:Lcom/smartisanos/launcher/va;

    return-object p0
.end method

.method private ad(I)Lcom/smartisanos/smengine/SceneNode;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v1, :cond_2

    .line 2
    sget-object v1, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v1, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v0, v1, v2}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    const-string v0, "TextureModularColorMaterial"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v1

    .line 6
    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    invoke-static {v1, v2, v3}, Lcom/smartisanos/launcher/pb;->a(IZLcom/smartisanos/launcher/data/Constants$IconType;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v3, v1, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    invoke-virtual {v1, p1, v3}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/f;->r(IZ)V

    .line 12
    new-instance v3, Lcom/smartisanos/smengine/Ca;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v2, v2, v2}, Lcom/smartisanos/smengine/Ca;-><init>(IIII)V

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y:I

    int-to-float v2, v2

    .line 15
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-nez v3, :cond_0

    .line 16
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_offset_y_without_app_name:I

    int-to-float v2, v1

    :cond_0
    if-eqz p1, :cond_1

    .line 17
    iget v1, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p1, v1, v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 18
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateWorldTransforms()V

    .line 19
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object p0

    .line 20
    iget p0, p0, Lcom/smartisanos/launcher/view/jb;->Lv:I

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private bd(I)Lcom/smartisanos/smengine/F;
    .locals 5

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, p1

    check-cast v1, Lcom/smartisanos/smengine/F;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->c(Lcom/smartisanos/smengine/SceneNode;Z)V

    :cond_1
    const-string v0, "brick_selected_bg.png"

    .line 4
    invoke-static {v0, v2}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v1, p1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v1, v1, Lcom/smartisanos/launcher/view/a/g;->WG:F

    invoke-static {p1, v4, v3, v1, v2}, Lcom/smartisanos/smengine/F;->c(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    const-string v1, "TextureModularColorMaterial"

    .line 6
    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v1

    .line 7
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {p1, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 11
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 12
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v1, v1, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 15
    iget v0, v0, Lcom/smartisanos/launcher/view/jb;->Kv:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 16
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-object p1
.end method

.method private cd(I)Lcom/smartisanos/smengine/F;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, p1

    check-cast v1, Lcom/smartisanos/smengine/F;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->c(Lcom/smartisanos/smengine/SceneNode;Z)V

    :cond_0
    const/4 v0, 0x0

    const-string v1, "brick_selected_new.png"

    .line 3
    invoke-static {v1, v0}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Kl()F

    move-result v3

    .line 5
    sget-object v4, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v4, p1

    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v4, v4, Lcom/smartisanos/launcher/view/a/g;->WG:F

    invoke-static {p1, v3, v3, v4, v2}, Lcom/smartisanos/smengine/F;->c(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    const-string v3, "TextureModularColorMaterial"

    .line 6
    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    .line 7
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 8
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, p1, v0}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {p1, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 11
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 12
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v1, v1, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v0

    .line 15
    iget v0, v0, Lcom/smartisanos/launcher/view/jb;->Wv:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Il()F

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Jl()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 17
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-object p1
.end method

.method private dd(I)Lcom/smartisanos/smengine/F;
    .locals 5

    const/4 v0, 0x1

    const-string v1, "brick_unselect.png"

    .line 1
    invoke-static {v1, v0}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v2, p1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v2, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v2, v2, Lcom/smartisanos/launcher/view/a/g;->WG:F

    invoke-static {p1, v4, v3, v2, v0}, Lcom/smartisanos/smengine/F;->c(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    const-string v2, "TextureModularColorMaterial"

    .line 3
    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    .line 4
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p1, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 7
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 8
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    .line 9
    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 10
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 11
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 13
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object p0

    .line 16
    iget p0, p0, Lcom/smartisanos/launcher/view/jb;->Xv:I

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-object p1
.end method

.method private ed(I)Lcom/smartisanos/smengine/F;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, p1

    check-cast v1, Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/aa;->p(Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/smengine/a/i;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v1, p1

    iget v1, v0, Lcom/smartisanos/smengine/a/i;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/i;->y:F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v3, v2}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    const-string v0, "TextureModularColorMaterial"

    .line 6
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    const-string v0, "brick_up_shadow.png"

    .line 9
    invoke-static {v0, v2}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v0, v0, Lcom/smartisanos/launcher/view/a/g;->WG:F

    invoke-virtual {p1, v3, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 12
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object p0

    .line 16
    iget p0, p0, Lcom/smartisanos/launcher/view/jb;->Fv:I

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-object p1
.end method

.method private fd(I)Lcom/smartisanos/smengine/F;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, p1

    check-cast v1, Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v1, p1

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v1, v0, v2, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    const-string v0, "TextureModularColorMaterial"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 7
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    return-object p1
.end method

.method private gd(I)Lcom/smartisanos/smengine/F;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, p1

    check-cast v1, Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    aget-object p1, v1, p1

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    iget v0, v0, Lcom/smartisanos/launcher/view/a/g;->WG:F

    const/4 v3, 0x1

    invoke-static {p1, v2, v1, v0, v3}, Lcom/smartisanos/smengine/F;->c(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p1

    const-string v0, "InnerShadowColorMaterial"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Da(Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 10
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget p0, p0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object p0

    .line 12
    iget p0, p0, Lcom/smartisanos/launcher/view/jb;->_v:I

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    return-object p1
.end method

.method private h(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/Z;->d(Lcom/smartisanos/smengine/SceneNode;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Bi()V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/16 v1, 0xa

    const/16 v2, 0xf

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v7, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v7, v7, v4

    if-nez v7, :cond_0

    .line 3
    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v3

    if-nez v4, :cond_1

    .line 5
    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    .line 7
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    .line 9
    aget-object v0, v0, v1

    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v0, v6

    if-eqz v1, :cond_a

    .line 11
    aget-object v0, v0, v6

    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto/16 :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v7, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v8, v7, v4

    const/4 v9, 0x1

    if-eqz v8, :cond_5

    .line 13
    aget-object v4, v7, v4

    invoke-virtual {v0, v4, v9}, Lcom/smartisanos/launcher/view/a/g;->c(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v4, 0x80

    invoke-virtual {v0, v4, v6}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v7, v4, v3

    if-eqz v7, :cond_6

    .line 16
    aget-object v3, v4, v3

    invoke-virtual {v0, v3, v9}, Lcom/smartisanos/launcher/view/a/g;->c(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v3, 0x100

    invoke-virtual {v0, v3, v6}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v3, v2

    if-eqz v4, :cond_7

    .line 19
    aget-object v2, v3, v2

    invoke-virtual {v0, v2, v9}, Lcom/smartisanos/launcher/view/a/g;->c(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/launcher/view/b/M;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/launcher/view/b/ka;

    if-eqz v0, :cond_a

    .line 21
    :cond_8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v0

    if-ne v9, v0, :cond_a

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v0, v1

    const v3, 0x3dcccccd    # 0.1f

    if-eqz v2, :cond_9

    .line 23
    aget-object v0, v0, v1

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 24
    :cond_9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v0, v6

    if-eqz v1, :cond_a

    .line 25
    aget-object v0, v0, v6

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 26
    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v0, v6

    if-eqz v1, :cond_b

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 27
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/mymaterial/u;

    .line 28
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    invoke-virtual {v0, v1, v1, v1, v5}, Lcom/smartisanos/smengine/mymaterial/u;->setBlendColor(FFFF)V

    .line 29
    :cond_b
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/ga;->Li()V

    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Lm()V

    .line 31
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public Di()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    sget v1, Lcom/smartisanos/launcher/view/a/g;->qI:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->eb(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    sget v1, Lcom/smartisanos/launcher/view/a/g;->qI:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->Za(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x80

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/ga;->Hi()V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 6
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/ec;->B(Lcom/smartisanos/launcher/view/a/g;)I

    move-result p0

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/Eb;->ya(I)V

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public Ea(I)Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/ga;->Yc(I)Lcom/smartisanos/smengine/F;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/ga;->Zc(I)Lcom/smartisanos/smengine/F;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/16 v0, 0xe

    if-ne p1, v0, :cond_2

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/ga;->_c(I)Lcom/smartisanos/smengine/F;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/16 v0, 0xf

    if-ne p1, v0, :cond_3

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/ga;->dd(I)Lcom/smartisanos/smengine/F;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/16 v0, 0x11

    if-ne p1, v0, :cond_4

    .line 5
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/ga;->gd(I)Lcom/smartisanos/smengine/F;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/16 v0, 0x12

    if-ne p1, v0, :cond_5

    .line 6
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/ga;->Xc(I)Lcom/smartisanos/smengine/F;

    move-result-object p0

    goto :goto_0

    :cond_5
    const/16 v0, 0x10

    if-ne p1, v0, :cond_6

    .line 7
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/ga;->ed(I)Lcom/smartisanos/smengine/F;

    move-result-object p0

    goto :goto_0

    :cond_6
    const/16 v0, 0x13

    if-ne p1, v0, :cond_7

    .line 8
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/ga;->cd(I)Lcom/smartisanos/smengine/F;

    move-result-object p0

    goto :goto_0

    :cond_7
    const/16 v0, 0x14

    if-ne p1, v0, :cond_8

    .line 9
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/ga;->bd(I)Lcom/smartisanos/smengine/F;

    move-result-object p0

    goto :goto_0

    :cond_8
    const/16 v0, 0x15

    if-ne p1, v0, :cond_9

    .line 10
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/ga;->fd(I)Lcom/smartisanos/smengine/F;

    move-result-object p0

    goto :goto_0

    :cond_9
    const/16 v0, 0xb

    if-ne p1, v0, :cond_a

    .line 11
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/a/ga;->ad(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    goto :goto_0

    :cond_a
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public Ei()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    sget v1, Lcom/smartisanos/launcher/view/a/g;->qI:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->eb(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    sget v1, Lcom/smartisanos/launcher/view/a/g;->qI:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->Za(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x80

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/ga;->Hi()V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 6
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    :cond_1
    return-void
.end method

.method public Fi()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/F;

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v2, v2, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object v1

    .line 3
    iget v1, v1, Lcom/smartisanos/launcher/view/jb;->Hv:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public Gi()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Zy:Lcom/smartisanos/launcher/view/a/pa;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/pa;->Gi()V

    :cond_0
    return-void
.end method

.method public Hi()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x1

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->h(IZ)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    return-void
.end method

.method public Ii()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v0, 0xf

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 2
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    :cond_0
    return-void
.end method

.method public Ji()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/a/ga;->_y:Z

    return p0
.end method

.method public Ki()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/a/ga;->fz:Z

    return p0
.end method

.method public Li()V
    .locals 5

    # Hand the actual incoming raster to the desktop before removing the cube.
    # Active icons and legacy/special textures keep their original handoff.
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Zy:Lcom/smartisanos/launcher/view/a/pa;

    if-eqz v0, :cond_static_handoff_done

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/pa;->getStaticTargetTextureName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_static_handoff_done

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/a/g;->La(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_static_handoff_done

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    :cond_static_handoff_done
    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/ga;->ka(Z)V

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v2, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    const-string v4, "target/--/"

    if-eqz v3, :cond_1

    .line 4
    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 5
    sput-object v4, Lcom/smartisanos/smengine/Da;->sT:Ljava/lang/String;

    .line 6
    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Mc;

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/smartisanos/smengine/Da;->a(Ljava/lang/String;Landroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    const-string v0, ""

    .line 8
    sput-object v0, Lcom/smartisanos/smengine/Da;->sT:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "### is folder cell, do not delete texture??"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Ne()Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 14
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/Ea;->cb(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v0, v3}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Ea;->cb(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->Ka(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->wt()V

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Zy:Lcom/smartisanos/launcher/view/a/pa;

    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/pa;->destroy()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Zy:Lcom/smartisanos/launcher/view/a/pa;

    :cond_2
    return-void
.end method

.method public Mi()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v1

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v3

    invoke-static {v1, v3}, Lcom/smartisanos/launcher/view/b/M;->w(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->Ka(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v2

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    :cond_0
    return-void
.end method

.method public Ni()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    sget v1, Lcom/smartisanos/launcher/view/a/g;->qI:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->jb(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/ga;->na(Z)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x1

    const/16 v3, 0x40

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 5
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/ec;->A(Lcom/smartisanos/launcher/view/a/g;)I

    move-result v0

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/Eb;->ya(I)V

    .line 10
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->wn()Lcom/smartisanos/smengine/a/k;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v4, 0x13

    aget-object v5, v3, v4

    if-eqz v5, :cond_1

    .line 13
    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    iget v5, v1, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v5, v5

    iget v6, v1, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v6, v6

    iget v7, v1, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v7, v7

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int v1, v1

    invoke-virtual {v3, v5, v6, v7, v1}, Lcom/smartisanos/smengine/L;->d(IIII)V

    .line 14
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    :cond_1
    return v0
.end method

.method public Oi()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0xf

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    :cond_0
    return-void
.end method

.method public Pi()V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v1, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v2, :cond_8

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v1

    const/16 v3, 0x200

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_3

    .line 3
    :cond_1
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 5
    :cond_2
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v5, 0x10

    invoke-virtual {v1, v5, v4}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 7
    :cond_3
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    const/16 v4, 0x800

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/a/X;->Aa(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->kill()V

    return-void

    .line 9
    :cond_4
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 11
    :cond_5
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    new-instance v4, Lcom/smartisanos/smengine/g;

    invoke-direct {v4}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v4, v1, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    .line 12
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v6, v4, v5

    sget v7, Lcom/smartisanos/launcher/view/a/g;->Ny:F

    mul-float v10, v6, v7

    mul-float/2addr v4, v5

    const v6, 0x3dcccccd    # 0.1f

    mul-float v11, v4, v6

    .line 13
    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v10, v10, v4}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 14
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 15
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v8, v1, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    const/4 v9, 0x0

    const/4 v12, 0x0

    iget-object v13, v8, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    const/16 v14, 0xe

    const/4 v15, 0x1

    const v16, 0x3e19999a    # 0.15f

    invoke-virtual/range {v8 .. v16}, Lcom/smartisanos/launcher/view/a/X;->a(ZFFFLcom/smartisanos/smengine/g;IZF)V

    .line 16
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v1, Lcom/smartisanos/launcher/view/a/g;->cI:Lcom/smartisanos/smengine/a/j;

    iget v6, v2, Lcom/smartisanos/smengine/a/j;->x:F

    move/from16 v16, v6

    iget-object v9, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_side_length_2_2:I

    iget v8, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_horizontal_space_2_2:I

    add-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    sget v11, Lcom/smartisanos/launcher/view/a/g;->Ny:F

    mul-float/2addr v8, v11

    sub-float v13, v6, v8

    .line 17
    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    move/from16 v17, v2

    iget v6, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_vertical_space_2_2:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v10

    mul-float/2addr v6, v11

    add-float v14, v2, v6

    const/16 v18, 0x0

    int-to-float v2, v7

    mul-float/2addr v2, v5

    mul-float v8, v2, v11

    move v7, v8

    .line 18
    iget v2, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    mul-float v10, v2, v5

    mul-float v11, v2, v5

    .line 19
    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    move-object v6, v1

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v19, 0x0

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    move-object/from16 v20, v1

    const/16 v21, 0xe

    const v22, 0x3e99999a    # 0.3f

    invoke-virtual/range {v6 .. v22}, Lcom/smartisanos/launcher/view/a/X;->a(FFFFFFFFFFFFFLcom/smartisanos/smengine/g;IF)V

    .line 20
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v5, 0x5

    aget-object v2, v2, v5

    const/4 v6, 0x0

    const v7, 0x3e99999a    # 0.3f

    const/16 v8, 0xe

    const/4 v9, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v1, :cond_6

    .line 21
    new-instance v1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 22
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v2, v9, v9, v9, v9}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    new-instance v10, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v10, v4, v4, v4, v4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {v1, v2, v10, v8, v7}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 23
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v5

    invoke-static {v2, v1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/oa;->ta(Z)V

    .line 25
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v9, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 26
    :cond_6
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v5, 0x3

    aget-object v2, v2, v5

    if-eqz v2, :cond_7

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 27
    new-instance v1, Lcom/smartisanos/launcher/animations/s;

    invoke-direct {v1}, Lcom/smartisanos/launcher/animations/s;-><init>()V

    .line 28
    new-instance v2, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v2, v9, v9, v9, v9}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    new-instance v3, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v3, v4, v4, v4, v4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    invoke-virtual {v1, v2, v3, v8, v7}, Lcom/smartisanos/launcher/animations/s;->a(Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;IF)V

    .line 29
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v5

    invoke-static {v2, v1}, Lcom/smartisanos/launcher/animations/t;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/launcher/animations/s;)Lcom/smartisanos/smengine/oa;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/oa;->ta(Z)V

    .line 31
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v2, v9, v1}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 32
    :cond_7
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/view/a/fa;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/a/fa;-><init>(Lcom/smartisanos/launcher/view/a/ga;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 33
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    .line 34
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    :cond_8
    :goto_0
    return-void
.end method

.method public Qi()V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v1, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 4
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x1

    const/16 v4, 0x800

    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 5
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 7
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 8
    :cond_2
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    new-instance v2, Lcom/smartisanos/smengine/g;

    invoke-direct {v2}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v2, v1, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    .line 9
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v6, v2, v5

    const v7, 0x3dcccccd    # 0.1f

    mul-float v10, v6, v7

    mul-float/2addr v2, v5

    .line 10
    sget v6, Lcom/smartisanos/launcher/view/a/g;->Ny:F

    mul-float v11, v2, v6

    .line 11
    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v10, v10, v2}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 12
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 13
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/launcher/view/a/X;->g(IZ)V

    .line 14
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v8, v1, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    const/4 v9, 0x1

    sget v12, Lcom/smartisanos/launcher/view/a/g;->Ly:F

    iget-object v13, v8, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    const/16 v14, 0xe

    const/4 v15, 0x1

    const v16, 0x3e19999a    # 0.15f

    invoke-virtual/range {v8 .. v16}, Lcom/smartisanos/launcher/view/a/X;->a(ZFFFLcom/smartisanos/smengine/g;IZF)V

    .line 15
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Cm()V

    .line 16
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v3, v2

    if-eqz v6, :cond_3

    .line 17
    aget-object v2, v3, v2

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->cI:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 18
    :cond_3
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v1, Lcom/smartisanos/launcher/view/a/g;->cI:Lcom/smartisanos/smengine/a/j;

    iget v3, v2, Lcom/smartisanos/smengine/a/j;->x:F

    move v13, v3

    iget-object v6, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v9, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_side_length_2_2:I

    iget v7, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_horizontal_space_2_2:I

    add-int/2addr v7, v9

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sget v11, Lcom/smartisanos/launcher/view/a/g;->Ny:F

    mul-float/2addr v7, v11

    sub-float v16, v3, v7

    .line 19
    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    move v14, v2

    iget v3, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_preview_icon_vertical_space_2_2:I

    add-int/2addr v3, v9

    int-to-float v3, v3

    div-float/2addr v3, v8

    mul-float/2addr v3, v11

    add-float/2addr v2, v3

    iget v3, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->folder_icon_center_offset_2_2:F

    add-float v17, v2, v3

    const/16 v18, 0x0

    .line 20
    iget v2, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    mul-float v8, v2, v5

    move v7, v8

    int-to-float v2, v9

    mul-float/2addr v2, v5

    mul-float v10, v2, v11

    int-to-float v2, v9

    mul-float/2addr v2, v5

    mul-float/2addr v11, v2

    .line 21
    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    move-object v6, v1

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    sget v19, Lcom/smartisanos/launcher/view/a/g;->Ly:F

    .line 22
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/a/X;->getAnimation(I)Lcom/smartisanos/smengine/g;

    move-result-object v20

    const/16 v21, 0xe

    const v22, 0x3e99999a    # 0.3f

    .line 23
    invoke-virtual/range {v6 .. v22}, Lcom/smartisanos/launcher/view/a/X;->a(FFFFFFFFFFFFFLcom/smartisanos/smengine/g;IF)V

    .line 24
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    new-instance v2, Lcom/smartisanos/launcher/view/a/ea;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/view/a/ea;-><init>(Lcom/smartisanos/launcher/view/a/ga;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 25
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->JH:Lcom/smartisanos/launcher/view/a/X;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/X;->Gy:Lcom/smartisanos/smengine/g;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->start()V

    .line 26
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public Ri()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    if-eqz v1, :cond_8

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Wl()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    cmpg-float v4, v1, v0

    if-gtz v4, :cond_0

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->az:Lcom/smartisanos/smengine/a/k;

    iput v3, v1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 7
    iput v3, v1, Lcom/smartisanos/smengine/a/k;->y:F

    goto :goto_0

    :cond_0
    sub-float/2addr v1, v0

    div-float/2addr v1, v2

    .line 8
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/ga;->az:Lcom/smartisanos/smengine/a/k;

    iput v3, v4, Lcom/smartisanos/smengine/a/k;->x:F

    add-float/2addr v1, v3

    .line 9
    iput v1, v4, Lcom/smartisanos/smengine/a/k;->y:F

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->az:Lcom/smartisanos/smengine/a/k;

    iput v3, v1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 11
    iput v3, v1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->jm()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    cmpg-float v5, v1, v0

    if-gtz v5, :cond_2

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->az:Lcom/smartisanos/smengine/a/k;

    iput v4, v1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 15
    iput v4, v1, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_1

    :cond_2
    sub-float/2addr v1, v0

    div-float/2addr v1, v2

    .line 16
    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/ga;->az:Lcom/smartisanos/smengine/a/k;

    sub-float v1, v4, v1

    iput v1, v5, Lcom/smartisanos/smengine/a/k;->z:F

    .line 17
    iput v4, v5, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_1

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->az:Lcom/smartisanos/smengine/a/k;

    iput v4, v1, Lcom/smartisanos/smengine/a/k;->z:F

    .line 19
    iput v4, v1, Lcom/smartisanos/smengine/a/k;->w:F

    .line 20
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->nm()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    cmpg-float v5, v1, v0

    if-gtz v5, :cond_4

    .line 22
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->bz:Lcom/smartisanos/smengine/a/k;

    iput v3, v1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 23
    iput v3, v1, Lcom/smartisanos/smengine/a/k;->y:F

    goto :goto_2

    :cond_4
    sub-float/2addr v1, v0

    div-float/2addr v1, v2

    .line 24
    iget-object v5, p0, Lcom/smartisanos/launcher/view/a/ga;->bz:Lcom/smartisanos/smengine/a/k;

    iput v3, v5, Lcom/smartisanos/smengine/a/k;->x:F

    add-float/2addr v1, v3

    .line 25
    iput v1, v5, Lcom/smartisanos/smengine/a/k;->y:F

    goto :goto_2

    .line 26
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->bz:Lcom/smartisanos/smengine/a/k;

    iput v3, v1, Lcom/smartisanos/smengine/a/k;->x:F

    .line 27
    iput v3, v1, Lcom/smartisanos/smengine/a/k;->y:F

    .line 28
    :goto_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->El()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 29
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    cmpg-float v5, v1, v0

    if-gtz v5, :cond_6

    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->bz:Lcom/smartisanos/smengine/a/k;

    iput v4, v0, Lcom/smartisanos/smengine/a/k;->z:F

    .line 31
    iput v4, v0, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_3

    :cond_6
    sub-float/2addr v1, v0

    div-float/2addr v1, v2

    .line 32
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->bz:Lcom/smartisanos/smengine/a/k;

    sub-float v1, v4, v1

    iput v1, v0, Lcom/smartisanos/smengine/a/k;->z:F

    .line 33
    iput v4, v0, Lcom/smartisanos/smengine/a/k;->w:F

    goto :goto_3

    .line 34
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->bz:Lcom/smartisanos/smengine/a/k;

    iput v4, v0, Lcom/smartisanos/smengine/a/k;->z:F

    .line 35
    iput v4, v0, Lcom/smartisanos/smengine/a/k;->w:F

    .line 36
    :goto_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->cz:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v0, v4, v3, v3, v4}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 37
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->dz:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {v0, v4, v3, v3, v4}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    .line 38
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->az:Lcom/smartisanos/smengine/a/k;

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/smartisanos/launcher/view/a/ga;->setInnerShadowSize_H(FFFF)V

    .line 39
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->bz:Lcom/smartisanos/smengine/a/k;

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/smartisanos/launcher/view/a/ga;->setInnerShadowSize_V(FFFF)V

    .line 40
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->cz:Lcom/smartisanos/smengine/a/k;

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/smartisanos/launcher/view/a/ga;->setInnerShadowAlphaRange_H(FFFF)V

    .line 41
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->dz:Lcom/smartisanos/smengine/a/k;

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/smartisanos/launcher/view/a/ga;->setInnerShadowAlphaRange_V(FFFF)V

    :cond_8
    return-void
.end method

.method protected a(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/view/a/ha;->gz:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/a/ga;->h(Lcom/smartisanos/smengine/SceneNode;Z)V

    :cond_0
    return-void
.end method

.method public a(ZII)V
    .locals 3

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "setUseBackgroundUVGaussian Background is null."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    const-string p1, "TwoTexDifferentTexcoordMaterial"

    .line 8
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 11
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz p1, :cond_3

    const-string p1, "background.png"

    .line 12
    invoke-static {p1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "t_blur_background"

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 14
    :goto_0
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 15
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "multigaussian_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "long.press.blur"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/Z;->Xy:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string p1, "TextureModularColorMaterial"

    .line 16
    invoke-static {p1}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 19
    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Eb;->wh()Lcom/smartisanos/smengine/y;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/SceneNode;->updateMesh(Lcom/smartisanos/smengine/y;)V

    .line 21
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 22
    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean p2, p2, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    invoke-direct {p0, v0, p2}, Lcom/smartisanos/launcher/view/a/ga;->h(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 23
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/Z;->Xy:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public b(FFFF)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/ArrayList;)Lcom/smartisanos/launcher/view/a/g;
    .locals 10

    if-eqz p1, :cond_14

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_14

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/Da;->L(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/smartisanos/launcher/data/FolderInfo;

    if-nez v1, :cond_13

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v3

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v4

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v8, 0x0

    move v2, v8

    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 10
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    .line 11
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v2

    .line 13
    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    const/4 v9, 0x0

    if-nez v0, :cond_2

    .line 14
    new-instance v2, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/ItemInfo;-><init>()V

    .line 15
    invoke-static {v3, v4}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v5

    iput v5, v2, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v5

    iget-object v7, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 17
    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v5, v7}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v5

    iput v5, v2, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    goto :goto_1

    :cond_2
    move-object v2, v9

    :goto_1
    if-eqz v0, :cond_3

    move-object v2, v0

    :cond_3
    const/4 v7, 0x1

    move-object v5, v1

    .line 18
    invoke-static/range {v2 .. v7}, Lcom/smartisanos/launcher/view/a/aa;->a(Lcom/smartisanos/launcher/data/ItemInfo;IILjava/util/ArrayList;Lcom/smartisanos/launcher/data/LayoutProperty;Z)Lcom/smartisanos/launcher/view/a/ka;

    move-result-object v2

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_8

    .line 20
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->_l()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 22
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iput-object v1, v3, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 23
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Zl()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    .line 24
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->bm()I

    move-result v3

    iput v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 25
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->am()I

    move-result v3

    iput v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 26
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->il()V

    .line 27
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    if-nez v1, :cond_5

    .line 28
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iput v4, v1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    goto/16 :goto_2

    .line 29
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    if-ne v1, v4, :cond_8

    .line 30
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iput v8, v1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    goto :goto_2

    .line 31
    :cond_6
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Zl()I

    move-result v1

    if-eq v1, v3, :cond_8

    .line 32
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->bm()I

    move-result v3

    iput v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 33
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->am()I

    move-result v3

    iput v3, v1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 34
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->il()V

    .line 35
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    if-nez v1, :cond_7

    .line 36
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iput v4, v1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    goto :goto_2

    .line 37
    :cond_7
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    if-ne v1, v4, :cond_8

    .line 38
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iput v8, v1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 39
    :cond_8
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x7

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 40
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    .line 41
    iget-object v6, v5, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/smartisanos/launcher/view/activeicon/m;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 42
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/ka;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/la;->Yi()Lcom/smartisanos/launcher/view/activeicon/a;

    move-result-object v5

    if-nez v5, :cond_9

    .line 43
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/ka;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v5

    .line 44
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/activeicon/m;

    .line 45
    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/launcher/view/activeicon/m;)V

    .line 46
    iget-object v5, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 47
    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aput-object v9, v1, v3

    goto :goto_3

    .line 48
    :cond_a
    iget-object v5, v5, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v6, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 49
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/ka;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/la;->bj()Lcom/smartisanos/launcher/view/activeicon/a;

    move-result-object v5

    if-nez v5, :cond_9

    .line 50
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/ka;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v5

    .line 51
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/activeicon/H;

    .line 52
    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/launcher/view/activeicon/H;)V

    .line 53
    iget-object v5, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 54
    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aput-object v9, v1, v3

    goto :goto_3

    :cond_b
    if-eqz v0, :cond_c

    .line 55
    iget-object p1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/smartisanos/launcher/view/activeicon/m;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 56
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/ka;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/la;->Yi()Lcom/smartisanos/launcher/view/activeicon/a;

    move-result-object p1

    if-nez p1, :cond_d

    .line 57
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/ka;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 58
    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/activeicon/m;

    .line 59
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/launcher/view/activeicon/m;)V

    .line 60
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 61
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aput-object v9, p1, v3

    goto :goto_4

    :cond_c
    if-eqz v0, :cond_d

    .line 62
    iget-object p1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 63
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/ka;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/la;->bj()Lcom/smartisanos/launcher/view/activeicon/a;

    move-result-object p1

    if-nez p1, :cond_d

    .line 64
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/ka;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 65
    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/activeicon/H;

    .line 66
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/launcher/view/activeicon/H;)V

    .line 67
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 68
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aput-object v9, p1, v3

    .line 69
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->yl()Lcom/smartisanos/smengine/Camera;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/a/g;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 70
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->getRenderTarget()Lcom/smartisanos/smengine/N;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/a/g;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 71
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->hm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/a/g;->Ma(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v0

    invoke-static {p1, v0}, Lcom/smartisanos/launcher/view/b/M;->w(II)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/a/g;->Ka(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean p1, p1, Lcom/smartisanos/launcher/view/a/g;->oH:Z

    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/a/g;->bb(Z)V

    .line 75
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v0, p1, Lcom/smartisanos/launcher/view/a/g;->_G:I

    iget-object v1, p1, Lcom/smartisanos/launcher/view/a/g;->dH:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v0, v1

    iget p1, p1, Lcom/smartisanos/launcher/view/a/g;->aH:I

    add-int/2addr v0, p1

    .line 76
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->ir()[Lcom/smartisanos/smengine/a/j;

    move-result-object p1

    .line 77
    aget-object p1, p1, v0

    .line 78
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 80
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 81
    iget p0, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->y:F

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v2, p0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 82
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/ka;->create()V

    .line 83
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 84
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result p0

    if-eqz p0, :cond_e

    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p0, :cond_e

    const/16 p0, 0x10

    .line 85
    invoke-virtual {v2, p0, v8}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 86
    :cond_e
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result p0

    if-eqz p0, :cond_12

    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_12

    .line 87
    invoke-virtual {v2, v8}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    const p1, 0x3dcccccd    # 0.1f

    if-eqz p0, :cond_f

    .line 88
    invoke-virtual {v2, v8}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 89
    :cond_f
    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 90
    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_10
    const/4 p0, 0x5

    .line 91
    invoke-virtual {v2, p0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 92
    invoke-virtual {v2, p0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_11
    const/4 p0, 0x3

    .line 93
    invoke-virtual {v2, p0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 94
    invoke-virtual {v2, p0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 95
    :cond_12
    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    .line 96
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Om()V

    return-object v2

    .line 97
    :cond_13
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "### Folder has exist..."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_14
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "### convertCellToFolderCell: mFolder  or  mDraggedCell cell is null."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->cz:Lcom/smartisanos/smengine/a/k;

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->dz:Lcom/smartisanos/smengine/a/k;

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->cz:Lcom/smartisanos/smengine/a/k;

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->dz:Lcom/smartisanos/smengine/a/k;

    .line 6
    iput-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Zy:Lcom/smartisanos/launcher/view/a/pa;

    return-void
.end method

.method public create()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v1, v0, Lcom/smartisanos/launcher/view/a/g;->iH:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->ll()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v2, v1

    iget-boolean v2, v0, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->e(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v1, v0, Lcom/smartisanos/launcher/view/a/g;->oH:Z

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->pl()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v2, :cond_2

    const/4 v3, 0x5

    .line 13
    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->db(I)Lcom/smartisanos/smengine/F;

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->qb(I)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->ol()V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->nl()V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->ql()V

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 22
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v0, :cond_4

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 25
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 27
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/a/g;->iH:Z

    return-void
.end method

.method public d(Ljava/util/ArrayList;)Lcom/smartisanos/launcher/view/a/g;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/FolderInfo;

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->Ze()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->qf()[I

    move-result-object v5

    .line 6
    aget v6, v5, v1

    iput v6, v3, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 7
    aget v4, v5, v4

    iput v4, v3, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 8
    iget-wide v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    long-to-int v4, v4

    iput v4, v3, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    .line 9
    iget-wide v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v0, v3, v4}, Lcom/smartisanos/launcher/data/FolderInfo;->add(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "### this cell has been in a folder ????, ii = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/a/g;

    .line 13
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Zl()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 14
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Zl()I

    move-result v6

    int-to-long v6, v6

    iget-wide v8, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->rf()Ljava/util/ArrayList;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 17
    iget v7, v6, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->bm()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 18
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    if-eq v6, v7, :cond_3

    .line 19
    iget v7, v6, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->am()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 20
    iget v7, v6, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    add-int/2addr v7, v4

    iput v7, v6, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 21
    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ItemInfo;->clone()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->bm()I

    move-result v6

    iput v6, v3, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 23
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->am()I

    move-result v6

    iput v6, v3, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 24
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->il()V

    .line 25
    :cond_5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->sf()I

    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/a/g;

    .line 27
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    .line 28
    iget-object v7, v6, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v8, Lcom/smartisanos/launcher/view/activeicon/m;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x7

    if-eqz v7, :cond_7

    .line 29
    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/la;->Yi()Lcom/smartisanos/launcher/view/activeicon/a;

    move-result-object v6

    if-nez v6, :cond_6

    .line 30
    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v6

    .line 31
    invoke-virtual {v5, v8}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/activeicon/m;

    .line 32
    invoke-virtual {v6, v5}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/launcher/view/activeicon/m;)V

    goto :goto_2

    .line 33
    :cond_7
    iget-object v6, v6, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 34
    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/la;->bj()Lcom/smartisanos/launcher/view/activeicon/a;

    move-result-object v6

    if-nez v6, :cond_6

    .line 35
    iget-object v6, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v6

    .line 36
    invoke-virtual {v5, v8}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/activeicon/H;

    .line 37
    invoke-virtual {v6, v5}, Lcom/smartisanos/launcher/view/a/la;->a(Lcom/smartisanos/launcher/view/activeicon/H;)V

    goto :goto_2

    .line 38
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 40
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    .line 41
    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/ItemInfo;->clone()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 42
    :cond_9
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object p1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->taa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v0, 0x0

    invoke-static {p1, v0, v3}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 45
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v4}, Lcom/smartisanos/launcher/view/a/g;->fb(Z)V

    .line 46
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Zy:Lcom/smartisanos/launcher/view/a/pa;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/pa;->draw(Lcom/smartisanos/smengine/Camera;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v1, v0, Lcom/smartisanos/launcher/view/a/g;->nH:Z

    const/16 v2, 0x10

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_11

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->isNeedDisplay()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_e

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/a/g;->Oa(Z)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v6, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v6, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6, v5}, Lcom/smartisanos/launcher/view/a/g;->e(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v6, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v6, v3

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v5}, Lcom/smartisanos/launcher/view/a/g;->e(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 12
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->ce()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/k;-><init>()V

    .line 14
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->getColor(Lcom/smartisanos/smengine/a/k;)V

    .line 15
    iget v3, v0, Lcom/smartisanos/smengine/a/k;->x:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->y:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->z:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->w:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Af()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->Nn()Z

    move-result v3

    if-nez v3, :cond_3

    .line 16
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "icon color maybe error. color = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/k;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v4

    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 18
    :cond_3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->gt()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v4

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/a/g;->db(Z)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/g;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->d(Lcom/smartisanos/smengine/Camera;)V

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v3, 0x800

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v6, 0xb

    aget-object v3, v3, v6

    invoke-virtual {v0, v3, v5}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v6

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v6, 0xd

    aget-object v3, v3, v6

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v3, 0x80

    .line 26
    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v6

    invoke-virtual {v0, v3, v5}, Lcom/smartisanos/launcher/view/a/g;->f(Lcom/smartisanos/smengine/SceneNode;Z)V

    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v6

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 29
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v3, v0, Lcom/smartisanos/launcher/view/a/g;->rH:Z

    if-eqz v3, :cond_c

    .line 30
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    iget v6, v0, Lcom/smartisanos/launcher/view/a/g;->YG:I

    iget v0, v0, Lcom/smartisanos/launcher/view/a/g;->ZG:I

    invoke-virtual {v3, v6, v0}, Lcom/smartisanos/smengine/N;->q(II)Lcom/smartisanos/smengine/Ga;

    move-result-object v0

    .line 31
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v6, 0x200

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 32
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v3, v1

    if-eqz v6, :cond_8

    .line 33
    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 34
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 35
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 36
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v6, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, v1

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 37
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v6

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v7

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v8

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v9

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    .line 38
    :cond_8
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v6, 0x5

    aget-object v7, v3, v6

    if-eqz v7, :cond_9

    .line 39
    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 40
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 41
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v6

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 42
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v7, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v7, v7, v6

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v7, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 43
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v6

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v6

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v7

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v8

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v9

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    .line 44
    :cond_9
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v6, v3, Lcom/smartisanos/launcher/view/a/g;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/view/a/g;->c(Lcom/smartisanos/smengine/Camera;)V

    .line 45
    :cond_a
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 46
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v3, v5

    if-eqz v6, :cond_b

    .line 47
    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 48
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 49
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v5

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 50
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v6, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v6, v6, v5

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 51
    iget-object v3, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v5

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Rs()I

    move-result v6

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ss()I

    move-result v7

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Qs()I

    move-result v8

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ga;->Ps()I

    move-result v0

    invoke-virtual {v3, v6, v7, v8, v0}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    .line 52
    :cond_b
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/g;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->b(Lcom/smartisanos/smengine/Camera;)V

    .line 53
    :cond_c
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->mRenderTarget:Lcom/smartisanos/smengine/N;

    if-eqz v0, :cond_d

    .line 54
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/N;->La(Z)V

    .line 55
    :cond_d
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->disableDisplayUpdate()V

    .line 56
    :cond_e
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v3, v0, Lcom/smartisanos/launcher/view/a/g;->oH:Z

    if-nez v3, :cond_16

    .line 57
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0xc

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 58
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->Ba(Z)V

    .line 59
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/L;->Mk()Z

    move-result v0

    if-nez v0, :cond_f

    .line 60
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    goto :goto_0

    .line 61
    :cond_f
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v4, v0, Lcom/smartisanos/launcher/view/a/g;->sH:Z

    if-eqz v4, :cond_10

    .line 63
    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 64
    :cond_10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    goto/16 :goto_1

    .line 65
    :cond_11
    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->Oa(Z)V

    .line 66
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/Z;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 67
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 68
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/ga;->ez:Z

    if-nez v0, :cond_13

    .line 69
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/I;

    if-eqz v0, :cond_12

    .line 70
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/Z;->Ai()V

    .line 71
    :cond_12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 72
    :cond_13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v0, :cond_14

    .line 73
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0x12

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 74
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 75
    :cond_14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 76
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->gt()I

    move-result v0

    if-ne v0, v5, :cond_15

    .line 77
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v4

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 78
    :cond_15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/g;->d(Lcom/smartisanos/smengine/Camera;)V

    .line 79
    :cond_16
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/ga;->ez:Z

    if-nez v0, :cond_17

    .line 80
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 81
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 82
    :cond_17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/ga;->ez:Z

    if-nez v0, :cond_18

    .line 83
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 84
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 85
    :cond_18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-boolean v2, v0, Lcom/smartisanos/launcher/view/a/g;->rH:Z

    if-nez v2, :cond_19

    .line 86
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/g;->c(Lcom/smartisanos/smengine/Camera;)V

    .line 87
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/g;->b(Lcom/smartisanos/smengine/Camera;)V

    .line 88
    :cond_19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 89
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 90
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 91
    :cond_1a
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 92
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 93
    :cond_1b
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 94
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 95
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 96
    :cond_1c
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/a/ga;->ez:Z

    if-nez v0, :cond_1d

    .line 97
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0x16

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 98
    :cond_1d
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->ib(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 99
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 100
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0x13

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 101
    :cond_1e
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 102
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0x14

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 103
    :cond_1f
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    .line 104
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 105
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "### draw mCellSpreadOutAnimationCover"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 106
    :cond_20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 107
    :cond_21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->l(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    .line 108
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 109
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 110
    :cond_22
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v0, p0, v1

    if-eqz v0, :cond_23

    .line 111
    aget-object p0, p0, v1

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    :cond_23
    return-void
.end method

.method public ia(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/ga;->la(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/ga;->la(Z)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result p1

    if-nez p1, :cond_5

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/Mc;

    .line 5
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    :cond_1
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/view/Mc;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/Mc;->setRenderQueue(I)V

    .line 9
    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/view/Mc;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Bm()V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    if-eqz v2, :cond_2

    .line 13
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 14
    :cond_2
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 15
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 16
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Fm()V

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 19
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    if-eqz v2, :cond_4

    .line 20
    iget-object v2, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 21
    :cond_4
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(Lcom/smartisanos/smengine/Ga;)V

    .line 22
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 23
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/N;)V

    .line 24
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Em()V

    .line 25
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    return-void
.end method

.method public init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const v1, 0x18007

    iput v1, v0, Lcom/smartisanos/launcher/view/a/g;->VH:I

    .line 2
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->GH:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/d;->Rg()Lcom/smartisanos/smengine/ha;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setTouchListener(Lcom/smartisanos/smengine/ha;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->GH:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/d;->Qg()Lcom/smartisanos/smengine/fa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setSingleTapListener(Lcom/smartisanos/smengine/fa;)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/g;->GH:Lcom/smartisanos/launcher/view/v;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/d;->Pg()Lcom/smartisanos/smengine/V;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setCollideListener(Lcom/smartisanos/smengine/V;)V

    return-void
.end method

.method public ja(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/a/ga;->_y:Z

    return-void
.end method

.method protected ka(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Mc;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Mc;->getTextView()Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_5
    if-eqz v0, :cond_6

    .line 13
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-boolean p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz p0, :cond_6

    .line 14
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_6
    return-void
.end method

.method public la(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/a/g;->rH:Z

    return-void
.end method

.method public ma(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/launcher/view/b/M;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/b/M;

    iget v0, v0, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v2, v1, Lcom/smartisanos/launcher/view/a/g;->_G:I

    iget v1, v1, Lcom/smartisanos/launcher/view/a/g;->aH:I

    .line 4
    invoke-static {v2, v1}, Lcom/smartisanos/launcher/view/b/M;->x(II)I

    move-result v1

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/smartisanos/launcher/view/a/ga;->a(ZII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public na(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    return-void
.end method

.method public setInnerShadowAlphaRange_H(FFFF)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v0, 0x11

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 2
    aget-object p0, p0, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setInnerShadowAlphaRange_H(FFFF)V

    :cond_0
    return-void
.end method

.method public setInnerShadowAlphaRange_V(FFFF)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v0, 0x11

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 2
    aget-object p0, p0, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setInnerShadowAlphaRange_V(FFFF)V

    :cond_0
    return-void
.end method

.method public setInnerShadowSize_H(FFFF)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v0, 0x11

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 2
    aget-object p0, p0, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setInnerShadowSize_H(FFFF)V

    :cond_0
    return-void
.end method

.method public setInnerShadowSize_V(FFFF)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v0, 0x11

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 2
    aget-object p0, p0, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setInnerShadowSize_V(FFFF)V

    :cond_0
    return-void
.end method

.method public va(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/F;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/nb;->getInstance()Lcom/smartisanos/launcher/view/nb;

    move-result-object p1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v1, v1, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/view/nb;->ta(I)Lcom/smartisanos/launcher/view/jb;

    move-result-object p1

    .line 5
    iget p1, p1, Lcom/smartisanos/launcher/view/jb;->Hv:I

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public zi()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    if-nez v1, :cond_3

    .line 9
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    if-nez v1, :cond_4

    .line 11
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    if-nez v1, :cond_5

    .line 13
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    if-nez v1, :cond_6

    .line 15
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Ba(I)Lcom/smartisanos/smengine/SceneNode;

    .line 16
    :cond_6
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->BH:Lcom/smartisanos/launcher/view/a/Z;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/Z;->zi()V

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    iget v1, v0, Lcom/smartisanos/launcher/view/a/g;->jH:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->ol()V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->nl()V

    .line 21
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/ga;->Qj:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->ql()V

    return-void
.end method
