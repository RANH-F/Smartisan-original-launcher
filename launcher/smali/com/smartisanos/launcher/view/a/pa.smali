.class public Lcom/smartisanos/launcher/view/a/pa;
.super Lcom/smartisanos/smengine/SceneNode;
.source "ThemeCubeCells.java"


# instance fields
.field private lQ:[Lcom/smartisanos/launcher/view/a/g;

.field private mQ:Lcom/smartisanos/launcher/view/a/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    .line 3
    iput-object p2, p0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/a/pa;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/a/pa;)[Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method


# virtual methods
.method public G(F)Lcom/smartisanos/smengine/g;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Lc;->Mh()Lcom/smartisanos/smengine/F;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    instance-of v2, v2, Lcom/smartisanos/smengine/mymaterial/I;

    .line 4
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->getSinglePageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 5
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    iget v5, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    neg-float v6, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    neg-float v5, v5

    div-float/2addr v5, v7

    const/4 v8, 0x0

    invoke-direct {v4, v6, v8, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 6
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    iget v6, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    neg-float v6, v6

    invoke-direct {v5, v8, v8, v6}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 7
    sget-object v6, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Faa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/theme/t;->Uf()Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    move-result-object v9

    const/4 v11, 0x0

    if-ne v6, v9, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v11

    .line 9
    :goto_0
    new-instance v12, Lcom/smartisanos/smengine/a/j;

    iget v13, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    neg-float v13, v13

    div-float/2addr v13, v7

    invoke-direct {v12, v13, v8, v8}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 10
    new-instance v14, Lcom/smartisanos/smengine/a/j;

    iget v15, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float/2addr v15, v7

    invoke-direct {v14, v15, v8, v8}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 11
    iget-object v9, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    iget v9, v9, Lcom/smartisanos/launcher/view/a/g;->aH:I

    iget v13, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    const/4 v15, 0x2

    div-int/2addr v13, v15

    if-gt v9, v13, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    move v9, v11

    :goto_1
    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v6, :cond_3

    .line 12
    iget v6, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float v9, v6, v7

    neg-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {v4, v9, v8, v6}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 13
    iget v4, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    neg-float v4, v4

    invoke-virtual {v5, v8, v8, v4}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    const/high16 v9, -0x3d4c0000    # -90.0f

    .line 14
    iget v4, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float/2addr v4, v7

    invoke-virtual {v12, v4, v8, v8}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    const/high16 v4, -0x3ee00000    # -10.0f

    .line 15
    iget v5, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    neg-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {v14, v5, v8, v8}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 16
    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    iget v5, v5, Lcom/smartisanos/launcher/view/a/g;->aH:I

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    div-int/2addr v3, v15

    if-lt v5, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v11

    :goto_2
    move/from16 v17, v4

    move/from16 v16, v9

    move/from16 v18, v13

    goto :goto_3

    :cond_3
    move v3, v9

    const/high16 v16, 0x42b40000    # 90.0f

    const/high16 v17, 0x41200000    # 10.0f

    const/high16 v18, -0x40800000    # -1.0f

    .line 17
    :goto_3
    new-instance v4, Lcom/smartisanos/smengine/g;

    invoke-direct {v4}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 18
    new-instance v5, Lcom/smartisanos/smengine/oa;

    invoke-direct {v5, v0}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    mul-float v6, p1, v13

    .line 19
    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v6, 0x1e

    .line 20
    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 21
    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6, v8, v13, v8}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/oa;->c(Lcom/smartisanos/smengine/a/j;)V

    .line 22
    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, v8}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    new-instance v7, Ljava/lang/Float;

    const v9, 0x3c8efa35

    mul-float v10, v16, v9

    invoke-direct {v7, v10}, Ljava/lang/Float;-><init>(F)V

    .line 23
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 24
    invoke-virtual {v5, v15, v6, v7}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_tween"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/c;->setName(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v4, v8, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/c;->setName(Ljava/lang/String;)V

    const/16 v6, 0xf

    if-eqz v3, :cond_4

    .line 28
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v3, v3, v11

    iget v7, v12, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v12, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v12, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v3, v7, v10, v12}, Lcom/smartisanos/smengine/SceneNode;->setScaleRotatePivot(FFF)V

    .line 29
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 30
    new-instance v3, Lcom/smartisanos/smengine/oa;

    iget-object v7, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v7, v7, v11

    invoke-direct {v3, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 31
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7, v8, v13, v8}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/oa;->c(Lcom/smartisanos/smengine/a/j;)V

    const v7, 0x3e99999a    # 0.3f

    .line 32
    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 33
    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 34
    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, v8}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    new-instance v10, Ljava/lang/Float;

    mul-float v12, v17, v9

    invoke-direct {v10, v12}, Ljava/lang/Float;-><init>(F)V

    .line 35
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 36
    invoke-virtual {v3, v15, v7, v10}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    const v7, 0x3f19999a    # 0.6f

    .line 37
    invoke-virtual {v4, v7, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 38
    :cond_4
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v3, v3, v15

    iget v7, v14, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v14, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v14, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v3, v7, v10, v12}, Lcom/smartisanos/smengine/SceneNode;->setScaleRotatePivot(FFF)V

    .line 39
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 40
    new-instance v3, Lcom/smartisanos/smengine/oa;

    iget-object v7, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v7, v7, v15

    invoke-direct {v3, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 41
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v7, v8, v13, v8}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/oa;->c(Lcom/smartisanos/smengine/a/j;)V

    const v7, 0x3dcccccd    # 0.1f

    mul-float v7, v7, p1

    mul-float/2addr v7, v13

    .line 42
    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 43
    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 44
    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, v8}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    new-instance v7, Ljava/lang/Float;

    mul-float v8, v18, v9

    invoke-direct {v7, v8}, Ljava/lang/Float;-><init>(F)V

    .line 45
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 46
    invoke-virtual {v3, v15, v6, v7}, Lcom/smartisanos/smengine/oa;->a(IFF)V

    const v6, 0x3f666666    # 0.9f

    mul-float v6, v6, p1

    mul-float/2addr v6, v13

    .line 47
    invoke-virtual {v4, v6, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 48
    sput-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    goto :goto_4

    :cond_5
    const/4 v1, 0x1

    .line 49
    sput-boolean v11, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 50
    :goto_4
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/16 v6, 0xc

    if-eqz v3, :cond_6

    .line 51
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v6

    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 52
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 53
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v3, v3, v15

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v3, v3, v6

    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 54
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v1, v1, v15

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/smartisanos/smengine/L;->Va(I)V

    :cond_6
    if-eqz v2, :cond_7

    .line 55
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v1, v1, v11

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v6

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 56
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v1, v1, v11

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 57
    :cond_7
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->wt()V

    .line 58
    new-instance v1, Lcom/smartisanos/launcher/view/a/oa;

    invoke-direct {v1, v0}, Lcom/smartisanos/launcher/view/a/oa;-><init>(Lcom/smartisanos/launcher/view/a/pa;)V

    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    return-object v4
.end method

.method public Gi()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 2
    aget-object p0, p0, v0

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    :cond_0
    return-void
.end method

.method public create()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->getSinglePageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 2
    iget v2, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2}, Lcom/smartisanos/smengine/SceneNode;->setScaleRotatePivot(FFF)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/L;->Fa(Z)V

    .line 5
    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setIsUpdateBoundingVolume(Z)V

    const/4 v2, 0x3

    new-array v7, v2, [Lcom/smartisanos/launcher/view/a/g;

    .line 6
    iput-object v7, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    .line 7
    iget v7, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    iget v8, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    mul-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x4

    .line 8
    sget-object v8, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Faa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/theme/t;->Uf()Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    move-result-object v9

    if-ne v8, v9, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v5

    :goto_0
    add-int/2addr v7, v6

    .line 10
    iget-object v9, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    .line 11
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v9

    iget v10, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v9, v10

    iget-object v10, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v10

    mul-int/2addr v10, v2

    add-int/2addr v9, v10

    sub-int v9, v7, v9

    .line 12
    new-instance v11, Lcom/smartisanos/smengine/a/j;

    iget v12, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    neg-float v13, v12

    div-float/2addr v13, v3

    neg-float v12, v12

    div-float/2addr v12, v3

    invoke-direct {v11, v13, v4, v12}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/high16 v12, -0x3ccc0000    # -180.0f

    .line 13
    new-instance v13, Lcom/smartisanos/smengine/a/j;

    iget v14, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    neg-float v14, v14

    invoke-direct {v13, v4, v4, v14}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 14
    new-instance v14, Lcom/smartisanos/smengine/a/j;

    iget v15, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    neg-float v15, v15

    div-float/2addr v15, v3

    invoke-direct {v14, v15, v4, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 15
    new-instance v15, Lcom/smartisanos/smengine/a/j;

    iget v10, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float/2addr v10, v3

    invoke-direct {v15, v10, v4, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    if-eqz v8, :cond_1

    .line 16
    iget-object v8, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    .line 17
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v8

    iget v9, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v8, v9

    iget-object v10, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    .line 18
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v10

    sub-int/2addr v9, v10

    mul-int/2addr v9, v2

    add-int/2addr v8, v9

    sub-int v9, v7, v8

    const/high16 v10, 0x42b40000    # 90.0f

    .line 19
    iget v7, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float v8, v7, v3

    neg-float v7, v7

    div-float/2addr v7, v3

    invoke-virtual {v11, v8, v4, v7}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    const/high16 v12, 0x43340000    # 180.0f

    .line 20
    iget v7, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    neg-float v7, v7

    invoke-virtual {v13, v4, v4, v7}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 21
    iget v7, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    div-float/2addr v7, v3

    invoke-virtual {v14, v7, v4, v4}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 22
    iget v7, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    neg-float v7, v7

    div-float/2addr v7, v3

    invoke-virtual {v15, v7, v4, v4}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    move/from16 v16, v10

    goto :goto_1

    :cond_1
    const/high16 v16, -0x3d4c0000    # -90.0f

    .line 23
    :goto_1
    sget-boolean v7, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v8

    .line 25
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Lc;->Mh()Lcom/smartisanos/smengine/F;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v8

    instance-of v8, v8, Lcom/smartisanos/smengine/mymaterial/I;

    .line 26
    sget v10, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    move v14, v5

    :goto_2
    const-string v3, "target/--/"

    if-ge v14, v2, :cond_b

    if-nez v14, :cond_3

    if-eqz v7, :cond_2

    .line 27
    sput-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    :cond_2
    if-eqz v8, :cond_5

    .line 28
    sput-boolean v6, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    goto :goto_3

    .line 29
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/theme/t;->Vf()Lcom/smartisanos/launcher/theme/v;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/smartisanos/launcher/data/Constants;->getIconBlendColor(Lcom/smartisanos/launcher/theme/v;)F

    move-result v17

    sput v17, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    if-eqz v7, :cond_4

    .line 30
    sput-boolean v6, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    :cond_4
    if-eqz v8, :cond_5

    .line 31
    sput-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 32
    :cond_5
    :goto_3
    new-instance v2, Lcom/smartisanos/launcher/view/a/ba;

    invoke-direct {v2}, Lcom/smartisanos/launcher/view/a/ba;-><init>()V

    .line 33
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    const-string v15, "itemInfo"

    invoke-virtual {v2, v15, v4}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    iget v4, v4, Lcom/smartisanos/launcher/view/a/g;->_G:I

    const-string v15, "rowIndex"

    invoke-virtual {v2, v15, v4}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 35
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    iget v4, v4, Lcom/smartisanos/launcher/view/a/g;->aH:I

    const-string v15, "columnIndex"

    invoke-virtual {v2, v15, v4}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    const-string v4, "RenderWithBatch"

    .line 36
    invoke-virtual {v2, v4, v6}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    const-string v4, "RenderUsePageBatch"

    .line 37
    invoke-virtual {v2, v4, v5}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    const-string v4, "PageCell"

    .line 38
    invoke-virtual {v2, v4, v6}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Z)V

    .line 39
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->getSinglePageMode()I

    move-result v4

    const-string v15, "singlePageMode"

    invoke-virtual {v2, v15, v4}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 40
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->getMultiPageMode()I

    move-result v4

    const-string v15, "multiPageMode"

    invoke-virtual {v2, v15, v4}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    .line 41
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Dl()I

    move-result v4

    const-string v15, "KeyCurrentPageMode"

    invoke-virtual {v2, v15, v4}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;I)V

    const-string v4, "paint"

    if-ne v6, v14, :cond_6

    .line 42
    sget-object v15, Lcom/smartisanos/launcher/view/Mc;->zO:Landroid/graphics/Paint;

    invoke-virtual {v2, v4, v15}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    sput-object v3, Lcom/smartisanos/smengine/Da;->sT:Ljava/lang/String;

    goto :goto_4

    .line 44
    :cond_6
    sget-object v3, Lcom/smartisanos/launcher/view/Mc;->xO:Landroid/graphics/Paint;

    invoke-virtual {v2, v4, v3}, Lcom/smartisanos/launcher/view/a/ba;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, ""

    .line 45
    sput-object v3, Lcom/smartisanos/smengine/Da;->sT:Ljava/lang/String;

    .line 46
    :goto_4
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    new-instance v4, Lcom/smartisanos/launcher/view/a/g;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "themeCell"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/smartisanos/launcher/view/a/g;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/a/ba;)V

    aput-object v4, v3, v14

    .line 47
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v3, v2, v14

    iput-boolean v6, v3, Lcom/smartisanos/launcher/view/a/g;->zH:Z

    .line 48
    aget-object v2, v2, v14

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/view/a/ga;->la(Z)V

    .line 49
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v2, v2, v14

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->lH:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 50
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v2, v2, v14

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->create()V

    .line 51
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v2, v2, v14

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 52
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v2, v2, v14

    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/view/a/g;->Ra(Z)V

    .line 53
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v2, v2, v14

    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/view/a/g;->Sa(Z)V

    if-nez v14, :cond_7

    .line 54
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v2, v2, v14

    invoke-virtual {v2, v9}, Lcom/smartisanos/launcher/view/a/g;->hb(I)V

    goto :goto_5

    :cond_7
    if-ne v6, v14, :cond_8

    .line 55
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v2, v2, v14

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/a/g;->hb(I)V

    .line 56
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v2, v2, v14

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_5

    :cond_8
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v2, v14, :cond_9

    .line 57
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v2, v2, v14

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->hb(I)V

    .line 58
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v2, v2, v14

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 59
    :cond_9
    :goto_5
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    if-eqz v2, :cond_a

    .line 60
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v4, v2, v14

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v4, v4, v3

    if-eqz v4, :cond_a

    .line 61
    aget-object v2, v2, v14

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    aget-object v2, v2, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    add-int/lit8 v14, v14, 0x1

    move v5, v4

    const/4 v2, 0x3

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_b
    move v4, v5

    .line 62
    sput v10, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    .line 63
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v2, v2, v4

    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->Ka(Ljava/lang/String;)V

    .line 64
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v2, v2, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    iget-object v5, v5, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->Ka(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/theme/t;->Vf()Lcom/smartisanos/launcher/theme/v;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/launcher/e/s;->m(Lcom/smartisanos/launcher/theme/v;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 66
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 67
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->Ne()Ljava/lang/String;

    move-result-object v2

    .line 68
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v4, v4, v6

    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/a/g;->La(Ljava/lang/String;)V

    goto :goto_7

    .line 69
    :cond_c
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v2, v2, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    iget-object v5, v5, Lcom/smartisanos/launcher/view/a/g;->TH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/a/g;->La(Ljava/lang/String;)V

    .line 70
    :cond_d
    :goto_7
    new-instance v2, Lcom/smartisanos/smengine/SceneNode;

    const-string v4, "themeNode1"

    invoke-direct {v2, v4}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v4, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v4, v4, v6

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    const v4, 0x3c8efa35

    mul-float v5, v16, v4

    .line 72
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v7, v9, v8, v9}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v2, v5, v7}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 73
    iget v5, v11, Lcom/smartisanos/smengine/a/j;->x:F

    iget v7, v11, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, v11, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v2, v5, v7, v9}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 74
    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    const/4 v7, 0x2

    aget-object v9, v5, v7

    if-eqz v9, :cond_e

    .line 75
    aget-object v5, v5, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/pa;->mQ:Lcom/smartisanos/launcher/view/a/g;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->UH:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/smartisanos/launcher/view/a/g;->Ka(Ljava/lang/String;)V

    .line 76
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/a/ga;->ka(Z)V

    .line 77
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v5, 0xa

    aget-object v3, v3, v5

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 78
    iget-object v3, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v5, 0xc

    aget-object v3, v3, v5

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 79
    new-instance v3, Lcom/smartisanos/smengine/SceneNode;

    const-string v5, "themeNode2"

    invoke-direct {v3, v5}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v5, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v5, v5, v7

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    mul-float/2addr v12, v4

    .line 81
    new-instance v4, Lcom/smartisanos/smengine/a/j;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v8, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v3, v12, v4}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 82
    iget v4, v13, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v13, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, v13, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 83
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 84
    :cond_e
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 85
    iget-object v2, v0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 86
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/smartisanos/smengine/SceneNode;->setScaleRotatePivot(FFF)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method public getStaticTargetTextureName()Ljava/lang/String;
    .locals 4

    # The incoming face already owns the final raster. Do not rebuild its key
    # from the outgoing Cell, whose shadow identity belongs to the old theme.
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_no_static_target

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_no_static_target

    iget-object v1, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v1, :cond_no_static_target

    iget-boolean v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->mFGTransparentAndBlackWhiteFlag:Z

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->useStaticApplicationPipeline(Ljava/lang/Object;Z)Z

    move-result v1

    if-eqz v1, :cond_no_static_target

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_no_static_target

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->getTextureName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_no_static_target

    const-string v1, ":STATIC_APPLICATION_COMPOSER:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_no_static_target

    return-object v0

    :cond_no_static_target
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_3

    .line 3
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v5, v4, v1

    if-eqz v5, :cond_2

    .line 4
    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 6
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->getRenderTarget()Lcom/smartisanos/smengine/N;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->getRenderTarget()Lcom/smartisanos/smengine/N;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/N;->Ka(Z)V

    .line 8
    :cond_1
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/smartisanos/launcher/view/a/g;->pH:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 9
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/a/g;->clear(Z)V

    .line 10
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->removeAllChildren()V

    .line 11
    iget-object v4, p0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aput-object v2, v4, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iput-object v2, p0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 14
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->removeAllChildren()V

    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/pa;->lQ:[Lcom/smartisanos/launcher/view/a/g;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 2
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/a/g;->draw(Lcom/smartisanos/smengine/Camera;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
