.class public Lcom/smartisanos/launcher/view/Eb;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Lcom/smartisanos/smengine/La;
.implements Lcom/smartisanos/smengine/B;


# static fields
.field private static iy:Lcom/smartisanos/launcher/view/Eb;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Ax:Z

.field private Bx:Z

.field private Cx:Z

.field private Dx:Lcom/smartisanos/smengine/F;

.field private Ex:Lcom/smartisanos/smengine/F;

.field private Fx:Lcom/smartisanos/smengine/F;

.field private Gx:Lcom/smartisanos/smengine/F;

.field private Hx:Lcom/smartisanos/smengine/F;

.field private Ix:Lcom/smartisanos/launcher/view/b/t;

.field public Jx:Z

.field private Kx:Z

.field private Lx:I

.field private Mx:J

.field private Nx:I

.field private Ox:I

.field public final Px:Ljava/lang/String;

.field private Qx:Lcom/smartisanos/smengine/Camera;

.field private Rx:I

.field private Sx:I

.field private Tx:F

.field private Ux:Lcom/smartisanos/smengine/Camera;

.field private Vx:I

.field private Wx:I

.field private Xu:Lcom/smartisanos/launcher/view/V;

.field public volatile Xw:Z

.field private Xx:Lcom/smartisanos/launcher/view/a/g;

.field public volatile Yw:Z

.field private Yx:Lcom/smartisanos/smengine/g;

.field public volatile Zw:Z

.field Zx:Ljava/lang/StringBuilder;

.field public volatile _w:Z

.field private _x:J

.field public volatile ax:Z

.field private ay:J

.field public volatile bx:Z

.field private by:Z

.field public volatile cx:Z

.field private cy:Lcom/smartisanos/launcher/view/activeicon/H;

.field public volatile dx:Z

.field private dy:Z

.field public volatile ex:Z

.field private ey:Z

.field private fx:F

.field private fy:Z

.field private gx:Z

.field private gy:Lcom/smartisanos/smengine/n;

.field private hx:Z

.field private hy:Lcom/smartisanos/launcher/view/a/g;

.field private ix:Lcom/smartisanos/smengine/a/i;

.field private jx:Lcom/smartisanos/smengine/y;

.field private volatile kx:Z

.field private lx:Lcom/smartisanos/launcher/view/db;

.field private mBackground:Lcom/smartisanos/smengine/F;

.field private mButtonState:I

.field private mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

.field private mContext:Landroid/app/Activity;

.field private mStartTime:J

.field private mx:Lcom/smartisanos/smengine/n;

.field private nx:Z

.field private ox:Lcom/smartisanos/smengine/F;

.field private px:Lcom/smartisanos/launcher/view/b/fa;

.field private qx:Lcom/smartisanos/launcher/view/hc;

.field private rx:Lcom/smartisanos/launcher/view/bb;

.field private sx:Lcom/smartisanos/smengine/F;

.field private tx:Lcom/smartisanos/smengine/F;

.field private ux:Lcom/smartisanos/launcher/view/Lc;

.field private vx:Lcom/smartisanos/launcher/theme/t;

.field public wx:Lcom/smartisanos/smengine/F;

.field private xx:Lcom/smartisanos/smengine/n;

.field private yx:Lcom/smartisanos/smengine/n;

.field private zx:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/Eb;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->ex:Z

    const/high16 v1, 0x41a00000    # 20.0f

    .line 3
    iput v1, p0, Lcom/smartisanos/launcher/view/Eb;->fx:F

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->gx:Z

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->hx:Z

    .line 6
    new-instance v1, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/i;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->ix:Lcom/smartisanos/smengine/a/i;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->jx:Lcom/smartisanos/smengine/y;

    .line 8
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->kx:Z

    .line 9
    new-instance v2, Lcom/smartisanos/launcher/view/db;

    invoke-direct {v2}, Lcom/smartisanos/launcher/view/db;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/Eb;->lx:Lcom/smartisanos/launcher/view/db;

    .line 10
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->nx:Z

    .line 11
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v2, 0x0

    .line 12
    iput v2, p0, Lcom/smartisanos/launcher/view/Eb;->zx:F

    .line 13
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->Ax:Z

    .line 14
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->Bx:Z

    const/4 v3, 0x1

    .line 15
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/Eb;->Cx:Z

    .line 16
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/Eb;->Jx:Z

    .line 17
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->Kx:Z

    .line 18
    iput v0, p0, Lcom/smartisanos/launcher/view/Eb;->Ox:I

    const-string v4, "dock-view"

    .line 19
    iput-object v4, p0, Lcom/smartisanos/launcher/view/Eb;->Px:Ljava/lang/String;

    const/4 v4, -0x1

    .line 20
    iput v4, p0, Lcom/smartisanos/launcher/view/Eb;->Rx:I

    .line 21
    iput v4, p0, Lcom/smartisanos/launcher/view/Eb;->Sx:I

    .line 22
    iput v2, p0, Lcom/smartisanos/launcher/view/Eb;->Tx:F

    .line 23
    iput v4, p0, Lcom/smartisanos/launcher/view/Eb;->Vx:I

    .line 24
    iput v4, p0, Lcom/smartisanos/launcher/view/Eb;->Wx:I

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/Eb;->Zx:Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x0

    .line 26
    iput-wide v5, p0, Lcom/smartisanos/launcher/view/Eb;->_x:J

    .line 27
    iput-wide v5, p0, Lcom/smartisanos/launcher/view/Eb;->ay:J

    .line 28
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->by:Z

    .line 29
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    .line 30
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    .line 31
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->dy:Z

    .line 32
    iput v4, p0, Lcom/smartisanos/launcher/view/Eb;->mButtonState:I

    .line 33
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/Eb;->ey:Z

    .line 34
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/Eb;->fy:Z

    .line 35
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->gy:Lcom/smartisanos/smengine/n;

    .line 36
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "MainView init !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 37
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/theme/t;

    invoke-direct {v0}, Lcom/smartisanos/launcher/theme/t;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->vx:Lcom/smartisanos/launcher/theme/t;

    .line 38
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->vx:Lcom/smartisanos/launcher/theme/t;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/t;->i(Lcom/smartisanos/launcher/theme/t;)V

    return-void
.end method

.method private Ax()Lcom/smartisanos/smengine/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/sb;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/sb;-><init>(Lcom/smartisanos/launcher/view/Eb;I)V

    return-object v0
.end method

.method private Bx()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->qx:Lcom/smartisanos/launcher/view/hc;

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Lcom/smartisanos/launcher/view/hc;

    const-string v1, "mNaviBarView"

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/hc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->qx:Lcom/smartisanos/launcher/view/hc;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->qx:Lcom/smartisanos/launcher/view/hc;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/hc;->init()V

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->qx:Lcom/smartisanos/launcher/view/hc;

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    :cond_2
    return-void
.end method

.method private Cx()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/k;->Xj()Lcom/smartisanos/smengine/Camera;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Lcom/smartisanos/smengine/Camera;

    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/smengine/Camera;-><init>(II)V

    .line 3
    sget v0, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v7, v0

    .line 4
    sget v0, Lcom/smartisanos/launcher/data/Constants;->mainCameraNear:I

    int-to-float v1, v0

    .line 5
    sget v0, Lcom/smartisanos/launcher/data/Constants;->mainCameraFar:I

    int-to-float v2, v0

    .line 6
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    neg-int v3, v0

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v0, v0

    div-float v5, v0, v4

    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v6, v0

    div-float/2addr v6, v4

    neg-int v0, v0

    int-to-float v0, v0

    div-float v8, v0, v4

    move-object v0, p0

    move v4, v5

    move v5, v6

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/Camera;->b(FFFFFF)V

    .line 7
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v7}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/Camera;->g(Lcom/smartisanos/smengine/a/j;)V

    .line 8
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0, v1, v1, v1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sget-object v1, Lcom/smartisanos/smengine/a/j;->QV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/Camera;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V

    .line 9
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v0

    const-string v1, "orthoCamera"

    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/smengine/k;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V

    :cond_0
    return-void
.end method

.method private Dx()V
    .locals 5

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->ox:Lcom/smartisanos/smengine/F;

    const-string v0, "TextureModularColorMaterial"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->ox:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->ox:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->ox:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->ox:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->ox:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {v0, v2, v4}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->ox:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->ox:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->ox:Lcom/smartisanos/smengine/F;

    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sCurrentRenderTarget:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    return-void
.end method

.method private Ex()V
    .locals 4

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/Lc;

    const-string v1, "StatusBar"

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/Lc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->ux:Lcom/smartisanos/launcher/view/Lc;

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->ux:Lcom/smartisanos/launcher/view/Lc;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Fb;->ki()Lcom/smartisanos/smengine/a/j;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->ux:Lcom/smartisanos/launcher/view/Lc;

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->y:F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->ux:Lcom/smartisanos/launcher/view/Lc;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Lc;->updateGeometricState()V

    return-void
.end method

.method private Fx()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/smartisanos/launcher/view/Eb;->Mx:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 3
    iput-wide v0, p0, Lcom/smartisanos/launcher/view/Eb;->Mx:J

    .line 4
    :cond_0
    iget v2, p0, Lcom/smartisanos/launcher/view/Eb;->Lx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/smartisanos/launcher/view/Eb;->Lx:I

    .line 5
    iget v2, p0, Lcom/smartisanos/launcher/view/Eb;->Lx:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lcom/smartisanos/launcher/view/Eb;->Lx:I

    .line 7
    iget-wide v2, p0, Lcom/smartisanos/launcher/view/Eb;->Mx:J

    sub-long v2, v0, v2

    .line 8
    iput-wide v0, p0, Lcom/smartisanos/launcher/view/Eb;->Mx:J

    long-to-float v0, v2

    const v1, 0x3daaaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 9
    iput v0, p0, Lcom/smartisanos/launcher/view/Eb;->Nx:I

    :cond_1
    return-void
.end method

