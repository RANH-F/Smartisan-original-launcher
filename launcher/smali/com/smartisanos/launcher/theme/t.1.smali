.class public Lcom/smartisanos/launcher/theme/t;
.super Ljava/lang/Object;
.source "ChangeThemeHandler.java"


# static fields
.field private static Bt:Lcom/smartisanos/launcher/theme/t;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private At:Ljava/lang/Runnable;

.field final TIMES:F

.field private volatile ct:Z

.field private volatile dt:Z

.field private et:Z

.field private ft:Z

.field private gt:Z

.field private ht:Z

.field private it:Z

.field private jt:Z

.field public kt:Z

.field private lt:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

.field private mt:Lcom/smartisanos/launcher/theme/v;

.field private nt:Lcom/smartisanos/launcher/theme/v;

.field private ot:[Lcom/smartisanos/smengine/F;

.field private pt:[Lcom/smartisanos/smengine/F;

.field public qt:Lcom/smartisanos/smengine/g;

.field public rt:Lcom/smartisanos/smengine/g;

.field public st:Lcom/smartisanos/smengine/g;

.field public tt:Lcom/smartisanos/launcher/theme/s;

.field public ut:Lcom/smartisanos/smengine/g;

.field public vt:Lcom/smartisanos/smengine/F;

.field private wt:[Lcom/smartisanos/smengine/F;

.field xt:Lcom/smartisanos/launcher/theme/Z;

.field private yt:Ljava/lang/Runnable;

.field private zt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/theme/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/theme/t;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->ct:Z

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->dt:Z

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->et:Z

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->ft:Z

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->gt:Z

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->ht:Z

    .line 8
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->it:Z

    .line 9
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->jt:Z

    .line 10
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->kt:Z

    .line 11
    sget-object v1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Gaa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    iput-object v1, p0, Lcom/smartisanos/launcher/theme/t;->lt:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/smartisanos/launcher/theme/t;->mt:Lcom/smartisanos/launcher/theme/v;

    .line 13
    iput-object v1, p0, Lcom/smartisanos/launcher/theme/t;->nt:Lcom/smartisanos/launcher/theme/v;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/smartisanos/smengine/F;

    .line 14
    iput-object v2, p0, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    new-array v1, v1, [Lcom/smartisanos/smengine/F;

    .line 15
    iput-object v1, p0, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/smartisanos/smengine/F;

    .line 16
    iput-object v1, p0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    .line 17
    new-instance v1, Lcom/smartisanos/launcher/theme/f;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/theme/f;-><init>(Lcom/smartisanos/launcher/theme/t;)V

    iput-object v1, p0, Lcom/smartisanos/launcher/theme/t;->yt:Ljava/lang/Runnable;

    .line 18
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->zt:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/smartisanos/launcher/theme/t;->TIMES:F

    .line 20
    new-instance v0, Lcom/smartisanos/launcher/theme/d;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/d;-><init>(Lcom/smartisanos/launcher/theme/t;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/t;->At:Ljava/lang/Runnable;

    .line 21
    new-instance v0, Lcom/smartisanos/launcher/theme/Z;

    invoke-direct {v0}, Lcom/smartisanos/launcher/theme/Z;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/t;->xt:Lcom/smartisanos/launcher/theme/Z;

    return-void
.end method

.method private Yw()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/k;->Wj()Lcom/smartisanos/smengine/Camera;

    move-result-object p0

    .line 2
    sget v0, Lcom/smartisanos/launcher/data/Constants;->theme_camera_fov:I

    int-to-float v0, v0

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/a/a;->tan(F)F

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float v3, v2, v0

    div-float v8, v3, v1

    neg-float v7, v8

    mul-float/2addr v2, p0

    div-float v9, v2, v1

    neg-float v10, v9

    .line 7
    new-instance v2, Lcom/smartisanos/smengine/Camera;

    float-to-int v0, v0

    float-to-int p0, p0

    invoke-direct {v2, v0, p0}, Lcom/smartisanos/smengine/Camera;-><init>(II)V

    const v6, 0x48006b00    # 131500.0f

    const/high16 v5, 0x42480000    # 50.0f

    move-object v4, v2

    .line 8
    invoke-virtual/range {v4 .. v10}, Lcom/smartisanos/smengine/Camera;->a(FFFFFF)V

    .line 9
    new-instance p0, Lcom/smartisanos/smengine/a/j;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v2, p0}, Lcom/smartisanos/smengine/Camera;->g(Lcom/smartisanos/smengine/a/j;)V

    .line 10
    new-instance p0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p0, v0, v0, v0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sget-object v0, Lcom/smartisanos/smengine/a/j;->QV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v2, p0, v0}, Lcom/smartisanos/smengine/Camera;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V

    .line 11
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object p0

    const-string v0, "mainCamera"

    .line 12
    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/smengine/k;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V

    .line 13
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/k;->a(Lcom/smartisanos/smengine/Camera;)V

    return-void
.end method

.method private Zw()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    .line 5
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/theme/e;->bt:[I

    iget-object v2, p0, Lcom/smartisanos/launcher/theme/t;->lt:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 6
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v5, v0

    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v6, v0

    const/4 v7, 0x0

    new-instance v8, Lcom/smartisanos/smengine/a/k;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v8, v3, v3, v3, v0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    new-instance v9, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v9, v3, v3, v3, v0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    new-instance v10, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v10, v3, v3, v3, v0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    new-instance v11, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v11, v3, v3, v3, v0}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const-string v4, "themeCover"

    invoke-static/range {v4 .. v11}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFLcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 8
    :cond_1
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v0, v0

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v4, v4

    const-string v5, "themeCover"

    invoke-static {v5, v0, v4, v3, v1}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/F;->e([F)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    const-string v3, "t_theme_screenshot_loading"

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 11
    :goto_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 12
    iget-object v3, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    const/16 v3, 0x103

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Fa(Z)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 19
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private _w()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/t;->Zw()V

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/t;->ut:Lcom/smartisanos/smengine/g;

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/theme/e;->bt:[I

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/t;->lt:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/oa;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v1, 0x3ecccccd    # 0.4f

    .line 5
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 6
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    neg-int v1, v1

    int-to-float v8, v1

    const/4 v9, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/t;->ut:Lcom/smartisanos/smengine/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->ut:Lcom/smartisanos/smengine/g;

    new-instance v1, Lcom/smartisanos/launcher/theme/b;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/theme/b;-><init>(Lcom/smartisanos/launcher/theme/t;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/theme/t;Lcom/smartisanos/launcher/theme/v;)Landroid/graphics/Bitmap;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/theme/t;->s(Lcom/smartisanos/launcher/theme/v;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private a(ZFFLcom/smartisanos/launcher/theme/v;)Lcom/smartisanos/smengine/g;
    .locals 38

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v2, p3

    .line 7
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/k;->Wj()Lcom/smartisanos/smengine/Camera;

    move-result-object v3

    .line 8
    sget v4, Lcom/smartisanos/launcher/data/Constants;->theme_camera_fov:I

    int-to-float v4, v4

    const v5, 0x3c8efa35

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 9
    invoke-static {v4}, Lcom/smartisanos/smengine/a/a;->tan(F)F

    move-result v4

    .line 10
    invoke-virtual {v3}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v3

    const/4 v6, 0x2

    div-int/2addr v3, v6

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 11
    sget v4, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    div-float/2addr v4, v3

    .line 12
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    const-string v7, "TextureModularColorMaterial"

    .line 13
    invoke-static {v7}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v8

    xor-int/lit8 v9, p1, 0x1

    .line 14
    iget-object v10, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v11, v10, v9

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    .line 15
    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 16
    iget-object v10, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v10, v10, v9

    invoke-virtual {v10, v12}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 17
    iget-object v10, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    const/4 v11, 0x0

    aput-object v11, v10, v9

    .line 18
    :cond_0
    iget-object v10, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    sget v11, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v11, v11

    mul-float/2addr v11, v4

    sget v13, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v13, v13

    mul-float/2addr v13, v4

    sget v14, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    neg-int v14, v14

    int-to-float v14, v14

    const-string v15, "mBackgroundGaussianScale"

    invoke-static {v15, v11, v13, v14, v12}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v11

    aput-object v11, v10, v9

    .line 19
    iget-object v10, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v10, v10, v9

    const-string v11, "t_blur_anim_background"

    invoke-virtual {v10, v11}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 20
    iget-object v10, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v10, v10, v9

    invoke-virtual {v10, v8}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 21
    iget-object v8, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v8, v8, v9

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 22
    iget-object v8, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 23
    iget-object v8, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    const/high16 v10, -0x40000000    # -2.0f

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v8, v11, v10}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 24
    iget-object v8, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 25
    iget-object v8, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 26
    iget-object v8, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 27
    iget-object v8, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v8, v8, v9

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 28
    iget-object v8, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v8, v8, v9

    invoke-virtual {v8, v12}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 29
    iget-object v8, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 30
    iget-object v8, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    sget v14, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v14, v14

    mul-float/2addr v14, v4

    sget v15, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v15, v15

    mul-float/2addr v15, v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    neg-int v5, v5

    int-to-float v5, v5

    const-string v6, "mBackgroundGaussianCover"

    invoke-static {v6, v14, v15, v5, v12}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v5

    aput-object v5, v8, v9

    .line 31
    iget-object v5, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v5, v5, v9

    const-string v6, "t_blur_background"

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 32
    invoke-static {v7}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v5

    .line 33
    iget-object v6, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v6, v6, v9

    invoke-virtual {v6, v5}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 34
    iget-object v7, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v7, v7, v9

    invoke-virtual {v7, v5, v5, v5, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 35
    iget-object v7, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v7, v7, v9

    invoke-virtual {v7, v13}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    goto :goto_0

    .line 36
    :cond_1
    iget-object v7, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v7, v7, v9

    invoke-virtual {v7, v6, v6, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 37
    iget-object v7, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v7, v7, v9

    invoke-virtual {v7, v12}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 38
    :goto_0
    iget-object v7, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v7, v7, v9

    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 39
    iget-object v3, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 40
    iget-object v3, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 41
    iget-object v3, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    invoke-virtual {v3, v11, v10}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 42
    iget-object v3, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 43
    iget-object v3, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 44
    iget-object v3, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 45
    iget-object v3, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v9

    invoke-virtual {v3, v12}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 46
    iget-object v3, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v9

    invoke-virtual {v3, v12}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 47
    iget-object v3, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 48
    new-instance v7, Lcom/smartisanos/smengine/g;

    invoke-direct {v7}, Lcom/smartisanos/smengine/g;-><init>()V

    const/high16 v3, 0x43480000    # 200.0f

    const v8, 0x3f666666    # 0.9f

    if-eqz p1, :cond_2

    .line 49
    new-instance v10, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v10, v5, v5, v5, v5}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 50
    new-instance v11, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v11, v6, v6, v6, v6}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 51
    new-instance v12, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v12, v6, v6, v6}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 52
    new-instance v14, Lcom/smartisanos/smengine/a/j;

    const v15, 0x3f8e38e4

    invoke-direct {v14, v15, v15, v6}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 53
    iget-object v15, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v15, v15, v9

    invoke-virtual {v15, v5, v5, v5, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 54
    iget-object v15, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v15, v15, v9

    invoke-virtual {v15, v13}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 55
    iget-object v13, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v13, v13, v9

    sget v15, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v15, v15

    add-float/2addr v15, v3

    mul-float/2addr v15, v8

    mul-float/2addr v15, v4

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    mul-float/2addr v5, v8

    mul-float/2addr v5, v4

    div-float v5, v5, v16

    invoke-virtual {v13, v15, v5, v6}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 56
    iget-object v3, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v9

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    mul-float/2addr v5, v4

    div-float v5, v5, v16

    sget v13, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v13, v13

    mul-float/2addr v13, v8

    mul-float/2addr v13, v4

    div-float v13, v13, v16

    invoke-virtual {v3, v5, v13, v6}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 57
    iget-object v3, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 58
    iget-object v3, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto :goto_1

    .line 59
    :cond_2
    new-instance v11, Lcom/smartisanos/smengine/a/k;

    const/4 v5, 0x0

    invoke-direct {v11, v5, v5, v5, v5}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 60
    new-instance v10, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v10, v6, v6, v6, v6}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 61
    new-instance v14, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v14, v8, v8, v6}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 62
    new-instance v12, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v12, v6, v6, v6}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 63
    iget-object v5, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v5, v5, v9

    invoke-virtual {v5, v6, v6, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 64
    iget-object v5, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v5, v5, v9

    sget v13, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v13, v13

    add-float/2addr v13, v3

    mul-float/2addr v13, v4

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v13, v15

    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    mul-float/2addr v8, v4

    div-float/2addr v8, v15

    invoke-virtual {v5, v13, v8, v6}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 65
    iget-object v3, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v9

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    div-float/2addr v5, v15

    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    div-float/2addr v8, v15

    invoke-virtual {v3, v5, v8, v6}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 66
    iget-object v3, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 67
    iget-object v3, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :goto_1
    const/16 v3, 0xe

    if-nez p1, :cond_3

    const/16 v3, 0xd

    :cond_3
    if-eqz p1, :cond_4

    .line 68
    new-instance v4, Lcom/smartisanos/smengine/a/k;

    const v5, 0x3f666666    # 0.9f

    invoke-direct {v4, v5, v5, v5, v5}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    goto :goto_2

    .line 69
    :cond_4
    new-instance v4, Lcom/smartisanos/smengine/a/k;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v5, v5}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 70
    :goto_2
    new-instance v5, Lcom/smartisanos/smengine/oa;

    iget-object v6, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v6, v6, v9

    invoke-direct {v5, v6}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v0

    .line 71
    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 72
    invoke-virtual {v5, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v19, 0x3

    .line 73
    iget v8, v10, Lcom/smartisanos/smengine/a/k;->x:F

    iget v13, v10, Lcom/smartisanos/smengine/a/k;->y:F

    iget v15, v10, Lcom/smartisanos/smengine/a/k;->z:F

    move/from16 v16, v6

    iget v6, v10, Lcom/smartisanos/smengine/a/k;->w:F

    move-object/from16 v28, v11

    iget v11, v4, Lcom/smartisanos/smengine/a/k;->x:F

    move-object/from16 v29, v10

    iget v10, v4, Lcom/smartisanos/smengine/a/k;->y:F

    move-object/from16 v30, v14

    iget v14, v4, Lcom/smartisanos/smengine/a/k;->z:F

    iget v4, v4, Lcom/smartisanos/smengine/a/k;->w:F

    move-object/from16 v18, v5

    move/from16 v20, v8

    move/from16 v21, v13

    move/from16 v22, v15

    move/from16 v23, v6

    move/from16 v24, v11

    move/from16 v25, v10

    move/from16 v26, v14

    move/from16 v27, v4

    invoke-virtual/range {v18 .. v27}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 74
    invoke-virtual {v7, v2, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 75
    new-instance v4, Lcom/smartisanos/smengine/oa;

    iget-object v5, v1, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    aget-object v5, v5, v9

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 76
    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 77
    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v21, 0x1

    .line 78
    iget v5, v12, Lcom/smartisanos/smengine/a/j;->x:F

    iget v6, v12, Lcom/smartisanos/smengine/a/j;->y:F

    iget v8, v12, Lcom/smartisanos/smengine/a/j;->z:F

    move-object/from16 v14, v30

    iget v10, v14, Lcom/smartisanos/smengine/a/j;->x:F

    iget v11, v14, Lcom/smartisanos/smengine/a/j;->y:F

    iget v13, v14, Lcom/smartisanos/smengine/a/j;->z:F

    move-object/from16 v20, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v8

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v13

    invoke-virtual/range {v20 .. v27}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 79
    invoke-virtual {v7, v2, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    if-eqz p1, :cond_5

    .line 80
    new-instance v4, Lcom/smartisanos/smengine/oa;

    iget-object v5, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v5, v5, v9

    invoke-direct {v4, v5}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 81
    invoke-virtual {v4, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 82
    invoke-virtual {v4, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v31, 0x1

    .line 83
    iget v3, v12, Lcom/smartisanos/smengine/a/j;->x:F

    iget v5, v12, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, v12, Lcom/smartisanos/smengine/a/j;->z:F

    iget v8, v14, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v14, Lcom/smartisanos/smengine/a/j;->y:F

    iget v11, v14, Lcom/smartisanos/smengine/a/j;->z:F

    move-object/from16 v30, v4

    move/from16 v32, v3

    move/from16 v33, v5

    move/from16 v34, v6

    move/from16 v35, v8

    move/from16 v36, v10

    move/from16 v37, v11

    invoke-virtual/range {v30 .. v37}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 84
    invoke-virtual {v7, v2, v4}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 85
    new-instance v2, Lcom/smartisanos/smengine/oa;

    iget-object v3, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v9

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v3

    .line 86
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v0, 0x2

    .line 87
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v18, 0x3

    move-object/from16 v10, v29

    .line 88
    iget v0, v10, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v10, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v10, Lcom/smartisanos/smengine/a/k;->z:F

    iget v5, v10, Lcom/smartisanos/smengine/a/k;->w:F

    move-object/from16 v11, v28

    iget v6, v11, Lcom/smartisanos/smengine/a/k;->x:F

    iget v8, v11, Lcom/smartisanos/smengine/a/k;->y:F

    iget v10, v11, Lcom/smartisanos/smengine/a/k;->z:F

    iget v11, v11, Lcom/smartisanos/smengine/a/k;->w:F

    move-object/from16 v17, v2

    move/from16 v19, v0

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v8

    move/from16 v25, v10

    move/from16 v26, v11

    invoke-virtual/range {v17 .. v26}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 89
    new-instance v0, Lcom/smartisanos/launcher/theme/p;

    invoke-direct {v0, v1, v9}, Lcom/smartisanos/launcher/theme/p;-><init>(Lcom/smartisanos/launcher/theme/t;I)V

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    move/from16 v4, v16

    .line 90
    invoke-virtual {v7, v4, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    goto/16 :goto_3

    :cond_5
    move/from16 v4, v16

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    .line 91
    new-instance v5, Lcom/smartisanos/smengine/oa;

    iget-object v6, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v6, v6, v9

    invoke-direct {v5, v6}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 92
    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 93
    invoke-virtual {v5, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v19, 0x1

    .line 94
    iget v0, v12, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v12, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, v12, Lcom/smartisanos/smengine/a/j;->z:F

    iget v8, v14, Lcom/smartisanos/smengine/a/j;->x:F

    iget v12, v14, Lcom/smartisanos/smengine/a/j;->y:F

    iget v13, v14, Lcom/smartisanos/smengine/a/j;->z:F

    move-object/from16 v18, v5

    move/from16 v20, v0

    move/from16 v21, v3

    move/from16 v22, v6

    move/from16 v23, v8

    move/from16 v24, v12

    move/from16 v25, v13

    invoke-virtual/range {v18 .. v25}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    .line 95
    invoke-virtual {v7, v2, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 96
    new-instance v0, Lcom/smartisanos/smengine/oa;

    iget-object v2, v1, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object v2, v2, v9

    invoke-direct {v0, v2}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 97
    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v2, 0x2

    .line 98
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v21, 0x3

    .line 99
    iget v2, v10, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v10, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v10, Lcom/smartisanos/smengine/a/k;->z:F

    iget v5, v10, Lcom/smartisanos/smengine/a/k;->w:F

    iget v6, v11, Lcom/smartisanos/smengine/a/k;->x:F

    iget v8, v11, Lcom/smartisanos/smengine/a/k;->y:F

    iget v10, v11, Lcom/smartisanos/smengine/a/k;->z:F

    iget v11, v11, Lcom/smartisanos/smengine/a/k;->w:F

    move-object/from16 v20, v0

    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v8

    move/from16 v28, v10

    move/from16 v29, v11

    invoke-virtual/range {v20 .. v29}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    const/4 v2, 0x0

    .line 100
    invoke-virtual {v7, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 101
    :goto_3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Wq()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v4

    .line 102
    new-instance v6, Lcom/smartisanos/launcher/theme/q;

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v9

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/theme/q;-><init>(Lcom/smartisanos/launcher/theme/t;ZILcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/launcher/theme/v;)V

    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    return-object v7
.end method

.method static synthetic a(Lcom/smartisanos/launcher/theme/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/t;->ex()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/theme/t;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/t;->it:Z

    return p1
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/t;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method private ax()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 3
    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v3, v3

    .line 4
    iget-object v4, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    array-length v4, v4

    new-array v4, v4, [F

    .line 5
    sget v5, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 6
    iget v5, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/4 v7, 0x1

    aput v5, v4, v7

    const/4 v8, 0x2

    .line 7
    aput v5, v4, v8

    const/4 v9, 0x3

    .line 8
    aput v5, v4, v9

    const/4 v9, 0x4

    .line 9
    aput v5, v4, v9

    const/4 v10, 0x5

    .line 10
    aput v5, v4, v10

    .line 11
    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height_dock:F

    const/4 v5, 0x6

    aput v2, v4, v5

    .line 12
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->zr()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 13
    aput v5, v4, v9

    .line 14
    aput v5, v4, v10

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Br()Z

    move-result v2

    if-nez v2, :cond_1

    .line 16
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Ar()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 17
    :cond_1
    aput v5, v4, v10

    .line 18
    :cond_2
    :goto_0
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v2, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v2, v11

    move v13, v5

    move v12, v6

    .line 19
    :goto_1
    iget-object v14, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    array-length v14, v14

    const/high16 v15, 0x3f800000    # 1.0f

    if-ge v12, v14, :cond_7

    const-string v14, "theme"

    if-eq v9, v12, :cond_3

    if-ne v10, v12, :cond_4

    .line 20
    :cond_3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->zr()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 21
    iget-object v9, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3, v15, v5, v7}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v8

    aput-object v8, v9, v12

    .line 22
    iget-object v8, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v8, v8, v12

    invoke-virtual {v8, v5, v5, v5}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    goto :goto_2

    :cond_4
    if-ne v10, v12, :cond_6

    .line 23
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Br()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Ar()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 24
    :cond_5
    iget-object v8, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3, v15, v5, v7}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v9

    aput-object v9, v8, v12

    .line 25
    iget-object v8, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v8, v8, v12

    invoke-virtual {v8, v5, v5, v5}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    goto :goto_2

    .line 26
    :cond_6
    iget-object v8, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aget v14, v4, v12

    invoke-static {v9, v3, v14, v5, v7}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v9

    aput-object v9, v8, v12

    .line 27
    :goto_2
    iget-object v8, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v8, v8, v12

    aget v9, v4, v12

    div-float/2addr v9, v11

    add-float/2addr v9, v13

    sub-float v9, v2, v9

    invoke-virtual {v8, v5, v9, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 28
    aget v8, v4, v12

    add-float/2addr v13, v8

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x4

    goto/16 :goto_1

    .line 29
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/theme/t;->fx()V

    move v1, v6

    .line 30
    :goto_3
    iget-object v2, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 31
    aget-object v2, v2, v1

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 32
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    .line 33
    iget-object v3, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    const-string v2, "TextureModularColorMaterial"

    .line 34
    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    .line 35
    iget-object v3, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 36
    iget-object v2, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v2, v2, v1

    invoke-virtual {v2, v15, v15, v15, v15}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 37
    iget-object v2, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v2, v2, v1

    const/16 v3, 0x101

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 38
    iget-object v2, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 39
    iget-object v2, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 40
    iget-object v2, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 41
    iget-object v2, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/L;->Fa(Z)V

    .line 42
    iget-object v2, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 43
    iget-object v2, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v2, v2, v1

    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 44
    sget-object v2, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Faa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    iget-object v4, v0, Lcom/smartisanos/launcher/theme/t;->lt:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    if-ne v2, v4, :cond_8

    .line 45
    iget-object v2, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/L;->Da(Z)V

    .line 46
    iget-object v2, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v2, v2, v1

    const v4, 0x40490fdb    # (float)Math.PI

    new-instance v8, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v8, v5, v15, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v2, v4, v8}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 47
    :cond_8
    iget-object v2, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 48
    :cond_9
    new-instance v1, Lcom/smartisanos/launcher/theme/s;

    invoke-direct {v1, v0, v2}, Lcom/smartisanos/launcher/theme/s;-><init>(Lcom/smartisanos/launcher/theme/t;[Lcom/smartisanos/smengine/SceneNode;)V

    iput-object v1, v0, Lcom/smartisanos/launcher/theme/t;->tt:Lcom/smartisanos/launcher/theme/s;

    const-string v1, "theme-anim"

    .line 49
    invoke-static {v1, v7}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "theme_00"

    const-string v3, ".png"

    .line 50
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getFrameCount()I

    move-result v4

    .line 51
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    if-ge v6, v4, :cond_b

    const/16 v7, 0xa

    if-ge v6, v7, :cond_a

    .line 52
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 53
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 54
    :cond_b
    iget-object v2, v0, Lcom/smartisanos/launcher/theme/t;->tt:Lcom/smartisanos/launcher/theme/s;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/q;->Ca(Ljava/lang/String;)V

    .line 55
    iget-object v0, v0, Lcom/smartisanos/launcher/theme/t;->tt:Lcom/smartisanos/launcher/theme/s;

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/q;->e(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/theme/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/t;->dx()V

    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/theme/t;Lcom/smartisanos/launcher/theme/v;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/theme/t;->r(Lcom/smartisanos/launcher/theme/v;)V

    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/theme/t;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/theme/t;->kc(Z)V

    return-void
.end method

.method private bx()V
    .locals 14

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x23

    const/4 v3, 0x0

    const-string v4, "target/--/"

    const/4 v5, 0x7

    const/4 v6, 0x1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/fa;->Wq()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v7

    const-string v8, ""

    if-ne v1, v7, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v8

    .line 5
    :goto_0
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/a/g;

    .line 7
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v9

    if-nez v9, :cond_2

    .line 8
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v9

    .line 9
    invoke-virtual {v9}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 10
    sget-boolean v7, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/smartisanos/launcher/theme/t;->log:Lcom/smartisanos/launcher/va;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isFolder, continue. tex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " info = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/data/ItemInfo;->Ne()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 12
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 13
    invoke-virtual {p0, v10}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 14
    :cond_4
    invoke-virtual {v9}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v11

    if-nez v11, :cond_5

    .line 15
    invoke-static {v9, v6}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/launcher/data/ItemInfo;Z)[B

    move-result-object v11

    .line 16
    :cond_5
    invoke-static {v11}, Lcom/smartisanos/launcher/e/s;->c([B)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 17
    invoke-virtual {v7, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 18
    invoke-virtual {v7, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/activeicon/a;

    invoke-virtual {v11, v9}, Lcom/smartisanos/launcher/view/activeicon/a;->o(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 19
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v12

    invoke-static {v11, v3}, Lcom/smartisanos/launcher/e/s;->b(Landroid/graphics/Bitmap;Z)[B

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/smartisanos/launcher/data/ItemInfo;->a([B)V

    .line 20
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    move-object v9, v11

    .line 21
    :cond_6
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    iget-boolean v7, v7, Lcom/smartisanos/launcher/data/ItemInfo;->mFGTransparentAndBlackWhiteFlag:Z

    if-eqz v7, :cond_7

    .line 22
    invoke-static {v9, v2}, Lcom/smartisanos/launcher/e/s;->c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v9

    :cond_7
    if-eqz v9, :cond_2

    .line 23
    new-instance v7, Lcom/smartisanos/smengine/Da;

    invoke-direct {v7, v9}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 24
    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/Da;->Ub(Z)V

    .line 25
    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 26
    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 27
    invoke-virtual {p0, v10, v7}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    goto/16 :goto_1

    .line 28
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 29
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    .line 31
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v7

    if-nez v7, :cond_9

    .line 32
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    .line 33
    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_2

    .line 34
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/ItemInfo;->Ne()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 35
    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v7

    invoke-static {v7}, Lcom/smartisanos/launcher/e/s;->c([B)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 36
    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 37
    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/activeicon/a;

    invoke-virtual {v9, v7}, Lcom/smartisanos/launcher/view/activeicon/a;->o(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 38
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v10

    invoke-static {v9, v3}, Lcom/smartisanos/launcher/e/s;->b(Landroid/graphics/Bitmap;Z)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/data/ItemInfo;->a([B)V

    .line 39
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    move-object v7, v9

    .line 40
    :cond_b
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->mFGTransparentAndBlackWhiteFlag:Z

    if-eqz v1, :cond_c

    .line 41
    invoke-static {v7, v2}, Lcom/smartisanos/launcher/e/s;->c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_c
    if-eqz v7, :cond_9

    .line 42
    new-instance v1, Lcom/smartisanos/smengine/Da;

    invoke-direct {v1, v7}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 43
    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/Da;->Ub(Z)V

    .line 44
    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 45
    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 46
    invoke-virtual {p0, v8, v1}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    goto :goto_2

    :cond_d
    return-void
.end method

.method static synthetic c(Lcom/smartisanos/launcher/theme/t;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/t;->et:Z

    return p1
.end method

.method static synthetic c(Lcom/smartisanos/launcher/theme/t;)[Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method private cx()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/theme/t;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "prepareToChangeTheme"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->nt:Lcom/smartisanos/launcher/theme/v;

    .line 4
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/X;->i(Lcom/smartisanos/launcher/theme/v;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 5
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    goto :goto_0

    .line 6
    :cond_1
    sput-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 7
    :goto_0
    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->m(Lcom/smartisanos/launcher/theme/v;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Cg()Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->isLoadSpecialAppIcon:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iput-boolean v2, p0, Lcom/smartisanos/launcher/theme/t;->gt:Z

    .line 10
    iput-boolean v3, p0, Lcom/smartisanos/launcher/theme/t;->it:Z

    goto/16 :goto_4

    .line 11
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/smartisanos/launcher/theme/t;->zt:Z

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Cg()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 14
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->isLoadSpecialAppIcon:Z

    .line 15
    invoke-static {v5, v3}, Lcom/smartisanos/launcher/ua;->a(Landroid/content/Context;Z)V

    .line 16
    invoke-static {v1, v2}, Lcom/smartisanos/launcher/data/N;->b(Landroid/content/Context;Z)Z

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    sget-object v4, Lcom/smartisanos/launcher/e/s;->Gu:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v4, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->ZZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v4, v5, v1}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 20
    :cond_4
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->isLoadSpecialAppIcon:Z

    if-eqz v4, :cond_5

    .line 21
    iput-boolean v2, p0, Lcom/smartisanos/launcher/theme/t;->zt:Z

    .line 22
    sput-boolean v3, Lcom/smartisanos/launcher/data/Constants;->isLoadSpecialAppIcon:Z

    .line 23
    invoke-static {v5, v2}, Lcom/smartisanos/launcher/ua;->a(Landroid/content/Context;Z)V

    .line 24
    invoke-static {v1, v3}, Lcom/smartisanos/launcher/data/N;->b(Landroid/content/Context;Z)Z

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    sget-object v4, Lcom/smartisanos/launcher/e/s;->Gu:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v4, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->ZZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v4, v5, v1}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 28
    :cond_5
    :goto_2
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->setIconType(Lcom/smartisanos/launcher/theme/v;)V

    .line 29
    invoke-static {}, Lcom/smartisanos/launcher/Aa;->qc()Ljava/util/HashMap;

    move-result-object v1

    .line 30
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 31
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 33
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 34
    iget-object v8, v7, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Lcom/smartisanos/launcher/data/T;->Q(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 35
    iget-object v7, v7, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 36
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v4, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->iaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v4, v5, v1}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 39
    :goto_4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_8

    .line 40
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 41
    :cond_8
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/theme/t;->t(Lcom/smartisanos/launcher/theme/v;)V

    .line 42
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/t;->Yw()V

    .line 43
    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/theme/t;->d(Lcom/smartisanos/launcher/theme/v;Z)V

    .line 44
    iget-boolean v1, p0, Lcom/smartisanos/launcher/theme/t;->jt:Z

    if-eqz v1, :cond_9

    .line 45
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/theme/t;->P(Z)V

    .line 46
    iput-boolean v2, p0, Lcom/smartisanos/launcher/theme/t;->ft:Z

    .line 47
    iput-boolean v3, p0, Lcom/smartisanos/launcher/theme/t;->jt:Z

    .line 48
    :cond_9
    invoke-static {v0}, Lcom/smartisanos/launcher/view/Mc;->o(Lcom/smartisanos/launcher/theme/v;)V

    .line 49
    iput-boolean v2, p0, Lcom/smartisanos/launcher/theme/t;->et:Z

    .line 50
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->setIconType(Lcom/smartisanos/launcher/theme/v;)V

    return-void
.end method

.method private d(Lcom/smartisanos/launcher/theme/v;Z)V
    .locals 17

    move-object/from16 v0, p1

    .line 29
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v1

    .line 30
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 31
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v2

    const-string v3, "status_bar.png"

    const-string v4, " error"

    const-string v5, "load "

    const-string v6, "dock_back.png"

    const-string v7, "Textures/"

    const-string v9, "/"

    if-eqz p2, :cond_9

    .line 32
    iget v11, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 33
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    const/4 v12, 0x0

    :goto_0
    const-string v13, "target/--/"

    if-ge v12, v1, :cond_2

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v11, :cond_1

    .line 34
    invoke-static {v12, v14}, Lcom/smartisanos/launcher/view/b/M;->w(II)Ljava/lang/String;

    move-result-object v15

    .line 35
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 36
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v10

    move/from16 p2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {v10, v1}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v1

    if-nez v1, :cond_0

    .line 38
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/smartisanos/launcher/xa;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 39
    new-instance v8, Lcom/smartisanos/smengine/Da;

    invoke-direct {v8, v1}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v8, v1}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 41
    invoke-virtual {v8, v1}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    :cond_0
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p2

    goto :goto_1

    :cond_1
    move/from16 p2, v1

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 43
    invoke-static {v6, v1}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v8

    if-nez v8, :cond_3

    .line 46
    iget-object v8, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/smartisanos/launcher/xa;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 47
    new-instance v8, Lcom/smartisanos/smengine/Da;

    invoke-direct {v8, v1}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v8, v1}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 49
    invoke-virtual {v8, v1}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 51
    :cond_3
    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v6

    if-nez v6, :cond_4

    .line 54
    iget-object v6, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/smartisanos/launcher/xa;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 55
    new-instance v8, Lcom/smartisanos/smengine/Da;

    invoke-direct {v8, v6}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x1

    .line 56
    invoke-virtual {v8, v6}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 57
    invoke-virtual {v8, v6}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 59
    :cond_4
    :try_start_0
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->IS_COPPER_RED_ODIN:Z

    if-eqz v1, :cond_1a

    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Cg()Z

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v1, p0

    iget-boolean v1, v1, Lcom/smartisanos/launcher/theme/t;->zt:Z

    if-eqz v1, :cond_1a

    .line 60
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-static {}, Lcom/smartisanos/launcher/pb;->getResolution()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/calendar"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    iget-object v6, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    iget-object v8, v0, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    invoke-static {v6, v8, v1}, Lcom/smartisanos/launcher/xa;->a(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 63
    :goto_2
    array-length v10, v6

    if-ge v8, v10, :cond_7

    .line 64
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v6, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 65
    invoke-virtual {v2, v10}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 66
    iget-object v10, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    .line 67
    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    iget-object v11, v0, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v6, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/smartisanos/launcher/xa;->b(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 68
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 69
    new-instance v11, Lcom/smartisanos/smengine/Da;

    invoke-direct {v11, v10}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v10, 0x1

    .line 70
    invoke-virtual {v11, v10}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 71
    invoke-virtual {v11, v10}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 72
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v6, v8

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 73
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v6, v8

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10, v11}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 74
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {}, Lcom/smartisanos/launcher/pb;->getResolution()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/weather"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v6, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    iget-object v7, v0, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    invoke-static {v6, v7, v1}, Lcom/smartisanos/launcher/xa;->a(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 77
    :goto_3
    array-length v8, v6

    if-ge v7, v8, :cond_1a

    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v6, v7

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 79
    invoke-virtual {v2, v8}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 80
    iget-object v8, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    .line 81
    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    iget-object v10, v0, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v6, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcom/smartisanos/launcher/xa;->b(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 82
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 83
    new-instance v10, Lcom/smartisanos/smengine/Da;

    invoke-direct {v10, v8}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x1

    .line 84
    invoke-virtual {v10, v8}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 85
    invoke-virtual {v10, v8}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 86
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v6, v7

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v6, v7

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v10}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 88
    :catch_0
    sget-object v0, Lcom/smartisanos/launcher/theme/t;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 89
    :cond_9
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-static {}, Lcom/smartisanos/launcher/pb;->getResolution()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/setting_button"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 91
    iget-object v10, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 92
    :goto_4
    array-length v12, v10

    if-ge v11, v12, :cond_b

    .line 93
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v10, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 94
    invoke-virtual {v2, v12}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 95
    iget-object v12, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v10, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/smartisanos/launcher/xa;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 96
    new-instance v13, Lcom/smartisanos/smengine/Da;

    invoke-direct {v13, v12}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v12, 0x1

    .line 97
    invoke-virtual {v13, v12}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 98
    invoke-virtual {v13, v12}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 99
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v10, v11

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 100
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v10, v11

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12, v13}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 101
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {}, Lcom/smartisanos/launcher/pb;->getResolution()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 103
    iget-object v10, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 104
    :goto_5
    array-length v12, v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v13, ".png"

    if-ge v11, v12, :cond_11

    .line 105
    :try_start_2
    aget-object v12, v10, v11

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c

    goto/16 :goto_6

    .line 106
    :cond_c
    aget-object v12, v10, v11

    invoke-virtual {v12, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    goto/16 :goto_6

    .line 107
    :cond_d
    aget-object v12, v10, v11

    const-string v13, "navigation_bar.png"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    goto/16 :goto_6

    .line 108
    :cond_e
    aget-object v12, v10, v11

    const-string v13, "background.png"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    goto :goto_6

    .line 109
    :cond_f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v10, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 110
    invoke-virtual {v2, v12}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v12

    if-eqz v12, :cond_10

    .line 111
    iget-object v12, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v10, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/smartisanos/launcher/xa;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 112
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v10, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 113
    new-instance v13, Lcom/smartisanos/smengine/Da;

    invoke-direct {v13, v12}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v12, 0x1

    .line 114
    invoke-virtual {v13, v12}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 115
    invoke-virtual {v13, v12}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 116
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v10, v11

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12, v13}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    :cond_10
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 117
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {}, Lcom/smartisanos/launcher/pb;->getResolution()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/pb;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    iget-object v7, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 120
    :goto_7
    array-length v10, v7

    if-ge v8, v10, :cond_19

    .line 121
    aget-object v10, v7, v8

    const-string v11, "^back([0-9]|[0-9]{2}).png"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    :cond_12
    :goto_8
    move-object/from16 p2, v3

    move-object/from16 v16, v6

    :cond_13
    const/4 v1, 0x1

    goto/16 :goto_b

    .line 122
    :cond_14
    aget-object v10, v7, v8

    invoke-virtual {v10, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    goto :goto_8

    .line 123
    :cond_15
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v7, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 124
    aget-object v11, v7, v8

    invoke-virtual {v11, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_18

    .line 125
    iget-object v11, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 126
    array-length v12, v11

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v12, :cond_12

    aget-object v15, v11, v14

    .line 127
    invoke-virtual {v15, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_17

    :cond_16
    move-object/from16 p2, v3

    move-object/from16 v16, v6

    goto :goto_a

    .line 128
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v15

    if-eqz v15, :cond_16

    .line 130
    iget-object v15, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v15}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    move-object/from16 p2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v6

    iget-object v6, v0, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/smartisanos/launcher/xa;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 131
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 132
    new-instance v6, Lcom/smartisanos/smengine/Da;

    invoke-direct {v6, v3}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x1

    .line 133
    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 134
    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 135
    invoke-virtual {v2, v1, v6}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    :goto_a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p2

    move-object/from16 v6, v16

    goto :goto_9

    :cond_18
    move-object/from16 p2, v3

    move-object/from16 v16, v6

    .line 136
    invoke-virtual {v2, v10}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 137
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/smartisanos/launcher/xa;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 138
    invoke-virtual {v2, v10}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 139
    new-instance v3, Lcom/smartisanos/smengine/Da;

    invoke-direct {v3, v1}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    .line 140
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 141
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 142
    invoke-virtual {v2, v10, v3}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    :goto_b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, p2

    move-object/from16 v6, v16

    goto/16 :goto_7

    .line 143
    :cond_19
    invoke-static {}, Lcom/smartisanos/launcher/view/b/t;->Ur()Lcom/smartisanos/smengine/F;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_c

    .line 144
    :catch_1
    sget-object v0, Lcom/smartisanos/launcher/theme/t;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1a
    :goto_c
    return-void
.end method

.method static synthetic d(Lcom/smartisanos/launcher/theme/t;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/t;->ft:Z

    return p1
.end method

.method static synthetic d(Lcom/smartisanos/launcher/theme/t;)[Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method private declared-synchronized dx()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/Sa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/t;->At:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iput-boolean v2, p0, Lcom/smartisanos/launcher/theme/t;->dt:Z

    .line 4
    iput-boolean v2, p0, Lcom/smartisanos/launcher/theme/t;->ct:Z

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ja;->l(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/theme/t;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/t;->gt:Z

    return p1
.end method

.method static synthetic e(Lcom/smartisanos/launcher/theme/t;)[Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/t;->ot:[Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method private ex()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/J;->a(ZLjava/lang/String;)V

    .line 3
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->it()Lcom/smartisanos/smengine/J;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/J;->s(F)V

    .line 5
    :cond_1
    new-instance v0, Lcom/smartisanos/launcher/theme/m;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/m;-><init>(Lcom/smartisanos/launcher/theme/t;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/wb;->post(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->ut:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    const/4 v5, 0x1

    .line 9
    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->st:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->tt:Lcom/smartisanos/launcher/theme/s;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/q;->start()V

    .line 12
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->kt:Z

    if-eqz v0, :cond_4

    .line 13
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/d;->Oj()V

    .line 14
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->wt()V

    .line 15
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->kt:Z

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 18
    :cond_5
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    array-length v0, p0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_6

    aget-object v3, p0, v2

    .line 19
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 20
    :cond_6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/d;->Oj()V

    .line 21
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    :cond_7
    return-void
.end method

.method static synthetic f(Lcom/smartisanos/launcher/theme/t;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/theme/t;->dt:Z

    return p0
.end method

.method static synthetic f(Lcom/smartisanos/launcher/theme/t;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/t;->ht:Z

    return p1
.end method

.method private fx()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    array-length v0, v0

    new-array v0, v0, [F

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->initThemeShadowHeight([F)V

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    :goto_0
    if-ge v4, v1, :cond_0

    aget v6, v0, v4

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v1

    .line 5
    iget-object v4, p0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    array-length v4, v4

    new-array v4, v4, [F

    move v6, v2

    move v7, v3

    .line 6
    :goto_1
    array-length v8, v0

    const/4 v9, 0x1

    if-ge v6, v8, :cond_1

    .line 7
    array-length v8, v0

    sub-int/2addr v8, v6

    sub-int/2addr v8, v9

    .line 8
    aget v9, v0, v8

    add-float/2addr v9, v7

    div-float/2addr v9, v5

    aput v9, v4, v8

    .line 9
    aget v8, v0, v8

    add-float/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 10
    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_4

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "theme"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v5

    if-nez v5, :cond_3

    .line 12
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v5

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/y;->setName(Ljava/lang/String;)V

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    const/16 v6, 0x8

    new-array v6, v6, [F

    .line 15
    aget v7, v4, v0

    .line 16
    array-length v8, v4

    sub-int/2addr v8, v9

    if-eq v8, v0, :cond_2

    add-int/lit8 v8, v0, 0x1

    .line 17
    aget v8, v4, v8

    goto :goto_3

    :cond_2
    move v8, v3

    :goto_3
    aput v3, v6, v2

    aput v8, v6, v9

    const/4 v10, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v6, v10

    const/4 v10, 0x3

    aput v8, v6, v10

    const/4 v8, 0x4

    aput v11, v6, v8

    const/4 v8, 0x5

    aput v7, v6, v8

    const/4 v8, 0x6

    aput v3, v6, v8

    const/4 v8, 0x7

    aput v7, v6, v8

    .line 18
    invoke-virtual {v5, v2, v6}, Lcom/smartisanos/smengine/y;->c(I[F)V

    .line 19
    :cond_3
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    aget-object v6, v6, v0

    invoke-virtual {v6, v5}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method static synthetic g(Lcom/smartisanos/launcher/theme/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/t;->_w()V

    return-void
.end method

.method static synthetic g(Lcom/smartisanos/launcher/theme/t;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/theme/t;->jt:Z

    return p1
.end method

.method public static getInstance()Lcom/smartisanos/launcher/theme/t;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/t;->Bt:Lcom/smartisanos/launcher/theme/t;

    return-object v0
.end method

.method static synthetic h(Lcom/smartisanos/launcher/theme/t;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/theme/t;->ft:Z

    return p0
.end method

.method public static i(Lcom/smartisanos/launcher/theme/t;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/smartisanos/launcher/theme/t;->Bt:Lcom/smartisanos/launcher/theme/t;

    return-void
.end method

.method private kc(Z)V
    .locals 5

    const/4 p0, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/k;->Wj()Lcom/smartisanos/smengine/Camera;

    move-result-object p1

    .line 2
    sget v2, Lcom/smartisanos/launcher/data/Constants;->theme_camera_fov:I

    int-to-float v2, v2

    const v3, 0x3c8efa35

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 3
    invoke-static {v2}, Lcom/smartisanos/smengine/a/a;->tan(F)F

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 5
    sget v1, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    div-float/2addr v1, p1

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object p1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-virtual {p1, v2, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    goto :goto_0

    .line 8
    :cond_0
    sget p1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float p1, p1

    .line 9
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v2, v2

    .line 10
    sget v3, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    int-to-float v3, v3

    .line 11
    sget v4, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float/2addr p1, v3

    div-float/2addr p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v3

    div-float/2addr p1, v1

    div-float/2addr v2, v1

    invoke-virtual {v3, p1, v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableDepthTest(Z)V

    .line 14
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method private r(Lcom/smartisanos/launcher/theme/v;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/t;->qt:Lcom/smartisanos/smengine/g;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/t;->rt:Lcom/smartisanos/smengine/g;

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Eb;->aa(Z)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 6
    iget-object v1, p1, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    sput-object v1, Lcom/smartisanos/launcher/data/Constants;->THEME_PATH:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    iget-object v3, p1, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/Ra;->a(Landroid/content/res/AssetManager;)V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->initByTheme(Landroid/content/Context;)V

    .line 10
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->setIconType(Lcom/smartisanos/launcher/theme/v;)V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Mc;->Bi()V

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, p1, v1}, Lcom/smartisanos/launcher/theme/t;->d(Lcom/smartisanos/launcher/theme/v;Z)V

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Wq()Lcom/smartisanos/launcher/view/b/M;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/view/b/M;->mb(Z)V

    .line 15
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 18
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/M;->Bi()V

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->Bi()V

    .line 21
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object p1

    .line 22
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const-string v4, "background.png"

    if-eqz v3, :cond_2

    const-string v3, "TexturePreColorMaterial"

    .line 23
    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    .line 24
    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 26
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Lc;->Bi()V

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/view/b/fa;->nb(Z)V

    goto :goto_1

    :cond_2
    const-string v3, "TextureModularColorMaterial"

    .line 29
    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v3

    .line 30
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 31
    invoke-static {v4}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 32
    invoke-virtual {p1, v2, v0}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object p1

    const-string v3, "t_blur_background"

    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 34
    :goto_1
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    array-length v3, p1

    if-ge v1, v3, :cond_4

    .line 35
    aget-object v3, p1, v1

    if-eqz v3, :cond_3

    .line 36
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 37
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aget-object p1, p1, v1

    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 38
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/t;->pt:[Lcom/smartisanos/smengine/F;

    aput-object v0, p1, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/t;->xt:Lcom/smartisanos/launcher/theme/Z;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/theme/Z;->clear()V

    .line 40
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/t;->nt:Lcom/smartisanos/launcher/theme/v;

    .line 41
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result p0

    .line 42
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Lcom/smartisanos/launcher/view/b/fa;->o(IZ)V

    .line 43
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->pg()V

    return-void
.end method

.method private s(Lcom/smartisanos/launcher/theme/v;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    const-string v1, "background.png"

    .line 2
    invoke-static {v1}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lbt,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/smartisanos/launcher/theme/v;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 6
    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->l(Lcom/smartisanos/launcher/theme/v;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->hg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/launcher/theme/X;->i(Lcom/smartisanos/launcher/theme/v;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p1

    .line 8
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1bt = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 10
    new-instance v3, Lcom/smartisanos/smengine/Da;

    invoke-direct {v3, p1}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 11
    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 12
    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 13
    new-instance v1, Lcom/smartisanos/launcher/theme/o;

    const/16 v4, 0x64

    invoke-direct {v1, p0, v4, v3, v0}, Lcom/smartisanos/launcher/theme/o;-><init>(Lcom/smartisanos/launcher/theme/t;ILcom/smartisanos/smengine/Da;Lcom/smartisanos/smengine/Ea;)V

    const/4 p0, 0x0

    .line 14
    invoke-virtual {v1, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2pa="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object p0, p1, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/xa;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dec bt = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 19
    new-instance p0, Lcom/smartisanos/smengine/Da;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 21
    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    :goto_0
    if-eqz p1, :cond_2

    return-object p1

    .line 22
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private t(Lcom/smartisanos/launcher/theme/v;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/r;->Fd()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/animations/r;->c(Lcom/smartisanos/launcher/theme/v;)V

    return-void
.end method


# virtual methods
.method public P(Z)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getFrameCount()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    const/16 v4, 0xa

    const-string v5, "theme-anim"

    const/4 v6, 0x1

    const-string v7, "theme_00"

    const-string v8, ".png"

    if-ge v3, v4, :cond_0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 5
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_1
    iget-boolean v5, p0, Lcom/smartisanos/launcher/theme/t;->ft:Z

    if-nez v5, :cond_2

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/J;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/smartisanos/launcher/xa;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 9
    new-instance v7, Lcom/smartisanos/smengine/Da;

    invoke-direct {v7, v5}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 10
    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 11
    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 12
    invoke-virtual {v1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_7

    .line 13
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 14
    iget-boolean p1, p0, Lcom/smartisanos/launcher/theme/t;->jt:Z

    if-nez p1, :cond_4

    .line 15
    new-instance p1, Lcom/smartisanos/launcher/theme/r;

    const/16 v0, 0x64

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/smartisanos/launcher/theme/r;-><init>(Lcom/smartisanos/launcher/theme/t;ILjava/util/HashMap;Lcom/smartisanos/smengine/Ea;)V

    const/4 p0, 0x0

    .line 16
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_4

    .line 17
    :cond_4
    iget-boolean p0, p0, Lcom/smartisanos/launcher/theme/t;->ft:Z

    if-nez p0, :cond_7

    .line 18
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 19
    :cond_5
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v3

    if-nez v3, :cond_5

    .line 23
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/smengine/Da;

    if-eqz p1, :cond_5

    .line 24
    invoke-virtual {v2, v0, p1}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    goto :goto_3

    .line 25
    :cond_6
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_7
    :goto_4
    return-void
.end method

.method public Rf()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/t;->ut:Lcom/smartisanos/smengine/g;

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 6
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    .line 7
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object p0

    const-string v0, "t_theme_screenshot_loading"

    .line 8
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    return-void
.end method

.method public Sf()V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/smartisanos/launcher/theme/t;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createThemeCubeAnim mIsThemeTextureReady = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/smartisanos/launcher/theme/t;->et:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsThemeIconDataReady = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/smartisanos/launcher/theme/t;->gt:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsReloadIcon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/smartisanos/launcher/theme/t;->it:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-boolean v1, v0, Lcom/smartisanos/launcher/theme/t;->et:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lcom/smartisanos/launcher/theme/t;->gt:Z

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 4
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/t;->nt:Lcom/smartisanos/launcher/theme/v;

    .line 5
    iget-boolean v2, v0, Lcom/smartisanos/launcher/theme/t;->it:Z

    if-eqz v2, :cond_2

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/theme/t;->bx()V

    :cond_2
    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x3fcccccd    # 1.6f

    .line 7
    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->getDockStabDelay(F)F

    move-result v4

    .line 8
    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->getCellDelay(F)F

    move-result v3

    const v5, 0x3fa3d70b    # 1.2800001f

    const v6, 0x3fe66667    # 1.8000001f

    add-float v7, v4, v6

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->Wq()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v8

    .line 10
    sget-boolean v9, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v9, :cond_3

    .line 11
    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/theme/t;->s(Lcom/smartisanos/launcher/theme/v;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 12
    invoke-virtual {v0, v9}, Lcom/smartisanos/launcher/theme/t;->e(Landroid/graphics/Bitmap;)V

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 14
    invoke-direct {v0, v12, v5, v10, v1}, Lcom/smartisanos/launcher/theme/t;->a(ZFFLcom/smartisanos/launcher/theme/v;)Lcom/smartisanos/smengine/g;

    move-result-object v9

    iput-object v9, v0, Lcom/smartisanos/launcher/theme/t;->qt:Lcom/smartisanos/smengine/g;

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->hg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v9

    invoke-static {v9}, Lcom/smartisanos/launcher/theme/X;->i(Lcom/smartisanos/launcher/theme/v;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 16
    invoke-direct {v0, v11, v5, v10, v1}, Lcom/smartisanos/launcher/theme/t;->a(ZFFLcom/smartisanos/launcher/theme/v;)Lcom/smartisanos/smengine/g;

    move-result-object v5

    iput-object v5, v0, Lcom/smartisanos/launcher/theme/t;->rt:Lcom/smartisanos/smengine/g;

    goto :goto_0

    .line 17
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->hg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v9

    invoke-static {v9}, Lcom/smartisanos/launcher/theme/X;->i(Lcom/smartisanos/launcher/theme/v;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    .line 18
    invoke-static {v9}, Lcom/smartisanos/launcher/e/s;->l(Lcom/smartisanos/launcher/theme/v;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 19
    invoke-virtual {v0, v9}, Lcom/smartisanos/launcher/theme/t;->e(Landroid/graphics/Bitmap;)V

    .line 20
    invoke-direct {v0, v11, v5, v10, v1}, Lcom/smartisanos/launcher/theme/t;->a(ZFFLcom/smartisanos/launcher/theme/v;)Lcom/smartisanos/smengine/g;

    move-result-object v5

    iput-object v5, v0, Lcom/smartisanos/launcher/theme/t;->rt:Lcom/smartisanos/smengine/g;

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Eb;->getBackground()Lcom/smartisanos/smengine/F;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 22
    instance-of v5, v8, Lcom/smartisanos/launcher/view/b/ka;

    if-eqz v5, :cond_5

    .line 23
    move-object v5, v8

    check-cast v5, Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {v5, v11}, Lcom/smartisanos/launcher/view/b/ka;->rb(Z)V

    .line 24
    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    goto :goto_0

    .line 25
    :cond_4
    invoke-direct {v0, v12}, Lcom/smartisanos/launcher/theme/t;->kc(Z)V

    .line 26
    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/theme/t;->s(Lcom/smartisanos/launcher/theme/v;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 27
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 28
    :cond_5
    :goto_0
    invoke-virtual {v8, v11}, Lcom/smartisanos/launcher/view/b/M;->mb(Z)V

    .line 29
    new-instance v5, Lcom/smartisanos/smengine/g;

    invoke-direct {v5}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v5, v0, Lcom/smartisanos/launcher/theme/t;->st:Lcom/smartisanos/smengine/g;

    .line 30
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v5

    .line 31
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v8

    .line 32
    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v8

    move v9, v11

    .line 33
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 34
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/a/g;

    .line 35
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v10

    invoke-virtual {v10, v12, v6}, Lcom/smartisanos/launcher/view/a/X;->a(ZF)Lcom/smartisanos/smengine/g;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 36
    sget-object v13, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Faa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    iget-object v14, v0, Lcom/smartisanos/launcher/theme/t;->lt:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    if-ne v13, v14, :cond_6

    .line 37
    iget v13, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    rem-int v14, v9, v13

    .line 38
    div-int v15, v9, v13

    mul-int/2addr v15, v13

    sub-int/2addr v13, v14

    sub-int/2addr v13, v12

    add-int/2addr v13, v15

    goto :goto_2

    :cond_6
    move v13, v9

    .line 39
    :goto_2
    iget-object v14, v0, Lcom/smartisanos/launcher/theme/t;->st:Lcom/smartisanos/smengine/g;

    int-to-float v13, v13

    mul-float/2addr v13, v3

    invoke-virtual {v14, v13, v10}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 40
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v3

    invoke-virtual {v3, v12, v6}, Lcom/smartisanos/launcher/view/V;->a(ZF)Lcom/smartisanos/smengine/g;

    move-result-object v3

    .line 41
    iget-object v5, v0, Lcom/smartisanos/launcher/theme/t;->st:Lcom/smartisanos/smengine/g;

    invoke-virtual {v5, v4, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 42
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v3

    invoke-virtual {v3, v12, v6}, Lcom/smartisanos/launcher/view/Lc;->d(ZF)Lcom/smartisanos/smengine/g;

    move-result-object v3

    .line 43
    iget-object v5, v0, Lcom/smartisanos/launcher/theme/t;->st:Lcom/smartisanos/smengine/g;

    invoke-virtual {v5, v4, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 44
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Fh()Lcom/smartisanos/launcher/view/hc;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 45
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Fh()Lcom/smartisanos/launcher/view/hc;

    move-result-object v3

    invoke-virtual {v3, v12, v6}, Lcom/smartisanos/launcher/view/hc;->d(ZF)Lcom/smartisanos/smengine/g;

    move-result-object v3

    .line 46
    iget-object v5, v0, Lcom/smartisanos/launcher/theme/t;->st:Lcom/smartisanos/smengine/g;

    invoke-virtual {v5, v4, v3}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 47
    :cond_9
    iget-object v3, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    array-length v4, v3

    move v5, v11

    :goto_3
    if-ge v5, v4, :cond_a

    aget-object v8, v3, v5

    .line 48
    new-instance v9, Lcom/smartisanos/smengine/oa;

    invoke-direct {v9, v8}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 49
    invoke-virtual {v9, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v14, 0x3

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v13, v9

    .line 50
    invoke-virtual/range {v13 .. v22}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 51
    iget-object v8, v0, Lcom/smartisanos/launcher/theme/t;->st:Lcom/smartisanos/smengine/g;

    invoke-virtual {v8, v6, v9}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 52
    :cond_a
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/smartisanos/launcher/theme/t;->qt:Lcom/smartisanos/smengine/g;

    if-eqz v2, :cond_b

    .line 53
    iget-object v3, v0, Lcom/smartisanos/launcher/theme/t;->st:Lcom/smartisanos/smengine/g;

    invoke-virtual {v3, v7, v2}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 54
    :cond_b
    iget-object v2, v0, Lcom/smartisanos/launcher/theme/t;->st:Lcom/smartisanos/smengine/g;

    new-instance v3, Lcom/smartisanos/launcher/theme/l;

    invoke-direct {v3, v0, v1}, Lcom/smartisanos/launcher/theme/l;-><init>(Lcom/smartisanos/launcher/theme/t;Lcom/smartisanos/launcher/theme/v;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 55
    iget-boolean v1, v0, Lcom/smartisanos/launcher/theme/t;->kt:Z

    if-eqz v1, :cond_d

    .line 56
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/t;->vt:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_c

    .line 57
    invoke-virtual {v1, v11}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 58
    :cond_c
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/t;->wt:[Lcom/smartisanos/smengine/F;

    array-length v2, v1

    move v3, v11

    :goto_4
    if-ge v3, v2, :cond_d

    aget-object v4, v1, v3

    .line 59
    invoke-virtual {v4, v11}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 60
    :cond_d
    iput-boolean v12, v0, Lcom/smartisanos/launcher/theme/t;->ht:Z

    .line 61
    iget-boolean v1, v0, Lcom/smartisanos/launcher/theme/t;->et:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lcom/smartisanos/launcher/theme/t;->gt:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lcom/smartisanos/launcher/theme/t;->ft:Z

    if-eqz v1, :cond_f

    .line 62
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_e

    .line 63
    sget-object v1, Lcom/smartisanos/launcher/theme/t;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "createThemeCubeAnim startChangeThemeAnim"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 64
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/theme/t;->ex()V

    :cond_f
    :goto_5
    return-void
.end method

.method public Tf()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/J;->a(ZLjava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/t;->Rf()V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/theme/t;->P(Z)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/Eb;->l(Z)V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/t;->dx()V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ha;->oe()V

    new-instance v0, Lcom/smartisanos/launcher/theme/W;

    invoke-direct {v0}, Lcom/smartisanos/launcher/theme/W;-><init>()V

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/W;->run()V

    return-void
.end method

.method public declared-synchronized Uf()Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/t;->lt:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Vf()Lcom/smartisanos/launcher/theme/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/t;->nt:Lcom/smartisanos/launcher/theme/v;

    return-object p0
.end method

.method public declared-synchronized Wf()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->dt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Xf()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->ct:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Yf()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->jt:Z

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/Sa;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/t;->At:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/Sa;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/t;->At:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1770

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/t;->xt:Lcom/smartisanos/launcher/theme/Z;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/theme/Z;->mg()V

    .line 6
    iput-boolean v2, p0, Lcom/smartisanos/launcher/theme/t;->dt:Z

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->ct:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Zf()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->ft:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->ft:Z

    .line 3
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->et:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->ht:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/Sa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/t;->yt:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/Sa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/t;->yt:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public _f()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->jt:Z

    return-void
.end method

.method public declared-synchronized a(Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 4
    :try_start_0
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->ct:Z

    .line 5
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/t;->lt:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/t;->xt:Lcom/smartisanos/launcher/theme/Z;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/theme/Z;->b(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method

.method public ag()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->gt:Z

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->it:Z

    return-void
.end method

.method public declared-synchronized bg()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->ct:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/t;->dt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Lcom/smartisanos/launcher/theme/v;)V
    .locals 3

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/theme/t;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "changeTheme"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Lc;->Mh()Lcom/smartisanos/smengine/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/I;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/fa;->nb(Z)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/t;->Tf()V

    return-void

    .line 10
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Wq()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-nez v0, :cond_3

    .line 11
    sget-object p1, Lcom/smartisanos/launcher/theme/t;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "### changeTheme: getCurrentPageInWindowForSinglePageMode is null, force completeChangeTheme."

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/t;->Tf()V

    return-void

    .line 13
    :cond_3
    iget-object v0, p1, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    sput-object v0, Lcom/smartisanos/launcher/data/Constants;->THEME_PATH:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    iget-object v2, p1, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/Ra;->a(Landroid/content/res/AssetManager;)V

    .line 15
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->aa(Z)V

    .line 16
    iput-boolean v1, p0, Lcom/smartisanos/launcher/theme/t;->et:Z

    .line 17
    iput-boolean v1, p0, Lcom/smartisanos/launcher/theme/t;->ft:Z

    .line 18
    iput-boolean v1, p0, Lcom/smartisanos/launcher/theme/t;->gt:Z

    .line 19
    iput-boolean v1, p0, Lcom/smartisanos/launcher/theme/t;->ht:Z

    .line 20
    iput-boolean v1, p0, Lcom/smartisanos/launcher/theme/t;->it:Z

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 23
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/t;->nt:Lcom/smartisanos/launcher/theme/v;

    .line 24
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/t;->cx()V

    .line 25
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/t;->ax()V

    .line 26
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/t;->Sf()V

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    const/high16 p1, 0x41c80000    # 25.0f

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Eb;->m(F)V

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Ha;->oe()V

    return-void
.end method

.method public e(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit16 v0, v0, 0xc8

    div-int/lit8 v0, v0, 0xf

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit16 v1, v1, 0xc8

    div-int/lit8 v1, v1, 0xf

    .line 6
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 7
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 8
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/RectF;

    int-to-float v0, v0

    const v6, 0x40d55555

    sub-float/2addr v0, v6

    int-to-float v1, v1

    sub-float/2addr v1, v6

    invoke-direct {v5, v6, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x0

    invoke-virtual {v3, p1, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v0, 0x4

    const/4 v1, 0x2

    .line 9
    invoke-static {v2, v0, v1}, Lcom/smartisanos/launcher/e/s;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/smartisanos/smengine/Da;

    invoke-direct {v1, v0}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    .line 11
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    const-string v3, "t_blur_anim_background"

    .line 12
    invoke-virtual {p0, v3, v1}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 13
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 14
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public f(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/J;->H(I)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/J;->G(I)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->l(Z)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ph()V

    .line 7
    new-instance v0, Lcom/smartisanos/launcher/theme/g;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, p1}, Lcom/smartisanos/launcher/theme/g;-><init>(Lcom/smartisanos/launcher/theme/t;ILandroid/graphics/Bitmap;)V

    const/4 p0, 0x0

    .line 8
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 9
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return-void
.end method