.method private Gx()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 2
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 3
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    cmpg-float v3, v2, v4

    if-gez v3, :cond_0

    .line 4
    sget v3, Lcom/smartisanos/launcher/data/Constants;->navigation_bar_height:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/sa;->sb()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "rectangle.png"

    goto :goto_0

    :cond_1
    const-string v3, "trans_1.png"

    .line 6
    :goto_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    .line 7
    sget v6, Lcom/smartisanos/launcher/data/Constants;->screen_corner_width:F

    sget v7, Lcom/smartisanos/launcher/data/Constants;->screen_corner_height:F

    const/4 v8, 0x1

    const-string v9, "screen_leftTop_corner"

    invoke-static {v9, v6, v7, v4, v8}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v6

    iput-object v6, v0, Lcom/smartisanos/launcher/view/Eb;->Dx:Lcom/smartisanos/smengine/F;

    .line 8
    iget-object v6, v0, Lcom/smartisanos/launcher/view/Eb;->Dx:Lcom/smartisanos/smengine/F;

    const/16 v7, 0x103

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 9
    iget-object v6, v0, Lcom/smartisanos/launcher/view/Eb;->Dx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 10
    iget-object v6, v0, Lcom/smartisanos/launcher/view/Eb;->Dx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v6

    const/high16 v9, -0x40000000    # -2.0f

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v6, v10, v9}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 11
    iget-object v6, v0, Lcom/smartisanos/launcher/view/Eb;->Dx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 12
    iget-object v6, v0, Lcom/smartisanos/launcher/view/Eb;->Dx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 13
    iget-object v6, v0, Lcom/smartisanos/launcher/view/Eb;->Dx:Lcom/smartisanos/smengine/F;

    const/4 v11, 0x7

    invoke-virtual {v6, v11}, Lcom/smartisanos/smengine/SceneNode;->setDepthTestFunc(I)V

    .line 14
    iget-object v6, v0, Lcom/smartisanos/launcher/view/Eb;->Dx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6, v8}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    const-string v6, "TextureModularColorMaterial"

    .line 15
    invoke-static {v6}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v12

    .line 16
    iget-object v13, v0, Lcom/smartisanos/launcher/view/Eb;->Dx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v13, v12}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 17
    iget-object v12, v0, Lcom/smartisanos/launcher/view/Eb;->Dx:Lcom/smartisanos/smengine/F;

    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 18
    iget-object v12, v0, Lcom/smartisanos/launcher/view/Eb;->Dx:Lcom/smartisanos/smengine/F;

    neg-float v13, v1

    const/high16 v14, 0x40000000    # 2.0f

    add-float/2addr v13, v14

    sub-float v15, v2, v14

    invoke-virtual {v12, v13, v15, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 19
    iget-object v12, v0, Lcom/smartisanos/launcher/view/Eb;->Dx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v12}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 20
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_corner_width:F

    sget v14, Lcom/smartisanos/launcher/data/Constants;->screen_corner_height:F

    const-string v11, "screen_leftBottom_corner"

    invoke-static {v11, v12, v14, v4, v8}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v11

    iput-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    .line 21
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11, v7}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 22
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 23
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v11

    invoke-virtual {v11, v10, v9}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 24
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 25
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 26
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Lcom/smartisanos/smengine/SceneNode;->setDepthTestFunc(I)V

    .line 27
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11, v8}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 28
    invoke-static {v6}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v11

    .line 29
    iget-object v12, v0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 30
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 31
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    neg-float v2, v2

    const/high16 v12, 0x40000000    # 2.0f

    add-float/2addr v2, v12

    invoke-virtual {v11, v13, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 32
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    new-instance v12, Lcom/smartisanos/smengine/a/j;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v4, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const v14, 0x40490fdb    # (float)Math.PI

    invoke-virtual {v11, v14, v12}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 33
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/smartisanos/smengine/L;->Da(Z)V

    .line 34
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v11}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 35
    sget v11, Lcom/smartisanos/launcher/data/Constants;->screen_corner_width:F

    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_corner_height:F

    const-string v14, "screen_rightTop_corner"

    invoke-static {v14, v11, v12, v4, v8}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v11

    iput-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    .line 36
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11, v7}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 37
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 38
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v11

    invoke-virtual {v11, v10, v9}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 39
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 40
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 41
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Lcom/smartisanos/smengine/SceneNode;->setDepthTestFunc(I)V

    .line 42
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11, v8}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 43
    invoke-static {v6}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v11

    .line 44
    iget-object v12, v0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 45
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 46
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    new-instance v12, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v12, v4, v13, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const v14, 0x40490fdb    # (float)Math.PI

    invoke-virtual {v11, v14, v12}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 47
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    const/high16 v12, 0x40000000    # 2.0f

    sub-float/2addr v1, v12

    invoke-virtual {v11, v1, v15, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 48
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/smartisanos/smengine/L;->Da(Z)V

    .line 49
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v11}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 50
    sget v11, Lcom/smartisanos/launcher/data/Constants;->screen_corner_width:F

    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_corner_height:F

    const-string v14, "screen_rightBottom_corner"

    invoke-static {v14, v11, v12, v4, v8}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v11

    iput-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    .line 51
    iget-object v11, v0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v11, v7}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 52
    iget-object v7, v0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 53
    iget-object v7, v0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v7

    invoke-virtual {v7, v10, v9}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 54
    iget-object v7, v0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 55
    iget-object v7, v0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 56
    iget-object v7, v0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    const/4 v9, 0x7

    invoke-virtual {v7, v9}, Lcom/smartisanos/smengine/SceneNode;->setDepthTestFunc(I)V

    .line 57
    iget-object v7, v0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 58
    invoke-static {v6}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v6

    .line 59
    iget-object v7, v0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 60
    iget-object v6, v0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 61
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    new-instance v6, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v6, v13, v13, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const v7, 0x40490fdb    # (float)Math.PI

    invoke-virtual {v3, v7, v6}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/a/j;)V

    .line 62
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3, v1, v2, v4}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 63
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->Da(Z)V

    .line 64
    iget-object v0, v0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 65
    invoke-virtual {v5}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method private Hx()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/Eb;->Ox:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private Ix()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "handle MENU KEY DOWN"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Ix:Lcom/smartisanos/launcher/view/b/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->lx:Lcom/smartisanos/launcher/view/db;

    invoke-virtual {p0, v1, v1}, Lcom/smartisanos/launcher/view/db;->b(ZZ)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->rx:Lcom/smartisanos/launcher/view/bb;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/bb;->Bp()V

    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ec;->Rn:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/g;

    .line 14
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/ga;->Di()I

    goto :goto_0

    :cond_3
    return-void

    .line 15
    :cond_4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Ec;->Db(Z)V

    return-void

    .line 16
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/J;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 17
    invoke-static {}, Lsmartisanos/api/WindowManagerSmt;->getInstance()Lsmartisanos/api/WindowManagerSmt;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsmartisanos/api/WindowManagerSmt;->isWindowInthumbMode(Landroid/view/WindowManager;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 18
    invoke-static {}, Lsmartisanos/api/WindowManagerSmt;->getInstance()Lsmartisanos/api/WindowManagerSmt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsmartisanos/api/WindowManagerSmt;->resetWindowOneHandedState(Landroid/view/WindowManager;)V

    .line 19
    new-instance v0, Lcom/smartisanos/launcher/view/rb;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/rb;-><init>(Lcom/smartisanos/launcher/view/Eb;I)V

    const p0, 0x3dcccccd    # 0.1f

    .line 20
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_1

    .line 21
    :cond_6
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->FIRST_USE_MENU_KEY_SWITCH_PAGE_MODE:Z

    if-eqz v0, :cond_7

    .line 22
    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "######### first use menukey."

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 23
    sput-boolean v1, Lcom/smartisanos/launcher/data/Constants;->FIRST_USE_MENU_KEY_SWITCH_PAGE_MODE:Z

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/smartisanos/launcher/data/N;->U(Landroid/content/Context;)V

    .line 26
    :cond_7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->w(Lcom/smartisanos/launcher/view/b/M;)Z

    :goto_1
    return-void
.end method

.method private Jx()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->CONSTANTS_INIT_DONE:Z

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->Yx:Lcom/smartisanos/smengine/g;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->mx:Lcom/smartisanos/smengine/n;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Eb;F)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Eb;->ka(F)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Eb;FFZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/Eb;->c(FFZ)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Eb;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/Eb;->by:Z

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Eb;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Eb;->by:Z

    return p1
.end method

.method static synthetic access$100()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/Eb;)Lcom/smartisanos/launcher/view/b/fa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->gy:Lcom/smartisanos/smengine/n;

    return-object p1
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/Eb;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->xx:Lcom/smartisanos/smengine/n;

    return-object p1
.end method

.method private c(FFZ)V
    .locals 12

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x0

    const-string v2, "mClickCell = "

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Yx:Lcom/smartisanos/smengine/g;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_4

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/g;

    invoke-direct {v0}, Lcom/smartisanos/smengine/g;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Yx:Lcom/smartisanos/smengine/g;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Eb;->Yx:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0, v2, p2, v1}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/smengine/g;FZ)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 9
    new-instance v0, Lcom/smartisanos/smengine/oa;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 10
    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 p2, 0xe

    .line 11
    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    move-object v2, v0

    .line 12
    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    .line 13
    new-instance p2, Lcom/smartisanos/launcher/view/vb;

    invoke-direct {p2, p0}, Lcom/smartisanos/launcher/view/vb;-><init>(Lcom/smartisanos/launcher/view/Eb;)V

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 14
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Eb;->Yx:Lcom/smartisanos/smengine/g;

    invoke-virtual {p2, p1, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 15
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string p2, "mHideCellClickShadowRectAnim 0288434 start"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->Yx:Lcom/smartisanos/smengine/g;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/g;->start()V

    if-eqz p3, :cond_6

    .line 17
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string p2, "mHideCellClickShadowRectAnim forceFinish"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 18
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Yx:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    goto :goto_0

    .line 19
    :cond_4
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_5

    .line 20
    sget-object p1, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " mHideCellClickShadowRectAnim = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Yx:Lcom/smartisanos/smengine/g;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 21
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/16 p1, 0x2000

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 22
    sget-object p0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string p2, "hideCellClickShadow maybe error status. to see full log."

    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    :cond_6
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/smartisanos/launcher/view/Eb;)Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method static synthetic d(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->yx:Lcom/smartisanos/smengine/n;

    return-object p1
.end method

.method static synthetic e(Lcom/smartisanos/launcher/view/Eb;)Lcom/smartisanos/launcher/theme/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->vx:Lcom/smartisanos/launcher/theme/t;

    return-object p0
.end method

.method static synthetic f(Lcom/smartisanos/launcher/view/Eb;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->yx:Lcom/smartisanos/smengine/n;

    return-object p0
.end method

.method static synthetic g(Lcom/smartisanos/launcher/view/Eb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Eb;->wx()V

    return-void
.end method

.method public static getInstance()Lcom/smartisanos/launcher/view/Eb;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->iy:Lcom/smartisanos/launcher/view/Eb;

    return-object v0
.end method

.method public static h(Lcom/smartisanos/launcher/view/Eb;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/smartisanos/launcher/view/Eb;->iy:Lcom/smartisanos/launcher/view/Eb;

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ub;->reset()V

    return-void
.end method

.method private handleBackKey()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "handle BACK KEY UP"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Ix:Lcom/smartisanos/launcher/view/b/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->lx:Lcom/smartisanos/launcher/view/db;

    invoke-virtual {p0, v1, v1}, Lcom/smartisanos/launcher/view/db;->b(ZZ)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->rx:Lcom/smartisanos/launcher/view/bb;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/bb;->Bp()V

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/Ec;->Db(Z)V

    return-void

    .line 11
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->w(Lcom/smartisanos/launcher/view/b/M;)Z

    :cond_4
    return-void
.end method

.method private ka(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Eb;->wx()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Eb;->by:Z

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/view/pb;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/pb;-><init>(Lcom/smartisanos/launcher/view/Eb;I)V

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/smengine/p;->a(Lcom/smartisanos/smengine/n;F)V

    return-void
.end method

.method private lc(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/smartisanos/launcher/view/Eb;->Ox:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/smartisanos/launcher/view/Eb;->Ox:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/smartisanos/launcher/view/Eb;->Ox:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/smartisanos/launcher/view/Eb;->Ox:I

    :goto_0
    return-void
.end method

.method private mc(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Dx:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 2
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private t(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    return-void
.end method

.method private u(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v0

    .line 2
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### parent name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    .line 4
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 6
    sget-boolean v5, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v6, "-----------------------"

    if-eqz v5, :cond_1

    sget-object v5, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 7
    :cond_1
    sget-boolean v5, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#### child name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  child ."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " getName() ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 8
    :cond_2
    sget-boolean v5, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#### c.visible = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 9
    :cond_3
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#### sceneNode.pos.x = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " pos.y = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " pos.z = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 10
    :cond_4
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_1
    if-ge v2, v0, :cond_7

    .line 11
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 12
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/Eb;->u(Lcom/smartisanos/smengine/SceneNode;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private wx()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Wq()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object v1

    move v4, v2

    .line 5
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 6
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    check-cast v5, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 10
    invoke-virtual {v5}, Lcom/smartisanos/launcher/data/FolderInfo;->kf()Ljava/util/ArrayList;

    move-result-object v5

    .line 11
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Fo()Ljava/util/ArrayList;

    move-result-object p0

    .line 14
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 15
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 18
    check-cast v1, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 19
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/FolderInfo;->kf()Ljava/util/ArrayList;

    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    return-void

    .line 22
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 25
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v4

    if-nez v4, :cond_5

    .line 26
    iget-object v4, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_5
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 28
    iget-wide v5, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "messagesNumber"

    .line 29
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    iget-wide v5, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v5, v6}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    if-eqz v2, :cond_6

    const-string v2, "newlyInstalled"

    .line 31
    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    :cond_6
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 33
    :cond_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 34
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->VZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/data/F;->a(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V

    .line 35
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    .line 36
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 37
    invoke-static {p0, v1}, Lcom/smartisanos/launcher/badge/BadgeBridge;->suppressPackages(Landroid/content/Context;Ljava/util/Collection;)V

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/e/s;->a(Landroid/content/Context;Ljava/util/List;)V

    :cond_9
    return-void
.end method

.method private xx()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->isMeetingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getMeetingDockWH()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    int-to-float v4, v4

    const/4 v5, 0x0

    const-string v6, "mBottomMeetingMaskNode"

    invoke-static {v6, v2, v4, v5, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/view/Eb;->Hx:Lcom/smartisanos/smengine/F;

    const-string v2, "TextureModularMaskMaterial"

    .line 5
    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    .line 6
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Eb;->Hx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v4, v2}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->wg()Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v4, "meetingMask"

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v6

    .line 9
    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 10
    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 11
    :cond_1
    new-instance v7, Lcom/smartisanos/smengine/Da;

    invoke-direct {v7, v2}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 12
    invoke-virtual {v7, v3}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 13
    invoke-virtual {v6, v4, v7}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 14
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Eb;->Hx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 15
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    aget v0, v0, v3

    sub-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sget v2, Lcom/smartisanos/launcher/data/Constants;->LAUNCHPAD_DOCK_PADDING:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 16
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Eb;->Hx:Lcom/smartisanos/smengine/F;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v5, v0, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Hx:Lcom/smartisanos/smengine/F;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Hx:Lcom/smartisanos/smengine/F;

    const/16 v2, 0x103

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Hx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Hx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {v0, v2, v4}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Hx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Hx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Hx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 24
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Q;->Xk()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Hx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 25
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Hx:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    :cond_2
    return-void
.end method

.method private y(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-eqz v0, :cond_y_page_missing

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/b/fa;->o(Lcom/smartisanos/launcher/view/b/M;)I

    move-result v0

    .line 2
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###showFloatPageNode###page index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", page = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pre-floating page = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->rx:Lcom/smartisanos/launcher/view/bb;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/view/bb;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    const-string v2, "Float_Page_Node"

    invoke-direct {v0, v2, p1, v1}, Lcom/smartisanos/launcher/view/bb;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/b/M;Lcom/smartisanos/launcher/view/b/fa;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->rx:Lcom/smartisanos/launcher/view/bb;

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->rx:Lcom/smartisanos/launcher/view/bb;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/bb;->Ep()V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->rx:Lcom/smartisanos/launcher/view/bb;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/fa;->HQ:Z

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Jg()V

    :cond_y_page_missing
    return-void
.end method

.method private yx()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const-string v2, "TextureModularColorMaterial"

    const-string v3, "background.png"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    .line 3
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/smartisanos/launcher/view/Fb;->j(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v6

    .line 5
    iget v6, v6, Lcom/smartisanos/smengine/a/i;->y:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 6
    sget-object v6, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create Bg MultiPageMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/b/fa;->getMultiPageMode()I

    move-result v9

    invoke-static {v9}, Lcom/smartisanos/launcher/data/Constants;->printPageMode(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    sget-object v6, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prop.dock_height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", prop.dock_margin_bottom = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_margin_bottom:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    .line 9
    invoke-static {v1}, Lcom/smartisanos/launcher/view/Fb;->i(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    .line 10
    invoke-static {v1}, Lcom/smartisanos/launcher/view/Fb;->h(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v8

    .line 11
    iget v9, v8, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v8, Lcom/smartisanos/smengine/a/j;->y:F

    const-string v11, "mBg_mainView"

    invoke-static {v11, v9, v10, v7, v5}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v9

    iput-object v9, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    .line 12
    iget-object v9, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 13
    invoke-static {v1}, Lcom/smartisanos/launcher/view/Fb;->g(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v9

    .line 14
    iget-object v10, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    iget v11, v9, Lcom/smartisanos/smengine/a/j;->x:F

    iget v12, v9, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v10, v11, v12, v7}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 15
    iget-object v10, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 16
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 17
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    const/high16 v10, -0x40000000    # -2.0f

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v3, v11, v10}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 18
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 19
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    const/4 v12, 0x2

    invoke-virtual {v3, v12}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 20
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 21
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 22
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 23
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 24
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const/16 v3, 0x8

    new-array v15, v3, [F

    .line 25
    iget v13, v9, Lcom/smartisanos/smengine/a/j;->x:F

    iget v14, v9, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, v9, Lcom/smartisanos/smengine/a/j;->z:F

    const/16 v16, 0x0

    iget v3, v8, Lcom/smartisanos/smengine/a/j;->x:F

    iget v12, v8, Lcom/smartisanos/smengine/a/j;->y:F

    move-object/from16 v20, v15

    move v15, v9

    move/from16 v17, v3

    move/from16 v18, v12

    move-object/from16 v19, v20

    invoke-static/range {v13 .. v19}, Lcom/smartisanos/launcher/e/s;->a(FFFZFF[F)V

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mesh_"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/smartisanos/smengine/z;->Ga(Ljava/lang/String;)Lcom/smartisanos/smengine/y;

    move-result-object v9

    if-nez v9, :cond_2

    .line 28
    iget-object v9, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object v9

    .line 29
    iget-object v12, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v12, v9}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 30
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object v12

    invoke-virtual {v12, v3, v9}, Lcom/smartisanos/smengine/z;->a(Ljava/lang/String;Lcom/smartisanos/smengine/y;)Lcom/smartisanos/smengine/y;

    goto :goto_0

    .line 31
    :cond_2
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v3, v9}, Lcom/smartisanos/smengine/SceneNode;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 32
    :goto_0
    invoke-virtual {v9, v4}, Lcom/smartisanos/smengine/y;->Ua(I)[F

    move-result-object v3

    if-nez v3, :cond_3

    move-object/from16 v3, v20

    .line 33
    invoke-virtual {v9, v4, v3}, Lcom/smartisanos/smengine/y;->c(I[F)V

    goto :goto_1

    :cond_3
    move-object/from16 v3, v20

    .line 34
    invoke-virtual {v9, v4, v3}, Lcom/smartisanos/smengine/y;->d(I[F)V

    .line 35
    :goto_1
    iget v3, v8, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v8, Lcom/smartisanos/smengine/a/j;->y:F

    const-string v9, "mBackgroundColorRect"

    invoke-static {v9, v3, v8, v7, v5}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v3

    iput-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    .line 36
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 37
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 38
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    invoke-virtual {v2, v11, v10}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 39
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 40
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 41
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 42
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 43
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v8, 0x5

    invoke-virtual {v2, v3, v8, v4, v5}, Lcom/smartisanos/smengine/L;->c(IIII)V

    .line 44
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 45
    invoke-static {v1}, Lcom/smartisanos/launcher/view/Fb;->g(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 46
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v2, v3, v1, v7}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 47
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const-string v1, "mBackgroundColorRect_TextureName"

    .line 48
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 49
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 50
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v4, 0xff

    .line 51
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 52
    new-instance v3, Lcom/smartisanos/smengine/Da;

    invoke-direct {v3, v2}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 53
    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 54
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 55
    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sBGColorInLargeScreen:Lcom/smartisanos/smengine/a/k;

    if-eqz v1, :cond_4

    .line 56
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    iget v3, v1, Lcom/smartisanos/smengine/a/k;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/k;->y:F

    iget v5, v1, Lcom/smartisanos/smengine/a/k;->z:F

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_2

    .line 57
    :cond_4
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v7, v7, v7, v7}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 58
    :goto_2
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Eb;->sx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    .line 59
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    .line 60
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->c(Lcom/smartisanos/smengine/SceneNode;)V

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 61
    invoke-static {v1}, Lcom/smartisanos/launcher/view/Fb;->h(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v6

    .line 62
    iget v7, v6, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v6, Lcom/smartisanos/smengine/a/j;->y:F

    iget v6, v6, Lcom/smartisanos/smengine/a/j;->z:F

    const-string v9, "background"

    invoke-static {v9, v7, v8, v6, v5}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v6

    iput-object v6, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    .line 63
    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    .line 64
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez v6, :cond_6

    const-string v2, "TexturePreColorMaterial"

    .line 65
    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v2

    .line 66
    iget-object v6, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 67
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 68
    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->l(Lcom/smartisanos/launcher/theme/v;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 69
    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v6

    .line 71
    new-instance v7, Lcom/smartisanos/smengine/Da;

    invoke-direct {v7, v1}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    invoke-virtual {v6, v3, v7}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 73
    invoke-virtual {v7, v5}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 74
    invoke-virtual {v7, v5}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    goto :goto_3

    .line 75
    :cond_6
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-static {v3}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 76
    :goto_3
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 77
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 78
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 79
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 80
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 81
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 82
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 83
    iget-object v0, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method

.method private zx()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/smartisanos/launcher/view/V;

    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode()I

    move-result v2

    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getMultiPageMode()I

    move-result v3

    const-string v4, "dock-view"

    invoke-direct {v1, v4, v2, v3}, Lcom/smartisanos/launcher/view/V;-><init>(Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/x;->d(Lcom/smartisanos/launcher/view/V;)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->create()V

    .line 9
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->c(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v4, v1, Lcom/smartisanos/smengine/a/j;->y:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v2, v3, v4, v1}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 11
    invoke-static {v0}, Lcom/smartisanos/launcher/view/x;->b(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/k;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Eb;->t(Lcom/smartisanos/smengine/SceneNode;)V

    .line 14
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-void
.end method


# virtual methods
.method public Ah()Lcom/smartisanos/launcher/view/bb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->rx:Lcom/smartisanos/launcher/view/bb;

    return-object p0
.end method

.method public Bh()Lcom/smartisanos/launcher/view/db;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->lx:Lcom/smartisanos/launcher/view/db;

    return-object p0
.end method

.method public Ch()Lcom/smartisanos/launcher/view/b/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Ix:Lcom/smartisanos/launcher/view/b/t;

    return-object p0
.end method

.method public Dh()Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getRootView()Lcom/smartisanos/launcher/view/RootView;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->sr()I

    move-result v0

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    .line 6
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Ha;->rp()Lcom/smartisanos/launcher/animations/a/i;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {v4}, Lcom/smartisanos/launcher/animations/a/i;->ie()F

    move-result v4

    .line 9
    sget-boolean v6, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v6, :cond_1

    .line 10
    sget-object v6, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getGLSurfaceViewScreenStatus pageScrollProgress = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    goto :goto_0

    .line 11
    :cond_2
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    iget-object v4, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    .line 13
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/P;

    .line 14
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/P;->getTranslateX()F

    move-result v4

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v1

    .line 15
    :goto_1
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v5, :cond_5

    .line 16
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->Dl()I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v5

    invoke-static {v5}, Lcom/smartisanos/launcher/view/x;->d(Lcom/smartisanos/launcher/data/LayoutProperty;)F

    move-result v5

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/J;->getRootView()Lcom/smartisanos/launcher/view/RootView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/RootView;->U()F

    move-result v6

    .line 18
    sget-boolean v7, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v7, :cond_4

    .line 19
    sget-object v7, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getGLSurfaceViewScreenStatus touchDownY = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " dockTopLocWithAndroidCoorY = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_4
    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_5

    cmpl-float v5, v6, v5

    if-lez v5, :cond_5

    move v5, v1

    goto :goto_2

    :cond_5
    move v5, v3

    .line 20
    :goto_2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v6

    xor-int/2addr v6, v3

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v7

    xor-int/2addr v7, v3

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v8

    xor-int/2addr v8, v3

    .line 23
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Ha;->op()I

    move-result v9

    const/16 v10, 0x10

    if-eq v9, v10, :cond_6

    move v9, v3

    goto :goto_3

    :cond_6
    move v9, v1

    .line 24
    :goto_3
    iget-object v10, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    if-nez v10, :cond_7

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Yx:Lcom/smartisanos/smengine/g;

    if-nez p0, :cond_7

    move p0, v3

    goto :goto_4

    :cond_7
    move p0, v1

    .line 25
    :goto_4
    sget-boolean v10, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v10, :cond_8

    .line 26
    sget-object v10, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getGLSurfaceViewScreenStatus screenIndex = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 27
    sget-object v10, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getGLSurfaceViewScreenStatus folderClosed = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 28
    sget-object v10, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getGLSurfaceViewScreenStatus firstPageInCenter = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 29
    sget-object v10, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getGLSurfaceViewScreenStatus notThemeAnim = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 30
    sget-object v10, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getGLSurfaceViewScreenStatus notDragObject = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 31
    sget-object v10, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getGLSurfaceViewScreenStatus notTouchDownInDock = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 32
    sget-object v10, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getGLSurfaceViewScreenStatus notGridSwitch = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 33
    sget-object v10, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getGLSurfaceViewScreenStatus maybeNotGesture = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 34
    sget-object v10, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getGLSurfaceViewScreenStatus notHasClickCell = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_8
    if-eqz v2, :cond_a

    if-eqz v6, :cond_a

    if-eqz v7, :cond_a

    if-eqz v5, :cond_a

    if-eqz v8, :cond_a

    if-eqz v9, :cond_a

    if-eqz p0, :cond_a

    if-nez v0, :cond_9

    if-eqz v4, :cond_9

    move v1, v3

    .line 35
    :cond_9
    sput-boolean v1, Lcom/smartisanos/launcher/view/RootView;->Gd:Z

    .line 36
    sput-boolean v3, Lcom/smartisanos/launcher/view/RootView;->Hd:Z

    return v3

    .line 37
    :cond_a
    sput-boolean v1, Lcom/smartisanos/launcher/view/RootView;->Gd:Z

    .line 38
    sput-boolean v1, Lcom/smartisanos/launcher/view/RootView;->Hd:Z

    :cond_b
    :goto_5
    return v1
.end method

.method public Eh()Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Hx:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public Fh()Lcom/smartisanos/launcher/view/hc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->qx:Lcom/smartisanos/launcher/view/hc;

    return-object p0
.end method

.method public Gh()Lcom/smartisanos/launcher/view/b/fa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    return-object p0
.end method

.method public Hh()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/Eb;->Ox:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Ih()Lcom/smartisanos/launcher/view/b/fa;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Ix:Lcom/smartisanos/launcher/view/b/t;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Ix:Lcom/smartisanos/launcher/view/b/t;

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/t;->Yr()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Ix:Lcom/smartisanos/launcher/view/b/t;

    return-object p0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    return-object p0
.end method

.method public Jh()Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->ox:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public Kh()Lcom/smartisanos/smengine/a/k;
    .locals 4

    .line 1
    new-instance p0, Lcom/smartisanos/smengine/a/k;

    sget v0, Lcom/smartisanos/launcher/data/Constants;->LAUNCHPAD_DOCK_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v1, v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->LAUNCHPAD_DOCK_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    return-object p0
.end method

.method public Lh()Lcom/smartisanos/smengine/a/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->ix:Lcom/smartisanos/smengine/a/i;

    return-object p0
.end method

.method public Mh()Lcom/smartisanos/launcher/view/Lc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->ux:Lcom/smartisanos/launcher/view/Lc;

    return-object p0
.end method

.method public Nh()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x0

    const/16 v2, 0x2000

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideCellClickShadow isTransparentTheme = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideCellClickShadow isSinglePageMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideCellClickShadow isInFolder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Lcom/smartisanos/launcher/view/ub;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/ub;-><init>(Lcom/smartisanos/launcher/view/Eb;I)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideCellClickShadow hideCell "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->setName(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 11
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideCellClickShadow send event. hideCell = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/smartisanos/launcher/view/a/g;->b(FZ)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    return-void

    .line 19
    :cond_5
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_6

    .line 20
    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mClickCell = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_6

    .line 22
    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mClickCell itemInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 23
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 24
    sget-object p0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "maybe error status. to see full log."

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    :cond_7
    :goto_1
    return-void
.end method

.method public Oh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->rx:Lcom/smartisanos/launcher/view/bb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->rx:Lcom/smartisanos/launcher/view/bb;

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Jg()V

    return-void
.end method

.method public Ph()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ua;->jc()Z

    move-result p0

    if-nez p0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ua;->hc()Z

    move-result p0

    if-nez p0, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ua;->ic()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    const/4 v0, 0x1

    const/16 v1, 0x400

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/J;->b(ZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Qh()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/Eb;->kx:Z

    return p0
.end method

.method public Rh()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/Eb;->hx:Z

    return p0
.end method

.method public Sh()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/Eb;->nx:Z

    return p0
.end method

.method public Th()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public Uh()Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/V;->Uh()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Uh()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public V(Z)V
    .locals 0

    return-void
.end method

.method public Vh()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Eb;->Jx()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/J;->_f:Z

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "loadPage return by DATA_INIT_RUNNING is true"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    new-instance v0, Lcom/smartisanos/launcher/view/b/fa;

    const-string v1, "PageView"

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/b/fa;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->init()V

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Eb;->Ex()V

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Eb;->yx()V

    .line 10
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Eb;->Bx()V

    .line 11
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "unlock all package !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 12
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/Aa;->qc()Ljava/util/HashMap;

    move-result-object v2

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 17
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v4, :cond_4

    .line 18
    iget-object v6, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 19
    iget-byte v7, v4, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-eqz v7, :cond_5

    goto :goto_0

    .line 20
    :cond_5
    iget v7, v4, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    if-ne v7, v5, :cond_6

    .line 21
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 22
    iget-object v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    if-eqz v7, :cond_7

    const/4 v5, -0x1

    if-ne v7, v5, :cond_4

    .line 23
    :cond_7
    iget-object v5, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 24
    iget-object v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    .line 25
    invoke-static {v2, v0, v5}, Lcom/smartisanos/launcher/e/s;->a(ZLjava/util/List;I)V

    .line 26
    invoke-static {v2, v1, v2}, Lcom/smartisanos/launcher/e/s;->a(ZLjava/util/List;I)V

    .line 27
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->oh()V

    .line 28
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Eb;->zx()V

    .line 29
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Eb;->Dx()V

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Eb;->Z(Z)V

    .line 31
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v1

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Ha;->c(Lcom/smartisanos/launcher/view/b/fa;)V

    .line 32
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v1

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Ha;->r(Lcom/smartisanos/launcher/view/V;)V

    .line 33
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateGeometricState()V

    .line 34
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/smartisanos/smengine/k;->Vj()Lcom/smartisanos/smengine/Camera;

    move-result-object v1

    .line 36
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    .line 37
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 38
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v5, :cond_normal_theme_wallpaper_uri

    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->sWallpaperUri:Ljava/lang/String;

    goto :goto_theme_wallpaper_uri

    :cond_normal_theme_wallpaper_uri
    const/4 v5, 0x0

    :goto_theme_wallpaper_uri

    invoke-static {v3, v5}, Lcom/smartisanos/launcher/e/s;->n(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 39
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v5, :cond_9

    .line 40
    invoke-static {v4, v3}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/launcher/theme/v;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 41
    :cond_9
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v5

    const-string v6, "background.png"

    .line 42
    invoke-static {v6}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 43
    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 44
    new-instance v7, Lcom/smartisanos/smengine/Da;

    invoke-direct {v7, v3}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 46
    invoke-virtual {v7, v0}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 47
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->uh()Lcom/smartisanos/smengine/F;

    move-result-object v3

    .line 48
    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setSceneNodeForceRender(Z)V

    .line 49
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/F;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 50
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/SceneNode;->setSceneNodeForceRender(Z)V

    .line 51
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->wt()V

    .line 52
    new-instance v1, Lcom/smartisanos/launcher/view/Ab;

    const/16 v6, 0x64

    invoke-direct {v1, p0, v6, v5, v3}, Lcom/smartisanos/launcher/view/Ab;-><init>(Lcom/smartisanos/launcher/view/Eb;ILcom/smartisanos/smengine/Ea;Lcom/smartisanos/smengine/F;)V

    const/4 v3, 0x0

    .line 53
    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 54
    :cond_a
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Eb;->Gx()V

    .line 55
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v1, :cond_b

    .line 56
    invoke-static {}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->s()V

    .line 57
    :cond_b
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/Da;->tc()V

    .line 58
    invoke-static {}, Lcom/smartisanos/launcher/Aa;->oc()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 59
    invoke-static {}, Lcom/smartisanos/launcher/view/b/t;->as()V

    .line 60
    :cond_c
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_d

    .line 61
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1, v4, v2, v0}, Lcom/smartisanos/launcher/view/b/fa;->b(Lcom/smartisanos/launcher/view/b/M;IZ)Z

    .line 62
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->pr()Lcom/smartisanos/launcher/animations/Qa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/Qa;->Sd()V

    .line 63
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/d;->Oj()V

    .line 64
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Eb;->xx()V

    .line 65
    :cond_d
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->kx:Z

    .line 66
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->vg()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 67
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Gg()V

    :cond_e
    return-void

    .line 68
    :cond_f
    sget-object p0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "loadPage return by Launcher is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method

.method public W(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Eb;->Cx:Z

    return-void
.end method

.method public Wh()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->Ax:Z

    return-void
.end method

.method public X(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->hx:Z

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/Qa;->Cc()V

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Eb;->hx:Z

    return-void
.end method

.method public Xh()V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x7530

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lcom/smartisanos/launcher/view/Eb;->a(ZJ)V

    return-void
.end method

.method public Y(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Eb;->Kx:Z

    return-void
.end method

.method public Yh()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWEEP_MESSAGE_FLAG:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->by:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->by:Z

    .line 4
    invoke-static {}, Laurelienribon/tweenengine/h;->Ha()Laurelienribon/tweenengine/h;

    move-result-object v0

    invoke-virtual {v0}, Laurelienribon/tweenengine/h;->Ga()Laurelienribon/tweenengine/h;

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Wq()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/b/M;->d(Laurelienribon/tweenengine/h;)V

    .line 7
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/V;->d(Laurelienribon/tweenengine/h;)V

    .line 11
    :cond_3
    invoke-virtual {v0}, Laurelienribon/tweenengine/h;->getChildren()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Laurelienribon/tweenengine/h;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 12
    invoke-virtual {v0}, Laurelienribon/tweenengine/h;->end()Laurelienribon/tweenengine/h;

    .line 13
    new-instance v1, Lcom/smartisanos/launcher/view/Db;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/Db;-><init>(Lcom/smartisanos/launcher/view/Eb;)V

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/b;->a(Laurelienribon/tweenengine/m;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->Zs()Lcom/smartisanos/smengine/d;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/d;->e(Laurelienribon/tweenengine/h;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->by:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public Z(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/smartisanos/launcher/view/Eb;->Ox:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/smartisanos/launcher/view/Eb;->Ox:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/smartisanos/launcher/view/Eb;->Ox:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/smartisanos/launcher/view/Eb;->Ox:I

    :goto_0
    return-void
.end method

.method public Zh()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->gy:Lcom/smartisanos/smengine/n;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->ai()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Eb;->Ax()Lcom/smartisanos/smengine/n;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->gy:Lcom/smartisanos/smengine/n;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->gy:Lcom/smartisanos/smengine/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmergencyUnlockEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->setName(Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->gy:Lcom/smartisanos/smengine/n;

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method public _h()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "### preparePowerOff."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->pr()Lcom/smartisanos/launcher/animations/Qa;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/Qa;->Sd()V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Ix:Lcom/smartisanos/launcher/view/b/t;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->ia(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-eqz v1, :cond_3

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->lx:Lcom/smartisanos/launcher/view/db;

    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/launcher/view/db;->b(ZZ)V

    .line 9
    :cond_3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Mq()V

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/animations/r;->vd()V

    .line 13
    :cond_4
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 14
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v5, "#### prepare poweroff 1"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 15
    :cond_5
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/d;->Og()V

    .line 16
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/d;->Ng()V

    .line 17
    :cond_6
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/d;->Og()V

    .line 19
    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->Pa(Z)Lcom/smartisanos/launcher/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/d;->Ng()V

    .line 20
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 22
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/bb;->Gp()V

    .line 23
    :cond_8
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->xx:Lcom/smartisanos/smengine/n;

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_9
    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/a/g;ZLjava/lang/Runnable;)V
    .locals 8

    .line 17
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 18
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Yx:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 21
    :cond_1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    .line 22
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    const/16 v1, 0x2000

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v0

    if-nez v0, :cond_b

    .line 23
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v0

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_3

    goto/16 :goto_2

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    const/4 v5, 0x0

    if-nez v0, :cond_4

    const-string v0, "cell_click_shadow"

    .line 25
    invoke-static {v0, v4, v4, v5, v3}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    const/16 v6, 0xe1

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 27
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40000000    # -2.0f

    invoke-virtual {v0, v6, v7}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 30
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    const-string v0, "TextureModularColorMaterial"

    .line 31
    invoke-static {v0}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    .line 32
    iget-object v6, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v6, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 33
    :cond_4
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 34
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    goto :goto_0

    .line 35
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    :goto_0
    if-eqz p1, :cond_a

    .line 36
    invoke-virtual {p1, v1, v2}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 37
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Z;->jp()V

    .line 38
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_6

    .line 39
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 40
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Mq()V

    .line 41
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 42
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    if-nez p2, :cond_7

    .line 43
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    invoke-virtual {p2, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 44
    :cond_7
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object p2

    .line 45
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 46
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 47
    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/SceneNode;->getSize(Lcom/smartisanos/smengine/a/j;)V

    .line 48
    iget v0, p2, Lcom/smartisanos/smengine/a/j;->x:F

    .line 49
    iget p2, p2, Lcom/smartisanos/smengine/a/j;->y:F

    .line 50
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v1

    const-string v2, "openapp_shadow.png"

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v1, :cond_9

    .line 51
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Dl()I

    move-result p2

    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p2

    .line 52
    iget v0, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 53
    iget v1, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height_dock:F

    .line 54
    sget-boolean v7, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v7, :cond_8

    .line 55
    iget v1, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    .line 56
    :cond_8
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    div-float/2addr v0, v6

    div-float/2addr v1, v6

    invoke-virtual {p2, v0, v1, v5}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 58
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 59
    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 60
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    iget v0, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iget p2, p2, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {p1, v0, p2, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    goto :goto_1

    .line 61
    :cond_9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    div-float/2addr v0, v6

    div-float/2addr p2, v6

    invoke-virtual {v1, v0, p2, v5}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 63
    new-instance p2, Lcom/smartisanos/smengine/a/j;

    invoke-direct {p2}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 64
    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 65
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    iget v0, p2, Lcom/smartisanos/smengine/a/j;->x:F

    iget p2, p2, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {p1, v0, p2, v5}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 66
    :goto_1
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 67
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    if-eqz p3, :cond_a

    .line 68
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void

    :cond_b
    :goto_2
    if-eqz p1, :cond_e

    .line 69
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz p2, :cond_c

    .line 70
    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p2

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p2, v0, v0, v0, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    goto :goto_3

    .line 71
    :cond_c
    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p2

    invoke-virtual {p2, v4, v4, v4, v4}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 72
    :goto_3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    if-eqz p3, :cond_d

    .line 73
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 74
    :cond_d
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 75
    :cond_e
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_f

    .line 76
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_f
    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/activeicon/H;)V
    .locals 2

    .line 180
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 182
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/activeicon/H;->clear(Z)V

    .line 183
    :cond_1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/H;->zq()V

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/view/activeicon/m;)V
    .locals 2

    .line 184
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 186
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/activeicon/m;->clear(Z)V

    .line 187
    :cond_1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/g;FF)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 87
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_0

    .line 88
    sget-object v3, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "UnlockAnim, getBackgroundUnlockAnim"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 89
    :cond_0
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    const/4 v3, 0x0

    .line 90
    invoke-static {v3}, Lcom/smartisanos/launcher/e/s;->l(Lcom/smartisanos/launcher/theme/v;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 91
    iget-object v5, v0, Lcom/smartisanos/launcher/view/Eb;->vx:Lcom/smartisanos/launcher/theme/t;

    invoke-virtual {v5, v3}, Lcom/smartisanos/launcher/theme/t;->e(Landroid/graphics/Bitmap;)V

    .line 92
    sget v3, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    int-to-float v3, v3

    .line 93
    sget v5, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v5, v5

    .line 94
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v6

    const-string v7, "TextureModularColorMaterial"

    .line 95
    invoke-static {v7}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v8

    .line 96
    sget v9, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v9, v9

    const/high16 v10, 0x43480000    # 200.0f

    add-float/2addr v9, v10

    .line 97
    sget v11, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v11, v11

    add-float/2addr v11, v10

    add-float/2addr v3, v5

    mul-float/2addr v9, v3

    div-float/2addr v9, v5

    mul-float/2addr v11, v3

    div-float/2addr v11, v5

    .line 98
    sget v10, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    neg-int v10, v10

    int-to-float v10, v10

    const/4 v12, 0x1

    const-string v13, "backgroundscale"

    invoke-static {v13, v9, v11, v10, v12}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v10

    const-string v13, "t_blur_anim_background"

    .line 99
    invoke-virtual {v10, v13}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v10, v8}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 101
    invoke-virtual {v6, v10}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 102
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 103
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 104
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    const/high16 v13, -0x40000000    # -2.0f

    const/high16 v14, -0x40800000    # -1.0f

    invoke-virtual {v8, v14, v13}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 105
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 106
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    const/4 v15, 0x2

    invoke-virtual {v8, v15}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 107
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 108
    invoke-virtual {v10, v12}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 109
    invoke-virtual {v10, v12}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 110
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 111
    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v8, v8

    .line 112
    sget v15, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v15, v15

    mul-float/2addr v8, v3

    div-float/2addr v8, v5

    mul-float/2addr v15, v3

    div-float/2addr v15, v5

    .line 113
    sget v3, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    neg-int v3, v3

    int-to-float v3, v3

    const-string v5, "backgroundcover"

    invoke-static {v5, v8, v15, v3, v12}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v3

    .line 114
    invoke-static {v7}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v5

    const-string v13, "t_blur_background"

    .line 115
    invoke-virtual {v3, v13}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const/4 v5, 0x0

    .line 117
    invoke-virtual {v3, v5, v5, v5, v5}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 118
    invoke-virtual {v6, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 119
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 120
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 121
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {v5, v14, v4}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 122
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 123
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 124
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 125
    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 126
    invoke-virtual {v3, v12}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 127
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 128
    sget v4, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    neg-int v4, v4

    int-to-float v4, v4

    const-string v5, "backgroundForGaussianThemeUnlock"

    invoke-static {v5, v8, v15, v4, v12}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object v4

    .line 129
    invoke-static {v7}, Lcom/smartisanos/smengine/mymaterial/g;->jb(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v5

    .line 130
    invoke-virtual {v4, v13}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 132
    invoke-virtual {v4, v5, v5, v5, v7}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 133
    invoke-virtual {v6, v4}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 134
    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 135
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/smartisanos/smengine/L;->Ea(Z)V

    .line 136
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    const/high16 v6, -0x40000000    # -2.0f

    invoke-virtual {v5, v14, v6}, Lcom/smartisanos/smengine/L;->n(FF)V

    .line 137
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/L;->setIsEnableBlend(Z)V

    .line 138
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    const/4 v13, 0x2

    invoke-virtual {v5, v13}, Lcom/smartisanos/smengine/L;->Va(I)V

    .line 139
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/smartisanos/smengine/L;->setIsEnableDepthTest(Z)V

    .line 140
    invoke-virtual {v4, v6}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 141
    invoke-virtual {v4, v12}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 142
    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/smartisanos/smengine/L;->Ja(Z)V

    .line 143
    new-instance v5, Lcom/smartisanos/smengine/g;

    invoke-direct {v5}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 144
    new-instance v6, Lcom/smartisanos/smengine/a/k;

    const v13, 0x3d4ccccd    # 0.05f

    invoke-direct {v6, v13, v13, v13, v13}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 145
    new-instance v13, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v13, v7, v7, v7, v7}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 146
    new-instance v14, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v14, v7, v7, v7}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 147
    new-instance v12, Lcom/smartisanos/smengine/a/j;

    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-direct {v12, v0, v0, v7}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const v0, 0x3e99999a    # 0.3f

    .line 148
    invoke-virtual {v10, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    const/4 v0, 0x1

    .line 149
    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr v9, v0

    mul-float/2addr v9, v7

    const/high16 v16, 0x40000000    # 2.0f

    div-float v9, v9, v16

    mul-float/2addr v11, v0

    mul-float/2addr v11, v7

    div-float v11, v11, v16

    .line 150
    invoke-virtual {v10, v9, v11, v7}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    mul-float/2addr v8, v0

    mul-float/2addr v8, v7

    div-float v8, v8, v16

    mul-float/2addr v15, v0

    mul-float/2addr v15, v7

    div-float v15, v15, v16

    .line 151
    invoke-virtual {v3, v8, v15, v7}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 152
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 153
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    const/16 v7, 0xe

    .line 154
    new-instance v8, Lcom/smartisanos/smengine/oa;

    invoke-direct {v8, v10}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const v9, 0x3f19999a    # 0.6f

    mul-float/2addr v9, v2

    .line 155
    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 156
    invoke-virtual {v8, v7}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v19, 0x3

    const v20, 0x3e99999a    # 0.3f

    const v21, 0x3e99999a    # 0.3f

    const v22, 0x3e99999a    # 0.3f

    const v23, 0x3e99999a    # 0.3f

    .line 157
    iget v11, v13, Lcom/smartisanos/smengine/a/k;->x:F

    iget v15, v13, Lcom/smartisanos/smengine/a/k;->y:F

    iget v0, v13, Lcom/smartisanos/smengine/a/k;->z:F

    iget v7, v13, Lcom/smartisanos/smengine/a/k;->w:F

    move-object/from16 v18, v8

    move/from16 v24, v11

    move/from16 v25, v15

    move/from16 v26, v0

    move/from16 v27, v7

    invoke-virtual/range {v18 .. v27}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    const/4 v0, 0x0

    .line 158
    invoke-virtual {v5, v0, v8}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 159
    new-instance v0, Lcom/smartisanos/smengine/oa;

    invoke-direct {v0, v10}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 160
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v7, 0xe

    .line 161
    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/16 v19, 0x1

    .line 162
    iget v7, v14, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v14, Lcom/smartisanos/smengine/a/j;->y:F

    iget v11, v14, Lcom/smartisanos/smengine/a/j;->z:F

    iget v15, v12, Lcom/smartisanos/smengine/a/j;->x:F

    move-object/from16 v17, v10

    iget v10, v12, Lcom/smartisanos/smengine/a/j;->y:F

    move/from16 v26, v9

    iget v9, v12, Lcom/smartisanos/smengine/a/j;->z:F

    move-object/from16 v18, v0

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v11

    move/from16 v23, v15

    move/from16 v24, v10

    move/from16 v25, v9

    invoke-virtual/range {v18 .. v25}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const/4 v7, 0x0

    .line 163
    invoke-virtual {v5, v7, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 164
    new-instance v0, Lcom/smartisanos/smengine/oa;

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 165
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v7, 0xe

    .line 166
    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/c;->Ja(I)V

    .line 167
    iget v7, v14, Lcom/smartisanos/smengine/a/j;->x:F

    iget v8, v14, Lcom/smartisanos/smengine/a/j;->y:F

    iget v9, v14, Lcom/smartisanos/smengine/a/j;->z:F

    iget v10, v12, Lcom/smartisanos/smengine/a/j;->x:F

    iget v11, v12, Lcom/smartisanos/smengine/a/j;->y:F

    iget v12, v12, Lcom/smartisanos/smengine/a/j;->z:F

    move-object/from16 v18, v0

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v12

    invoke-virtual/range {v18 .. v25}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const/4 v7, 0x0

    .line 168
    invoke-virtual {v5, v7, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 169
    new-instance v0, Lcom/smartisanos/smengine/oa;

    invoke-direct {v0, v4}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    const/16 v28, 0x3

    const v29, 0x3e4ccccd    # 0.2f

    const v30, 0x3e4ccccd    # 0.2f

    const v31, 0x3e4ccccd    # 0.2f

    const/high16 v32, 0x3f800000    # 1.0f

    .line 170
    iget v7, v13, Lcom/smartisanos/smengine/a/k;->x:F

    iget v8, v13, Lcom/smartisanos/smengine/a/k;->y:F

    iget v9, v13, Lcom/smartisanos/smengine/a/k;->z:F

    iget v10, v13, Lcom/smartisanos/smengine/a/k;->w:F

    move-object/from16 v27, v0

    move/from16 v33, v7

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v36, v10

    invoke-virtual/range {v27 .. v36}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v7

    .line 171
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    const/4 v2, 0x0

    .line 172
    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 173
    new-instance v0, Lcom/smartisanos/smengine/oa;

    invoke-direct {v0, v3}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 174
    iget v2, v6, Lcom/smartisanos/smengine/a/k;->x:F

    iget v7, v6, Lcom/smartisanos/smengine/a/k;->y:F

    iget v8, v6, Lcom/smartisanos/smengine/a/k;->z:F

    iget v6, v6, Lcom/smartisanos/smengine/a/k;->w:F

    iget v9, v13, Lcom/smartisanos/smengine/a/k;->x:F

    iget v10, v13, Lcom/smartisanos/smengine/a/k;->y:F

    iget v11, v13, Lcom/smartisanos/smengine/a/k;->z:F

    iget v12, v13, Lcom/smartisanos/smengine/a/k;->w:F

    move-object/from16 v27, v0

    move/from16 v29, v2

    move/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v6

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v35, v11

    move/from16 v36, v12

    invoke-virtual/range {v27 .. v36}, Lcom/smartisanos/smengine/oa;->a(IFFFFFFFF)V

    move/from16 v2, v26

    .line 175
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/c;->p(F)V

    .line 176
    new-instance v6, Lcom/smartisanos/launcher/view/Bb;

    move-object/from16 v7, p0

    invoke-direct {v6, v7, v3}, Lcom/smartisanos/launcher/view/Bb;-><init>(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/smengine/F;)V

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/oa;->a(Lcom/smartisanos/smengine/a;)V

    .line 177
    invoke-virtual {v5, v2, v0}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 178
    new-instance v0, Lcom/smartisanos/launcher/view/Cb;

    move-object/from16 v2, v17

    invoke-direct {v0, v7, v2, v3, v4}, Lcom/smartisanos/launcher/view/Cb;-><init>(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/F;Lcom/smartisanos/smengine/F;)V

    invoke-virtual {v5, v0}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    move/from16 v0, p3

    .line 179
    invoke-virtual {v1, v0, v5}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/g;FI)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->ux:Lcom/smartisanos/launcher/view/Lc;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/Lc;->a(Lcom/smartisanos/smengine/g;FI)V

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/mymaterial/f;)V
    .locals 1

    .line 217
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object p0

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    const-string v0, "smartisan_theme_aero"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 218
    check-cast p1, Lcom/smartisanos/smengine/mymaterial/A;

    sget p0, Lcom/smartisanos/launcher/data/Constants;->sGaussianBackGray:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Lcom/smartisanos/smengine/mymaterial/A;->setBlendColor(FFFF)V

    :cond_0
    return-void
.end method

.method public a(Lcom/smartisanos/smengine/y;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->jx:Lcom/smartisanos/smengine/y;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 78
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->jx:Lcom/smartisanos/smengine/y;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/smartisanos/smengine/A;)V
    .locals 1

    const-string v0, "CoverPageClicked"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/ra;->ks()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    iget-object p1, p1, Lcom/smartisanos/launcher/view/b/fa;->GQ:Lcom/smartisanos/launcher/view/b/ra;

    .line 10
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/ra;->js()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->rx:Lcom/smartisanos/launcher/view/bb;

    if-nez p1, :cond_0

    .line 11
    invoke-virtual {p2}, Lcom/smartisanos/smengine/A;->getData()Ljava/util/ArrayList;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result p2

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->yn()Lcom/smartisanos/launcher/view/tc;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 16
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Eb;->y(Lcom/smartisanos/launcher/view/b/M;)V

    :cond_0
    return-void
.end method

.method public a(ZJ)V
    .locals 6

    if-eqz p1, :cond_0

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 81
    iget-wide v2, p0, Lcom/smartisanos/launcher/view/Eb;->_x:J

    iget-wide v4, p0, Lcom/smartisanos/launcher/view/Eb;->ay:J

    add-long/2addr v2, v4

    add-long v4, v0, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 82
    iput-wide v0, p0, Lcom/smartisanos/launcher/view/Eb;->_x:J

    .line 83
    iput-wide p2, p0, Lcom/smartisanos/launcher/view/Eb;->ay:J

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    .line 84
    iput-wide p2, p0, Lcom/smartisanos/launcher/view/Eb;->_x:J

    .line 85
    iput-wide p2, p0, Lcom/smartisanos/launcher/view/Eb;->ay:J

    .line 86
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Eb;->Bx:Z

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/ua;)Z
    .locals 7

    .line 188
    sget-boolean v0, Lcom/smartisanos/launcher/va;->_h:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/ua;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dispatchKeyEvent"

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ua;->getKeyCode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 191
    invoke-static {v1}, Lcom/smartisanos/launcher/animations/ab;->G(Z)V

    return v3

    .line 192
    :cond_1
    sget v0, Lcom/smartisanos/launcher/data/Constants;->VOICE_ASSIT_BY_MENU:I

    const/16 v4, 0x52

    if-nez v0, :cond_8

    .line 193
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ua;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 194
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ua;->getKeyCode()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 195
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/Eb;->ey:Z

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ua;->getKeyCode()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 197
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/Eb;->fy:Z

    :cond_3
    :goto_0
    return v3

    .line 198
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ua;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    .line 199
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ua;->getKeyCode()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 200
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->ey:Z

    if-nez v0, :cond_5

    return v3

    .line 201
    :cond_5
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/Eb;->ey:Z

    goto :goto_1

    .line 202
    :cond_6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ua;->getKeyCode()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 203
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->fy:Z

    if-nez v0, :cond_7

    return v3

    .line 204
    :cond_7
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/Eb;->fy:Z

    .line 205
    :cond_8
    :goto_1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->Ax:Z

    const-string v5, "Hard Key is locked !"

    if-nez v0, :cond_13

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v6, 0x100

    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 206
    :cond_9
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->Kx:Z

    if-eqz v0, :cond_a

    return v3

    .line 207
    :cond_a
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->Ax:Z

    if-eqz v0, :cond_c

    .line 208
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_b

    sget-object p0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_b
    return v3

    .line 209
    :cond_c
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    if-nez v0, :cond_d

    return v3

    .line 210
    :cond_d
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_2

    .line 211
    :cond_e
    sget v0, Lcom/smartisanos/launcher/data/Constants;->VOICE_ASSIT_BY_MENU:I

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/smartisanos/smengine/ua;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_10

    sget v0, Lcom/smartisanos/launcher/data/Constants;->VOICE_ASSIT_BY_MENU:I

    if-eqz v0, :cond_10

    :cond_f
    move v1, v3

    .line 212
    :cond_10
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ua;->getKeyCode()I

    move-result v0

    if-ne v0, v4, :cond_11

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/J;->Wf:Z

    if-eqz v0, :cond_11

    .line 213
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Eb;->Ix()V

    return v3

    .line 214
    :cond_11
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ua;->getKeyCode()I

    move-result p1

    if-ne p1, v2, :cond_12

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p1

    iget-boolean p1, p1, Lcom/smartisanos/launcher/J;->Wf:Z

    if-eqz p1, :cond_12

    .line 215
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Eb;->handleBackKey()V

    :cond_12
    :goto_2
    return v3

    .line 216
    :cond_13
    :goto_3
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_14

    sget-object p0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_14
    return v3
.end method

.method public aa(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Dx:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Ex:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Gx:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Fx:Lcom/smartisanos/smengine/F;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_3
    return-void
.end method

.method public ai()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->gy:Lcom/smartisanos/smengine/n;

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "######## remove emergency unlcok"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->gy:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->gy:Lcom/smartisanos/smengine/n;

    :cond_1
    return-void
.end method

.method public b(F)V
    .locals 3

    .line 4
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/Eb;->ex:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Eb;->Fx()V

    .line 6
    iget p1, p0, Lcom/smartisanos/launcher/view/Eb;->Nx:I

    int-to-float p1, p1

    .line 7
    iget v1, p0, Lcom/smartisanos/launcher/view/Eb;->Lx:I

    if-nez v1, :cond_0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, p1

    float-to-int p1, v1

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Zx:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Zx:Ljava/lang/StringBuilder;

    const-string v2, "jaycefps = "

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Zx:Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 11
    sget-object p1, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Zx:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/Eb;->ax:Z

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->qh()V

    .line 14
    :cond_1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xw:Z

    .line 15
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->Yw:Z

    .line 16
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->Zw:Z

    .line 17
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->_w:Z

    .line 18
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->ax:Z

    .line 19
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->bx:Z

    .line 20
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->cx:Z

    .line 21
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->dx:Z

    return-void
.end method

.method public b(FFF)V
    .locals 3

    .line 22
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 24
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 25
    instance-of v2, v1, Lcom/smartisanos/launcher/view/b/sa;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    check-cast v1, Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {v1, p1, p2, p3}, Lcom/smartisanos/launcher/view/b/ka;->c(FFF)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcom/smartisanos/smengine/g;F)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->ux:Lcom/smartisanos/launcher/view/Lc;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/Lc;->b(Lcom/smartisanos/smengine/g;F)V

    return-void
.end method

.method public ba(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->ox:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Q;->Wk()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->ox:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->ox:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->ox:Lcom/smartisanos/smengine/F;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 7
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/Eb;->mc(Z)V

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->it()Lcom/smartisanos/smengine/J;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/J;->ba(Z)V

    return-void
.end method

.method public bi()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    return-void
.end method

.method public c(Lcom/smartisanos/launcher/view/b/t;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Ix:Lcom/smartisanos/launcher/view/b/t;

    if-nez v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Folder exist, can not open another one!!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->Ix:Lcom/smartisanos/launcher/view/b/t;

    return-void
.end method

.method public c(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 3

    .line 24
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->isMeetingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/L;->Ha(Z)V

    .line 27
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Kh()Lcom/smartisanos/smengine/a/k;

    move-result-object p0

    .line 28
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/L;

    move-result-object p1

    iget v0, p0, Lcom/smartisanos/smengine/a/k;->x:F

    float-to-int v0, v0

    iget v1, p0, Lcom/smartisanos/smengine/a/k;->y:F

    float-to-int v1, v1

    iget v2, p0, Lcom/smartisanos/smengine/a/k;->z:F

    float-to-int v2, v2

    iget p0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    float-to-int p0, p0

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/smartisanos/smengine/L;->d(IIII)V

    :cond_1
    return-void
.end method

.method public ca(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Eb;->nx:Z

    return-void
.end method

.method public ci()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    return-void
.end method

.method public create(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/Eb;->m(II)V

    .line 2
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Eb;->Cx()V

    :cond_0
    return-void
.end method

.method public d(F)V
    .locals 0

    .line 3
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/Eb;->Xw:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->qh()V

    :cond_0
    return-void
.end method

.method public di()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->xx:Lcom/smartisanos/smengine/n;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->xx:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->mx:Lcom/smartisanos/smengine/n;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->mx:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    .line 5
    :cond_1
    new-instance v0, Lcom/smartisanos/launcher/view/qb;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/qb;-><init>(Lcom/smartisanos/launcher/view/Eb;I)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->mx:Lcom/smartisanos/smengine/n;

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->mx:Lcom/smartisanos/smengine/n;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method public dispatchTouchEvent(Lcom/smartisanos/smengine/va;)Z
    .locals 7

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dispatchTouchEvent"

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->dy:Z

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Dh()Z

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    .line 6
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->dy:Z

    if-eqz v0, :cond_4

    .line 7
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "### cancel previous uncompleted touch event###"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->rh()V

    return v1

    .line 9
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ub;->Mc()Z

    move-result v0

    if-nez v0, :cond_6

    .line 10
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/Eb;->dy:Z

    .line 11
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "###got touch down failed due to status is wrong###"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 12
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ub;->Sc()V

    return v1

    .line 13
    :cond_6
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->Bx:Z

    if-eqz v0, :cond_7

    iget-wide v3, p0, Lcom/smartisanos/launcher/view/Eb;->_x:J

    iget-wide v5, p0, Lcom/smartisanos/launcher/view/Eb;->ay:J

    add-long/2addr v3, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_7

    .line 14
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/Eb;->dy:Z

    return v1

    .line 15
    :cond_7
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/Eb;->dy:Z

    .line 16
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "###got touch down success ###"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_8
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_9

    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_a

    .line 18
    :cond_9
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/Eb;->dy:Z

    .line 19
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "###got touch up or cancel success ###"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 20
    :cond_a
    :goto_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_c

    .line 21
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 22
    iget p0, p0, Lcom/smartisanos/launcher/view/Eb;->mButtonState:I

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/va;->setButtonState(I)V

    goto :goto_1

    .line 23
    :cond_b
    invoke-virtual {p1}, Lcom/smartisanos/smengine/va;->getButtonState()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/view/Eb;->mButtonState:I

    .line 24
    :cond_c
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Ha;->dispatchTouchEvent(Lcom/smartisanos/smengine/va;)Z

    move-result p0

    return p0

    :cond_d
    :goto_2
    return v1
.end method

.method public ei()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ah()Lcom/smartisanos/launcher/view/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/bb;->Gp()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->th()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-eqz v0, :cond_theme_page_missing

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Fd()V

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-eqz v0, :cond_theme_page_missing

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_theme_page_ready

    :cond_theme_page_missing
    return-void

    :goto_theme_page_ready

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Ec;->Db(Z)V

    .line 10
    :cond_2
    invoke-static {v3}, Lcom/smartisanos/launcher/data/z;->L(Z)V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v4, 0x10000

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Sc;->iq()V

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/launcher/view/b/fa;->a(Lcom/smartisanos/launcher/view/b/M;I)Z

    .line 14
    invoke-static {v2}, Lcom/smartisanos/launcher/data/z;->L(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->pr()Lcom/smartisanos/launcher/animations/Qa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/Qa;->Sd()V

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 18
    :cond_5
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_7

    const/high16 v4, -0x40800000    # -1.0f

    .line 19
    invoke-virtual {v0, v4, v3}, Lcom/smartisanos/launcher/view/a/g;->b(FZ)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 22
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    .line 24
    iput-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    .line 25
    :cond_7
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->_h()V

    return-void
.end method

.method public fi()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/J;->H(I)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    const/16 v1, 0x400

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/J;->b(ZI)V

    return-void
.end method

.method public g(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p1, p2}, Lcom/smartisanos/launcher/view/b/fa;->g(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/V;->g(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public getBackground()Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->mBackground:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public gi()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->Ax:Z

    return-void
.end method

.method public hi()V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lcom/smartisanos/launcher/view/Eb;->a(ZJ)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ii()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Zm()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Zm()V

    :cond_2
    return-void
.end method

.method public isEditMode()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->So()Lcom/smartisanos/launcher/view/Ec;

    move-result-object p0

    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/Ec;->iO:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "show edit page title name dialog begin"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 3
    :cond_1
    new-instance v0, Lcom/smartisanos/launcher/view/wb;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/launcher/view/wb;-><init>(Lcom/smartisanos/launcher/view/Eb;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ji()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->ux:Lcom/smartisanos/launcher/view/Lc;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Lc;->fq()V

    return-void
.end method

.method public k(FF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->ix:Lcom/smartisanos/smengine/a/i;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/a/i;->set(FF)Lcom/smartisanos/smengine/a/i;

    return-void
.end method

.method public l(Z)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "setEnableStatusbarMessage return by ENABLE_LARGE_SCREEN_MODE true"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lcom/smartisanos/launcher/view/tb;

    invoke-direct {v1, p0, v0, p1}, Lcom/smartisanos/launcher/view/tb;-><init>(Lcom/smartisanos/launcher/view/Eb;Landroid/app/Activity;Z)V

    invoke-static {v1}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public lh()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "TransWallpaper changeWallpaper"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->xx:Lcom/smartisanos/smengine/n;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->xx:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->yx:Lcom/smartisanos/smengine/n;

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->yx:Lcom/smartisanos/smengine/n;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/p;->b(Lcom/smartisanos/smengine/n;)V

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->xx:Lcom/smartisanos/smengine/n;

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->yx:Lcom/smartisanos/smengine/n;

    .line 9
    new-instance v0, Lcom/smartisanos/launcher/view/zb;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/zb;-><init>(Lcom/smartisanos/launcher/view/Eb;I)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->xx:Lcom/smartisanos/smengine/n;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->xx:Lcom/smartisanos/smengine/n;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->mx:Lcom/smartisanos/smengine/n;

    if-nez p0, :cond_3

    const/4 p0, 0x0

    .line 11
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_3
    return-void
.end method

.method public getAnimationTimeScale()F
    .locals 2

    iget v0, p0, Lcom/smartisanos/launcher/view/Eb;->fx:F

    const v1, 0x3d75c28f    # 0.06f, same conversion as update()

    mul-float/2addr v0, v1

    return v0
.end method

.method public m(F)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/smartisanos/launcher/view/Eb;->fx:F

    return-void
.end method

.method public m(II)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/Eb;->Rx:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/smartisanos/launcher/view/Eb;->Sx:I

    if-eq v0, p2, :cond_4

    .line 3
    :cond_1
    iput p1, p0, Lcom/smartisanos/launcher/view/Eb;->Rx:I

    .line 4
    iput p2, p0, Lcom/smartisanos/launcher/view/Eb;->Sx:I

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/smartisanos/launcher/view/Eb;->Tx:F

    .line 6
    iget v0, p0, Lcom/smartisanos/launcher/view/Eb;->Sx:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    if-eq v0, v1, :cond_2

    sub-int/2addr v1, v0

    int-to-float v0, v1

    .line 7
    iput v0, p0, Lcom/smartisanos/launcher/view/Eb;->Tx:F

    .line 8
    :cond_2
    new-instance v0, Lcom/smartisanos/smengine/Camera;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-direct {v0, p1, v1}, Lcom/smartisanos/smengine/Camera;-><init>(II)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Qx:Lcom/smartisanos/smengine/Camera;

    .line 9
    sget p1, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float p1, p1

    .line 10
    sget v0, Lcom/smartisanos/launcher/data/Constants;->mainCameraNear:I

    int-to-float v0, v0

    .line 11
    sget v1, Lcom/smartisanos/launcher/data/Constants;->mainCameraFar:I

    int-to-float v1, v1

    const v2, 0x42652ee0

    .line 12
    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v3, p1}, Lcom/smartisanos/smengine/a/a;->atan2(FF)F

    move-result v3

    mul-float/2addr v3, v2

    .line 13
    iget-object v2, p0, Lcom/smartisanos/launcher/view/Eb;->Qx:Lcom/smartisanos/smengine/Camera;

    mul-float/2addr v3, v4

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/smartisanos/launcher/view/Eb;->Qx:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/smartisanos/smengine/Camera;->d(FFFF)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Qx:Lcom/smartisanos/smengine/Camera;

    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1, p2, p2, p1}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Camera;->g(Lcom/smartisanos/smengine/a/j;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->Qx:Lcom/smartisanos/smengine/Camera;

    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0, p2, p2, p2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sget-object v1, Lcom/smartisanos/smengine/a/j;->QV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p1, v0, v1}, Lcom/smartisanos/smengine/Camera;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V

    .line 16
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->it()Lcom/smartisanos/smengine/J;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/J;->Gk()Lcom/smartisanos/smengine/Ga;

    move-result-object p1

    .line 17
    iget v0, p0, Lcom/smartisanos/launcher/view/Eb;->Tx:F

    cmpl-float p2, v0, p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr v0, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr v0, p2

    float-to-int p2, v0

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Qx:Lcom/smartisanos/smengine/Camera;

    .line 19
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Eb;->Qx:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v2

    .line 20
    invoke-virtual {p1, v1, p2, v0, v2}, Lcom/smartisanos/smengine/Ga;->setViewPort(IIII)V

    goto :goto_0

    .line 21
    :cond_3
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Eb;->Qx:Lcom/smartisanos/smengine/Camera;

    .line 22
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Qx:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v0

    .line 23
    invoke-virtual {p1, v1, v1, p2, v0}, Lcom/smartisanos/smengine/Ga;->setViewPort(IIII)V

    .line 24
    :cond_4
    :goto_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Eb;->Qx:Lcom/smartisanos/smengine/Camera;

    const-string v0, "mainCamera"

    invoke-virtual {p1, v0, p2}, Lcom/smartisanos/smengine/k;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V

    .line 26
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Qx:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/k;->a(Lcom/smartisanos/smengine/Camera;)V

    return-void
.end method

.method public mh()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->xx:Lcom/smartisanos/smengine/n;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->yx:Lcom/smartisanos/smengine/n;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public n(II)Lcom/smartisanos/smengine/Camera;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Ux:Lcom/smartisanos/smengine/Camera;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/smartisanos/launcher/view/Eb;->Vx:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/smartisanos/launcher/view/Eb;->Wx:I

    if-eq v0, p2, :cond_4

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "getScrollCamera"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_1
    iput p1, p0, Lcom/smartisanos/launcher/view/Eb;->Vx:I

    .line 4
    iput p2, p0, Lcom/smartisanos/launcher/view/Eb;->Wx:I

    .line 5
    new-instance v0, Lcom/smartisanos/smengine/Camera;

    invoke-direct {v0, p1, p2}, Lcom/smartisanos/smengine/Camera;-><init>(II)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Ux:Lcom/smartisanos/smengine/Camera;

    .line 6
    sget p2, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v0, p2

    int-to-float p2, p2

    .line 7
    iget v1, p0, Lcom/smartisanos/launcher/view/Eb;->Vx:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float v4, p2, v1

    .line 8
    sget p2, Lcom/smartisanos/launcher/data/Constants;->mainCameraFar:I

    int-to-float v5, p2

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result p2

    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object p2

    .line 10
    iget v1, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    mul-float/2addr v1, v2

    .line 11
    sget v3, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v6, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    add-float v10, v3, v6

    mul-float v3, v10, v4

    div-float v8, v3, v0

    .line 12
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_2

    .line 13
    iget p2, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_bottom:F

    :goto_0
    add-float/2addr v1, p2

    goto :goto_1

    .line 14
    :cond_2
    iget v3, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    add-float/2addr v1, v3

    iget p2, p2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_bottom:F

    add-float/2addr v1, p2

    .line 15
    sget-boolean p2, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-eqz p2, :cond_3

    .line 16
    sget p2, Lcom/smartisanos/launcher/data/Constants;->navigation_bar_height:I

    int-to-float p2, p2

    goto :goto_0

    :cond_3
    :goto_1
    neg-float p2, v1

    mul-float/2addr p2, v4

    div-float v9, p2, v0

    mul-float/2addr v2, v4

    int-to-float p1, p1

    mul-float/2addr v2, p1

    div-float v7, v2, v0

    neg-float v6, v7

    .line 17
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Eb;->Ux:Lcom/smartisanos/smengine/Camera;

    invoke-virtual/range {v3 .. v9}, Lcom/smartisanos/smengine/Camera;->a(FFFFFF)V

    .line 18
    new-instance p1, Lcom/smartisanos/smengine/a/i;

    invoke-direct {p1}, Lcom/smartisanos/smengine/a/i;-><init>()V

    .line 19
    sget p2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float p2, p2

    sget v1, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-static {v2, v10, p2, v1, p1}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;

    .line 20
    invoke-virtual {p1}, Lcom/smartisanos/smengine/a/i;->getY()F

    move-result p1

    .line 21
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Eb;->Ux:Lcom/smartisanos/smengine/Camera;

    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1, v2, p1, v0}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {p2, v1}, Lcom/smartisanos/smengine/Camera;->g(Lcom/smartisanos/smengine/a/j;)V

    .line 22
    iget-object p2, p0, Lcom/smartisanos/launcher/view/Eb;->Ux:Lcom/smartisanos/smengine/Camera;

    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0, v2, p1, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    sget-object p1, Lcom/smartisanos/smengine/a/j;->QV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p2, v0, p1}, Lcom/smartisanos/smengine/Camera;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V

    .line 23
    :cond_4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Ux:Lcom/smartisanos/smengine/Camera;

    return-object p0
.end method

.method public n(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Eb;->hy:Lcom/smartisanos/launcher/view/a/g;

    return-void
.end method

.method public nh()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->ft()Lcom/smartisanos/smengine/z;

    move-result-object p0

    const-string v0, "multigaussian_"

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/z;->Fa(Ljava/lang/String;)V

    return-void
.end method

.method public oh()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "MainView createPages begin !"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/launcher/view/b/N;->Fa(I)[Lcom/smartisanos/smengine/a/i;

    move-result-object v3

    .line 6
    iget-object v4, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    const/4 v5, 0x0

    aget-object v6, v3, v5

    const/4 v7, 0x1

    aget-object v3, v3, v7

    invoke-virtual {v4, v6, v3}, Lcom/smartisanos/launcher/view/b/fa;->a(Lcom/smartisanos/smengine/a/i;Lcom/smartisanos/smengine/a/i;)V

    .line 7
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 8
    iget-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode()I

    move-result v1

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->getMaxPageCount(I)I

    move-result v1

    const/4 v3, 0x0

    .line 10
    sget-object v4, Lcom/smartisanos/launcher/Aa;->ei:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_1

    .line 11
    sget-object v3, Lcom/smartisanos/launcher/Aa;->ei:Ljava/util/List;

    invoke-interface {v3, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 12
    sget-object v6, Lcom/smartisanos/launcher/Aa;->ei:Ljava/util/List;

    invoke-interface {v6, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    move-object/from16 v18, v3

    move-object v3, v1

    move-object/from16 v1, v18

    goto :goto_0

    .line 13
    :cond_1
    sget-object v1, Lcom/smartisanos/launcher/Aa;->ei:Ljava/util/List;

    .line 14
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v11, Lcom/smartisanos/launcher/data/Q;

    invoke-direct {v11}, Lcom/smartisanos/launcher/data/Q;-><init>()V

    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    iput v12, v11, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    .line 21
    iput v7, v11, Lcom/smartisanos/launcher/data/Q;->Er:I

    .line 22
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v12, v5

    move v13, v12

    .line 23
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_7

    .line 24
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smartisanos/launcher/data/Q;

    .line 25
    iget v5, v14, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    .line 26
    sget-boolean v16, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v16, :cond_2

    sget-object v15, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    const-string v1, "load page id ["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], index ["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], title ["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v14}, Lcom/smartisanos/launcher/data/Q;->Bf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], status ["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/smartisanos/launcher/data/Q;->status:I

    invoke-static {v1}, Lcom/smartisanos/launcher/view/b/M;->wb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {v15, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object/from16 v17, v1

    :goto_2
    if-gez v5, :cond_3

    .line 29
    sget-object v1, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v5, "pageIndex < 0 return !"

    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_4

    .line 30
    :cond_3
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/data/Q;->Bf()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14}, Lcom/smartisanos/launcher/diagnostics/StartupPageSceneDiagnostics;->pageConstructBegin(Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v7, v14}, Lcom/smartisanos/launcher/view/b/fa;->a(ILjava/lang/String;Lcom/smartisanos/launcher/data/Q;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/diagnostics/StartupPageSceneDiagnostics;->pageConstructEnd(Ljava/lang/Object;)V

    .line 31
    iget v5, v14, Lcom/smartisanos/launcher/data/Q;->status:I

    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/view/b/M;->zb(I)V

    const/4 v5, 0x1

    .line 32
    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/view/b/M;->jb(Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 33
    iget v14, v14, Lcom/smartisanos/launcher/data/Q;->status:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    .line 34
    invoke-interface {v8, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    if-le v15, v13, :cond_5

    if-nez v14, :cond_5

    .line 35
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    .line 36
    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    .line 37
    invoke-virtual {v1, v7}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :goto_3
    if-ne v14, v5, :cond_6

    .line 38
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_6
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v17

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 41
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 42
    invoke-static {v11, v1}, Lcom/smartisanos/launcher/e/s;->a(Ljava/util/List;Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 43
    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, -0x1

    const/16 v11, 0xa

    if-ge v1, v5, :cond_c

    .line 44
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 45
    iget-byte v12, v5, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-eqz v12, :cond_8

    goto :goto_6

    .line 46
    :cond_8
    iget v12, v5, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    if-ne v12, v11, :cond_9

    .line 47
    iget-object v5, v5, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    if-eq v12, v7, :cond_a

    if-nez v12, :cond_b

    .line 48
    :cond_a
    iget-object v5, v5, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 49
    :cond_c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    const/4 v1, 0x1

    .line 50
    invoke-static {v1, v10, v11}, Lcom/smartisanos/launcher/e/s;->a(ZLjava/util/List;I)V

    goto :goto_7

    :cond_d
    const/4 v1, 0x1

    .line 51
    :goto_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e

    const/4 v5, 0x0

    .line 52
    invoke-static {v1, v9, v5}, Lcom/smartisanos/launcher/e/s;->a(ZLjava/util/List;I)V

    :cond_e
    if-eqz v3, :cond_16

    .line 53
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 54
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v1, :cond_14

    .line 56
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/data/Q;

    .line 57
    iget v12, v10, Lcom/smartisanos/launcher/data/Q;->status:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_13

    .line 58
    iget v10, v10, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-static {v10}, Lcom/smartisanos/launcher/Aa;->K(I)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 59
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_13

    .line 60
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_f
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 61
    iget-byte v14, v12, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-eqz v14, :cond_10

    goto :goto_9

    .line 62
    :cond_10
    iget v14, v12, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    if-ne v14, v11, :cond_11

    .line 63
    iget-object v12, v12, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    if-eqz v14, :cond_12

    if-ne v14, v7, :cond_f

    .line 64
    :cond_12
    iget-object v12, v12, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 65
    :cond_14
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15

    const/4 v1, 0x1

    .line 66
    invoke-static {v1, v5, v11}, Lcom/smartisanos/launcher/e/s;->a(ZLjava/util/List;I)V

    goto :goto_a

    :cond_15
    const/4 v1, 0x1

    .line 67
    :goto_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_16

    const/4 v3, 0x0

    .line 68
    invoke-static {v1, v5, v3}, Lcom/smartisanos/launcher/e/s;->a(ZLjava/util/List;I)V

    goto :goto_b

    :cond_16
    const/4 v3, 0x0

    .line 69
    :goto_b
    sget-object v1, Lcom/smartisanos/launcher/Aa;->ei:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 70
    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/N;->r(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v1

    .line 71
    invoke-static {v2}, Lcom/smartisanos/launcher/view/b/N;->D(Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/smengine/a/i;

    move-result-object v2

    .line 72
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v7, v3

    .line 73
    :goto_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    if-ge v7, v8, :cond_18

    .line 74
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/b/M;

    .line 75
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v10

    if-nez v10, :cond_17

    .line 76
    iget v10, v1, Lcom/smartisanos/smengine/a/i;->x:F

    iget v11, v1, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v8, v10, v11, v9}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 77
    iget v9, v1, Lcom/smartisanos/smengine/a/i;->x:F

    iget v10, v2, Lcom/smartisanos/smengine/a/i;->x:F

    add-float/2addr v9, v10

    iput v9, v1, Lcom/smartisanos/smengine/a/i;->x:F

    .line 78
    iget v9, v1, Lcom/smartisanos/smengine/a/i;->y:F

    iget v10, v2, Lcom/smartisanos/smengine/a/i;->y:F

    add-float/2addr v9, v10

    iput v9, v1, Lcom/smartisanos/smengine/a/i;->y:F

    .line 79
    iget-object v9, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v9, v8}, Lcom/smartisanos/launcher/view/b/fa;->l(Lcom/smartisanos/launcher/view/b/M;)V

    .line 80
    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateWorldTransforms()V

    .line 81
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/M;->updateWorldBoundingVolume()V

    goto :goto_d

    .line 82
    :cond_17
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v10, -0x3b790000    # -1080.0f

    .line 83
    invoke-virtual {v8, v10, v9, v9}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 84
    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateWorldTransforms()V

    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 85
    :cond_18
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_19

    sget-object v2, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPageList size         ==> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/b/fa;->ur()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 86
    :cond_19
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invisiblePageList size ==> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 87
    :cond_1a
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/view/b/fa;->x(Ljava/util/List;)V

    .line 88
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/view/b/fa;->i(Ljava/util/ArrayList;)V

    .line 89
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1d

    .line 90
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->getPageCount()I

    move-result v2

    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getSinglePageMode()I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->getMaxPageCount(I)I

    move-result v5

    if-lt v2, v5, :cond_1b

    const/4 v2, 0x1

    goto :goto_e

    :cond_1b
    move v2, v3

    .line 91
    :goto_e
    iget-object v5, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/b/fa;->getPageCount()I

    move-result v5

    .line 92
    iget-object v6, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v6, v2}, Lcom/smartisanos/launcher/view/b/fa;->I(Z)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v6

    .line 93
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/b/M;->Hn()V

    const/4 v7, 0x1

    .line 94
    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    if-nez v2, :cond_1c

    .line 95
    iput v5, v6, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    .line 96
    :cond_1c
    iget-object v2, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/fa;->or()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v2

    .line 98
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 99
    new-instance v7, Lcom/smartisanos/smengine/a/j;

    iget v8, v1, Lcom/smartisanos/smengine/a/i;->x:F

    iget v1, v1, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-direct {v7, v8, v1, v9}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 100
    invoke-virtual {v2, v7, v5}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 101
    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v6, v2, v1, v9}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 102
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 103
    sget-boolean v5, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v5, :cond_1e

    sget-object v5, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start pre load shadow "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 104
    :cond_1e
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->SHOW_ICON_SHADOW_LIST:Z

    if-eqz v5, :cond_27

    .line 105
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :goto_f
    if-ge v6, v5, :cond_27

    .line 106
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/b/M;->pn()Ljava/util/ArrayList;

    move-result-object v7

    .line 107
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/a/g;

    .line 108
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->sm()Z

    move-result v9

    if-eqz v9, :cond_1f

    goto :goto_10

    .line 109
    :cond_1f
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->Pe()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;
    move-result-object v10
    invoke-static {v10, v9}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->prepareSettingsIconProjection(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 111
    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    .line 112
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/a/g;->lm()[I

    move-result-object v8

    .line 113
    array-length v11, v8

    const/16 v12, 0x8

    if-ne v11, v12, :cond_25

    move v11, v3

    :goto_11
    if-ge v11, v12, :cond_24

    .line 114
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/shadow/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v14, v8, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ".png"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 115
    sget-boolean v14, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v14, :cond_20

    sget-object v14, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pre texchange tex"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 116
    :cond_20
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v3

    .line 117
    invoke-virtual {v3, v13}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v3

    if-nez v3, :cond_23

    .line 118
    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 119
    sget-boolean v14, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v15, "pre loadbitmap : name = "

    if-eqz v14, :cond_21

    sget-object v14, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_21
    if-eqz v3, :cond_23

    .line 120
    sget-boolean v12, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v12, :cond_22

    sget-object v12, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", w = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", h = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 121
    :cond_22
    new-instance v12, Lcom/smartisanos/smengine/Da;

    invoke-direct {v12, v3}, Lcom/smartisanos/smengine/Da;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x1

    .line 122
    invoke-virtual {v12, v3}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    .line 123
    invoke-virtual {v12, v3}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    .line 124
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v14

    invoke-virtual {v14}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v14

    invoke-virtual {v14, v13, v12}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    goto :goto_12

    :cond_23
    const/4 v3, 0x1

    :goto_12
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    const/16 v12, 0x8

    goto/16 :goto_11

    :cond_24
    const/4 v3, 0x0

    goto/16 :goto_10

    .line 125
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "tex num error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    const/4 v3, 0x1

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    goto/16 :goto_f

    .line 126
    :cond_27
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_28

    sget-object v3, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start pre load shadow end."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 127
    :cond_28
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_29

    sget-object v1, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "########## "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->getPageCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 128
    :cond_29
    iget-object v1, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 129
    iget-object v0, v0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Aq()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/smartisanos/launcher/view/Eb;->mStartTime:J

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->No()Lcom/smartisanos/launcher/view/Z;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/smartisanos/launcher/view/Eb;->mStartTime:J

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Eb;->lc(Z)V

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return-void
.end method

.method public ph()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    instance-of v2, v1, Lcom/smartisanos/launcher/view/b/sa;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    check-cast v1, Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/ka;->ro()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public q(J)Lcom/smartisanos/launcher/view/a/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/launcher/view/b/fa;->q(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Ix:Lcom/smartisanos/launcher/view/b/t;

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p1, p2}, Lcom/smartisanos/launcher/view/b/fa;->q(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    if-eqz p0, :cond_2

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/V;->t(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public qh()V
    .locals 13

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### current statusManager.status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/ub;->Tc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, " pos.z = "

    const-string v6, " pos.y = "

    const-string v7, "#### sceneNode.pos.x = "

    const-string v8, "#### p.visible = "

    const-string v9, "-----------------------"

    if-ge v3, v4, :cond_6

    .line 5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/b/M;

    .line 6
    invoke-virtual {v4, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 7
    sget-boolean v10, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "### p in pagelist name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ##index = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " ##Page.pageIndex = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v4, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 8
    :cond_1
    sget-boolean v10, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v10, :cond_2

    sget-object v10, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v10, v9}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 9
    :cond_2
    sget-boolean v10, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v10, :cond_3

    sget-object v10, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 10
    :cond_3
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 11
    :cond_4
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v4, v9}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->br()Ljava/util/ArrayList;

    move-result-object v0

    .line 13
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/b/M;

    .line 15
    invoke-virtual {v3, v1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 16
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "### p in InvisiblePagelist name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " Page.pageIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v3, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 17
    :cond_7
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v4, v9}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 18
    :cond_8
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_9

    sget-object v4, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 19
    :cond_9
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_a

    sget-object v3, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 20
    :cond_a
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v3, v9}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 21
    :cond_c
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/view/Eb;->u(Lcom/smartisanos/smengine/SceneNode;)V

    return-void
.end method

.method public rh()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->dt()Lcom/smartisanos/smengine/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/v;->jk()V

    .line 2
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->dy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1, v1}, Lcom/smartisanos/smengine/va;->c(IFF)Lcom/smartisanos/smengine/va;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/Ha;->dispatchTouchEvent(Lcom/smartisanos/smengine/va;)Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Eb;->dy:Z

    :cond_0
    return-void
.end method

.method public sa(Ljava/lang/String;)Lcom/smartisanos/launcher/view/activeicon/a;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/view/activeicon/m;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;

    return-object p0

    .line 3
    :cond_1
    sget-object v1, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->cy:Lcom/smartisanos/launcher/view/activeicon/H;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public sh()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/ob;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/ob;-><init>(Lcom/smartisanos/launcher/view/Eb;I)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method public ta(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/b/fa;->Ua(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/V;->Ra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_1
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_2

    .line 9
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Ix:Lcom/smartisanos/launcher/view/b/t;

    if-eqz p0, :cond_2

    .line 10
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->Ua(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public th()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceHideCellClickShadow mClickCell title = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_4

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Am()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "forceHideCellClickShadow ON_CLICK_ANIMATION_RUNNING to false"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/g;->b(FZ)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->gb(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setNeedDisplay()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Xx:Lcom/smartisanos/launcher/view/a/g;

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/16 v0, 0x2000

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    return-void

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Yx:Lcom/smartisanos/smengine/g;

    if-eqz v0, :cond_8

    .line 14
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "forceHideCellClickShadow forceFinish"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 15
    :cond_5
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_7

    .line 16
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "mHideCellClickShadowRectAnim start. forceHide"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->Yx:Lcom/smartisanos/smengine/g;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    .line 18
    :cond_7
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Yx:Lcom/smartisanos/smengine/g;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    goto :goto_0

    .line 19
    :cond_8
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/smartisanos/launcher/view/Eb;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "forceHideCellClickShadow hideCellClickShadow"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_9
    const/4 v0, 0x0

    const v2, 0x3dcccccd    # 0.1f

    .line 20
    invoke-direct {p0, v0, v2, v1}, Lcom/smartisanos/launcher/view/Eb;->c(FFZ)V

    :goto_0
    return-void
.end method

.method public uh()Lcom/smartisanos/smengine/F;
    .locals 2

    const-string v0, "background.png"

    .line 1
    invoke-static {v0}, Lcom/smartisanos/launcher/pb;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "t_blur_background"

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/Eb;->y(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    return-object p0
.end method

.method public update()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Eb;->Hx()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/smartisanos/launcher/view/Eb;->mStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_unlock_delta_ready

    const/4 v2, 0x0

    goto :cond_unlock_delta_done

    :cond_unlock_delta_ready
    sub-long v2, v0, v2

    long-to-float v2, v2

    :cond_unlock_delta_done

    iput-wide v0, p0, Lcom/smartisanos/launcher/view/Eb;->mStartTime:J

    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v4, v2, v3

    if-lez v4, :cond_unlock_delta_capped

    move v2, v3

    :cond_unlock_delta_capped
    iget v3, p0, Lcom/smartisanos/launcher/view/Eb;->fx:F

    mul-float/2addr v2, v3

    const v3, 0x3d75c28f    # 0.06f (= 1/16.6667)

    mul-float/2addr v2, v3

    .line 7
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    # Preserve original per-frame progression while a pointer is held. Long-press
    # callbacks create the Dock/trash timeline during Ra.T(), so stale idle time
    # must not consume its opening frames. Faster refresh-rate deltas remain intact.
    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->dt()Lcom/smartisanos/smengine/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/v;->hk()Z

    move-result v1

    if-eqz v1, :cond_held_pointer_delta_done

    iget v3, p0, Lcom/smartisanos/launcher/view/Eb;->fx:F

    add-float v1, v3, v3

    cmpg-float v4, v2, v1

    if-lez v4, :cond_held_pointer_delta_done

    move v2, v3

    :cond_held_pointer_delta_done
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/Ra;->T(F)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    :goto_0
    return-void
.end method

.method public vh()Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->tx:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public wh()Lcom/smartisanos/smengine/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->jx:Lcom/smartisanos/smengine/y;

    return-object p0
.end method

.method public writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 4

    const-string v0, "MainView"

    .line 1
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/Eb;->gx:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "longPressAndPointerMove"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/Eb;->hx:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mHasVerifyPassword"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/smartisanos/launcher/view/Eb;->fx:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mFrameDeltaTime"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/Eb;->nx:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "isVerifyPasswordRunning"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Eb;->wx:Lcom/smartisanos/smengine/F;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mCellClickShadowRect"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/Eb;->Ax:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mIsHardKeyLocked"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/Eb;->Bx:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mIsTouchLocked"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/Eb;->Cx:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mCanInToHoverMode"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/Eb;->Jx:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mIsBatchMode"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/Eb;->Kx:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "isLoadingConfig"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/smartisanos/launcher/view/Eb;->Ox:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mStatusFlag"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v1, v0, p2}, Lcom/smartisanos/launcher/view/b/fa;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 14
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    invoke-virtual {p0, v0, p2}, Lcom/smartisanos/smengine/SceneNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 15
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string p0, "rootView"

    .line 16
    invoke-interface {p2, p0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 17
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p0, p2}, Lcom/smartisanos/smengine/SceneNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 19
    invoke-interface {p1, p0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public xa(I)Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->px:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/b/fa;->ac(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/view/b/M;

    if-nez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->on()Ljava/util/ArrayList;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Lcom/smartisanos/launcher/e/s;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public xh()Lcom/smartisanos/smengine/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->xx:Lcom/smartisanos/smengine/n;

    return-object p0
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/smengine/F;
    .locals 4

    .line 8
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float p0, p0

    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p2, p0, v0, v1, v2}, Lcom/smartisanos/smengine/F;->a(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/F;

    move-result-object p0

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    const/16 v2, 0xa

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    .line 11
    :goto_0
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v3, :cond_1

    move v1, v2

    .line 12
    :cond_1
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v2

    .line 14
    invoke-virtual {v2, p2}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    const-string v2, "GaussianBlurEffectMaterial"

    .line 15
    invoke-static {v2, v1, v0}, Lcom/smartisanos/smengine/mymaterial/g;->a(Ljava/lang/String;ILjava/util/ArrayList;)Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/mymaterial/b;

    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1, p2}, Lcom/smartisanos/smengine/mymaterial/b;->f(ILjava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/mymaterial/b;->ib(Ljava/lang/String;)V

    .line 18
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_2

    const/high16 p1, 0x41000000    # 8.0f

    sget p2, Lcom/smartisanos/launcher/data/Constants;->density:F

    mul-float/2addr p2, p1

    goto :goto_1

    :cond_2
    const/high16 p2, 0x40400000    # 3.0f

    .line 19
    :goto_1
    sget p1, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float p1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p1, v2

    div-float/2addr p1, p2

    float-to-int p1, p1

    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    div-float/2addr v3, p2

    float-to-int p2, v3

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/C;->setSize(II)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/f;)V

    .line 21
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    const p1, 0x461c3c00    # 9999.0f

    .line 22
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setTranslateX(F)V

    .line 23
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    return-object p0
.end method

.method public ya(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->ux:Lcom/smartisanos/launcher/view/Lc;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Lc;->ya(I)V

    return-void
.end method

.method public yh()Lcom/smartisanos/smengine/F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->sx:Lcom/smartisanos/smengine/F;

    return-object p0
.end method

.method public zg()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ua;->jc()Z

    move-result p0

    if-nez p0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ua;->hc()Z

    move-result p0

    if-nez p0, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ua;->ic()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/J;->H(I)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    const/4 v0, 0x1

    const/16 v1, 0x400

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/J;->b(ZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public zh()Lcom/smartisanos/launcher/view/V;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Eb;->Xu:Lcom/smartisanos/launcher/view/V;

    return-object p0
.end method
