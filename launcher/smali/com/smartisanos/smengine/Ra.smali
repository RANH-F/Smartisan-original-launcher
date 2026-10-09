.class public Lcom/smartisanos/smengine/Ra;
.super Ljava/lang/Object;
.source "World.java"


# static fields
.field private static _U:J

.field private static aV:Ljava/lang/Object;

.field private static bV:[Lcom/smartisanos/smengine/Na;

.field private static cV:Lcom/smartisanos/smengine/Ma;

.field public static dV:Z

.field public static eV:F

.field public static fV:F

.field private static gV:Lcom/smartisanos/smengine/Oa;

.field private static hV:[Lcom/smartisanos/smengine/a/j;

.field private static iV:Lcom/smartisanos/smengine/a/j;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private AU:Lcom/smartisanos/smengine/m;

.field private BU:Lcom/smartisanos/smengine/b/i;

.field private CU:Lcom/smartisanos/smengine/La;

.field private DU:Z

.field private volatile EU:Z

.field private FU:Landroid/opengl/GLSurfaceView;

.field private GU:Lcom/smartisanos/smengine/a/j;

.field private HU:Lcom/smartisanos/smengine/a/d;

.field private IU:Lcom/smartisanos/smengine/a/j;

.field private JU:Lcom/smartisanos/smengine/a/c;

.field private KU:Lcom/smartisanos/smengine/a/b;

.field private LU:Lcom/smartisanos/smengine/a/j;

.field private MU:I

.field private NU:Lcom/smartisanos/smengine/a/k;

.field private PU:Lcom/smartisanos/smengine/a/k;

.field private QU:Lcom/smartisanos/smengine/a/k;

.field private RU:Lcom/smartisanos/smengine/a/k;

.field private SU:Lcom/smartisanos/smengine/a/k;

.field private TU:Lcom/smartisanos/smengine/a/k;

.field private UU:[I

.field private VU:I

.field private WU:F

.field private XU:F

.field public YU:Lcom/smartisanos/smengine/Qa;

.field public volatile ZU:Ljava/lang/String;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private pU:Landroid/content/res/AssetManager;

.field private qU:Lcom/smartisanos/smengine/Ea;

.field private rU:Lcom/smartisanos/smengine/O;

.field private sU:Lcom/smartisanos/smengine/k;

.field private tU:Lcom/smartisanos/smengine/J;

.field private uU:Lcom/smartisanos/smengine/d;

.field private vU:Lcom/smartisanos/smengine/Q;

.field private wU:Lcom/smartisanos/smengine/ta;

.field private xU:Lcom/smartisanos/smengine/z;

.field private yU:Lcom/smartisanos/smengine/v;

.field private zU:Lcom/smartisanos/smengine/p;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/smartisanos/smengine/Ra;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/Ra;->log:Lcom/smartisanos/launcher/va;

    const-wide/16 v0, 0x0

    .line 2
    sput-wide v0, Lcom/smartisanos/smengine/Ra;->_U:J

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/Ra;->aV:Ljava/lang/Object;

    const-string v0, "launcher_opt"

    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smartisanos/smengine/Na;

    .line 5
    sput-object v0, Lcom/smartisanos/smengine/Ra;->bV:[Lcom/smartisanos/smengine/Na;

    .line 6
    new-instance v0, Lcom/smartisanos/smengine/Ma;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/Ma;-><init>(FFFF)V

    sput-object v0, Lcom/smartisanos/smengine/Ra;->cV:Lcom/smartisanos/smengine/Ma;

    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Lcom/smartisanos/smengine/Ra;->dV:Z

    const v0, 0x461c4000    # 10000.0f

    .line 8
    sput v0, Lcom/smartisanos/smengine/Ra;->eV:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 9
    sput v0, Lcom/smartisanos/smengine/Ra;->fV:F

    .line 10
    new-instance v0, Lcom/smartisanos/smengine/Oa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Oa;-><init>(Lcom/smartisanos/smengine/Ka;)V

    sput-object v0, Lcom/smartisanos/smengine/Ra;->gV:Lcom/smartisanos/smengine/Oa;

    const/16 v0, 0x19

    new-array v0, v0, [Lcom/smartisanos/smengine/a/j;

    .line 11
    sput-object v0, Lcom/smartisanos/smengine/Ra;->hV:[Lcom/smartisanos/smengine/a/j;

    .line 12
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/Ra;->iV:Lcom/smartisanos/smengine/a/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/Ea;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Ea;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->qU:Lcom/smartisanos/smengine/Ea;

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/O;

    invoke-direct {v0}, Lcom/smartisanos/smengine/O;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->rU:Lcom/smartisanos/smengine/O;

    .line 5
    new-instance v0, Lcom/smartisanos/smengine/k;

    invoke-direct {v0}, Lcom/smartisanos/smengine/k;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->sU:Lcom/smartisanos/smengine/k;

    .line 6
    new-instance v0, Lcom/smartisanos/smengine/J;

    invoke-direct {v0}, Lcom/smartisanos/smengine/J;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->tU:Lcom/smartisanos/smengine/J;

    .line 7
    new-instance v0, Lcom/smartisanos/smengine/d;

    invoke-direct {v0}, Lcom/smartisanos/smengine/d;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->uU:Lcom/smartisanos/smengine/d;

    .line 8
    new-instance v0, Lcom/smartisanos/smengine/Q;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Q;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->vU:Lcom/smartisanos/smengine/Q;

    .line 9
    new-instance v0, Lcom/smartisanos/smengine/ta;

    invoke-direct {v0}, Lcom/smartisanos/smengine/ta;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->wU:Lcom/smartisanos/smengine/ta;

    .line 10
    new-instance v0, Lcom/smartisanos/smengine/z;

    invoke-direct {v0}, Lcom/smartisanos/smengine/z;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->xU:Lcom/smartisanos/smengine/z;

    .line 11
    new-instance v0, Lcom/smartisanos/smengine/v;

    invoke-direct {v0}, Lcom/smartisanos/smengine/v;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->yU:Lcom/smartisanos/smengine/v;

    .line 12
    new-instance v0, Lcom/smartisanos/smengine/p;

    invoke-direct {v0}, Lcom/smartisanos/smengine/p;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->zU:Lcom/smartisanos/smengine/p;

    .line 13
    new-instance v0, Lcom/smartisanos/smengine/m;

    invoke-direct {v0}, Lcom/smartisanos/smengine/m;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->AU:Lcom/smartisanos/smengine/m;

    .line 14
    new-instance v0, Lcom/smartisanos/smengine/b/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/b/i;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->BU:Lcom/smartisanos/smengine/b/i;

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Ra;->DU:Z

    .line 16
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Ra;->EU:Z

    .line 17
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v1, p0, Lcom/smartisanos/smengine/Ra;->GU:Lcom/smartisanos/smengine/a/j;

    .line 18
    new-instance v1, Lcom/smartisanos/smengine/a/d;

    new-instance v4, Lcom/smartisanos/smengine/a/j;

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_height:I
    int-to-float v5, v5
    const/high16 v7, 0x40000000    # 2.0f
    div-float/2addr v5, v7
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I
    int-to-float v6, v6
    div-float/2addr v6, v7
    invoke-direct {v4, v6, v5, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    const/high16 v7, 0x457a0000    # 4000.0f

    invoke-direct {v1, v4, v7}, Lcom/smartisanos/smengine/a/d;-><init>(Lcom/smartisanos/smengine/a/j;F)V

    iput-object v1, p0, Lcom/smartisanos/smengine/Ra;->HU:Lcom/smartisanos/smengine/a/d;

    .line 19
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1, v6, v5, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v1, p0, Lcom/smartisanos/smengine/Ra;->IU:Lcom/smartisanos/smengine/a/j;

    .line 20
    new-instance v1, Lcom/smartisanos/smengine/a/c;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/c;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/Ra;->JU:Lcom/smartisanos/smengine/a/c;

    .line 21
    new-instance v1, Lcom/smartisanos/smengine/a/b;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/b;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/Ra;->KU:Lcom/smartisanos/smengine/a/b;

    .line 22
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1, v6, v5, v7}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    iput-object v1, p0, Lcom/smartisanos/smengine/Ra;->LU:Lcom/smartisanos/smengine/a/j;

    .line 23
    iput v0, p0, Lcom/smartisanos/smengine/Ra;->MU:I

    .line 24
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->NU:Lcom/smartisanos/smengine/a/k;

    .line 25
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const/high16 v4, 0x41300000    # 11.0f

    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->PU:Lcom/smartisanos/smengine/a/k;

    .line 26
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3db851ec    # 0.09f

    const v6, 0x3da3d70a    # 0.08f

    invoke-direct {v0, v4, v4, v5, v6}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->QU:Lcom/smartisanos/smengine/a/k;

    .line 27
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const v4, 0x3d4ccccd    # 0.05f

    const v5, 0x3d8f5c29    # 0.07f

    const v6, 0x3d75c28f    # 0.06f

    invoke-direct {v0, v5, v6, v4, v4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->RU:Lcom/smartisanos/smengine/a/k;

    .line 28
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const/high16 v4, 0x447a0000    # 1000.0f

    const/high16 v5, 0x40800000    # 4.0f

    invoke-direct {v0, v4, v1, v5, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->SU:Lcom/smartisanos/smengine/a/k;

    .line 29
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const/high16 v1, 0x41200000    # 10.0f

    const v2, 0x3fb9999a    # 1.45f

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->TU:Lcom/smartisanos/smengine/a/k;

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 30
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->UU:[I

    const/16 v0, 0x7d0

    .line 31
    iput v0, p0, Lcom/smartisanos/smengine/Ra;->VU:I

    .line 32
    new-instance v0, Lcom/smartisanos/smengine/Qa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/smengine/Qa;-><init>(Lcom/smartisanos/smengine/Ra;Lcom/smartisanos/smengine/Ka;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->YU:Lcom/smartisanos/smengine/Qa;

    const-string v0, "sunny"

    .line 33
    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->ZU:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/Ka;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/smengine/Ra;-><init>()V

    return-void
.end method

.method public static H(II)Lcom/smartisanos/smengine/a/j;
    .locals 5

    mul-int/lit8 p0, p0, 0x3c

    add-int/2addr p0, p1

    int-to-float p0, p0

    const/high16 p1, 0x44870000    # 1080.0f

    cmpl-float p1, p0, p1

    const/high16 v0, 0x44340000    # 720.0f

    const/high16 v1, 0x43b40000    # 360.0f

    if-gtz p1, :cond_0

    cmpg-float p1, p0, v1

    if-gez p1, :cond_1

    :cond_0
    move p0, v0

    :cond_1
    sub-float/2addr p0, v1

    const/high16 p1, 0x43340000    # 180.0f

    mul-float/2addr p0, p1

    div-float/2addr p0, v0

    const/4 p1, 0x0

    add-float/2addr p0, p1

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/Ra;->iV:Lcom/smartisanos/smengine/a/j;

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p0, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    .line 2
    sget-object p0, Lcom/smartisanos/smengine/Ra;->iV:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method static synthetic S(F)F
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/smengine/Ra;->qa(F)F

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/smengine/Ra;)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->IU:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public static a(Lcom/smartisanos/smengine/Ma;)V
    .locals 0

    .line 11
    sput-object p0, Lcom/smartisanos/smengine/Ra;->cV:Lcom/smartisanos/smengine/Ma;

    return-void
.end method

.method static synthetic access$200()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/Ra;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic ae()Lcom/smartisanos/smengine/Ma;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/Ra;->cV:Lcom/smartisanos/smengine/Ma;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/smengine/Ra;)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->GU:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/smengine/Ra;)Lcom/smartisanos/smengine/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->JU:Lcom/smartisanos/smengine/a/c;

    return-object p0
.end method

.method static synthetic d(Lcom/smartisanos/smengine/Ra;)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->LU:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method static synthetic e(Lcom/smartisanos/smengine/Ra;)Lcom/smartisanos/smengine/a/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->HU:Lcom/smartisanos/smengine/a/d;

    return-object p0
.end method

.method public static getInstance()Lcom/smartisanos/smengine/Ra;
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Pa;->access$000()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    return-object v0
.end method

.method private static qa(F)F
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr p0, v0

    div-float/2addr p0, v0

    float-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static st()V
    .locals 21

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/Na;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Na;-><init>(Lcom/smartisanos/smengine/Ka;)V

    .line 2
    iget-object v2, v0, Lcom/smartisanos/smengine/Na;->iU:[F

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v5, 0x1

    const/high16 v6, 0x40400000    # 3.0f

    .line 3
    aput v6, v2, v5

    const/high16 v6, 0x40800000    # 4.0f

    const/4 v7, 0x2

    .line 4
    aput v6, v2, v7

    const/4 v8, 0x3

    const/high16 v9, 0x40a00000    # 5.0f

    .line 5
    aput v9, v2, v8

    const/4 v9, 0x4

    const/high16 v10, 0x40c00000    # 6.0f

    .line 6
    aput v10, v2, v9

    const/4 v10, 0x5

    const/high16 v11, 0x40e00000    # 7.0f

    .line 7
    aput v11, v2, v10

    const/4 v11, 0x6

    const/high16 v12, 0x41100000    # 9.0f

    .line 8
    aput v12, v2, v11

    const/high16 v12, 0x41200000    # 10.0f

    const/4 v13, 0x7

    .line 9
    aput v12, v2, v13

    const/16 v14, 0x8

    const v15, 0x3df5c28f    # 0.12f

    .line 10
    aput v15, v2, v14

    const/16 v16, 0x9

    .line 11
    aput v15, v2, v16

    const/16 v16, 0xa

    .line 12
    aput v15, v2, v16

    const/16 v16, 0xb

    const v17, 0x3de147ae    # 0.11f

    .line 13
    aput v17, v2, v16

    const/16 v16, 0xc

    const v17, 0x3dcccccd    # 0.1f

    .line 14
    aput v17, v2, v16

    const/16 v16, 0xd

    const v17, 0x3da3d70a    # 0.08f

    .line 15
    aput v17, v2, v16

    const/16 v16, 0xe

    const v17, 0x3d75c28f    # 0.06f

    .line 16
    aput v17, v2, v16

    const/16 v16, 0xf

    const v17, 0x3cf5c28f    # 0.03f

    .line 17
    aput v17, v2, v16

    .line 18
    iget-object v2, v0, Lcom/smartisanos/smengine/Na;->jU:[I

    aput v5, v2, v4

    .line 19
    aput v5, v2, v5

    .line 20
    aput v7, v2, v7

    .line 21
    aput v7, v2, v8

    .line 22
    aput v8, v2, v9

    .line 23
    aput v9, v2, v10

    .line 24
    aput v10, v2, v11

    .line 25
    aput v13, v2, v13

    const/high16 v2, 0x447a0000    # 1000.0f

    .line 26
    iput v2, v0, Lcom/smartisanos/smengine/Na;->shadowRadius:F

    const v2, 0x3faccccd    # 1.35f

    .line 27
    iput v2, v0, Lcom/smartisanos/smengine/Na;->kU:F

    const/high16 v2, 0x3f000000    # 0.5f

    .line 28
    iput v2, v0, Lcom/smartisanos/smengine/Na;->lU:F

    const/4 v2, 0x0

    .line 29
    iput v2, v0, Lcom/smartisanos/smengine/Na;->x:F

    .line 30
    iput v12, v0, Lcom/smartisanos/smengine/Na;->y:F

    const v2, 0x3fb9999a    # 1.45f

    .line 31
    iput v2, v0, Lcom/smartisanos/smengine/Na;->scale:F

    .line 32
    new-instance v2, Lcom/smartisanos/smengine/Na;

    invoke-direct {v2, v1}, Lcom/smartisanos/smengine/Na;-><init>(Lcom/smartisanos/smengine/Ka;)V

    .line 33
    iget-object v1, v2, Lcom/smartisanos/smengine/Na;->iU:[F

    aput v3, v1, v4

    const/high16 v18, 0x40400000    # 3.0f

    .line 34
    aput v18, v1, v5

    .line 35
    aput v6, v1, v7

    const/high16 v18, 0x40a00000    # 5.0f

    .line 36
    aput v18, v1, v8

    const/high16 v18, 0x40c00000    # 6.0f

    .line 37
    aput v18, v1, v9

    const/high16 v18, 0x40e00000    # 7.0f

    .line 38
    aput v18, v1, v10

    const/high16 v18, 0x41100000    # 9.0f

    .line 39
    aput v18, v1, v11

    .line 40
    aput v12, v1, v13

    .line 41
    aput v15, v1, v14

    const/16 v18, 0x9

    .line 42
    aput v15, v1, v18

    const/16 v18, 0xa

    .line 43
    aput v15, v1, v18

    const/16 v18, 0xb

    const v19, 0x3de147ae    # 0.11f

    .line 44
    aput v19, v1, v18

    const/16 v18, 0xc

    const v19, 0x3dcccccd    # 0.1f

    .line 45
    aput v19, v1, v18

    const/16 v18, 0xd

    const v19, 0x3da3d70a    # 0.08f

    .line 46
    aput v19, v1, v18

    const/16 v18, 0xe

    const v19, 0x3d75c28f    # 0.06f

    .line 47
    aput v19, v1, v18

    const/16 v18, 0xf

    const v19, 0x3cf5c28f    # 0.03f

    .line 48
    aput v19, v1, v18

    .line 49
    iget-object v1, v2, Lcom/smartisanos/smengine/Na;->jU:[I

    aput v5, v1, v4

    .line 50
    aput v5, v1, v5

    .line 51
    aput v7, v1, v7

    .line 52
    aput v7, v1, v8

    .line 53
    aput v8, v1, v9

    .line 54
    aput v9, v1, v10

    .line 55
    aput v10, v1, v11

    .line 56
    aput v13, v1, v13

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 57
    iput v1, v2, Lcom/smartisanos/smengine/Na;->shadowRadius:F

    const v1, 0x3f59999a    # 0.85f

    .line 58
    iput v1, v2, Lcom/smartisanos/smengine/Na;->kU:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 59
    iput v1, v2, Lcom/smartisanos/smengine/Na;->lU:F

    const/4 v1, 0x0

    .line 60
    iput v1, v2, Lcom/smartisanos/smengine/Na;->x:F

    .line 61
    iput v12, v2, Lcom/smartisanos/smengine/Na;->y:F

    const v12, 0x3fb9999a    # 1.45f

    .line 62
    iput v12, v2, Lcom/smartisanos/smengine/Na;->scale:F

    .line 63
    new-instance v12, Lcom/smartisanos/smengine/Na;

    const/4 v14, 0x0

    invoke-direct {v12, v14}, Lcom/smartisanos/smengine/Na;-><init>(Lcom/smartisanos/smengine/Ka;)V

    .line 64
    iget-object v14, v12, Lcom/smartisanos/smengine/Na;->iU:[F

    aput v1, v14, v4

    const/high16 v1, 0x3f800000    # 1.0f

    .line 65
    aput v1, v14, v5

    .line 66
    aput v3, v14, v7

    .line 67
    aput v6, v14, v8

    const/high16 v1, 0x40c00000    # 6.0f

    .line 68
    aput v1, v14, v9

    const/high16 v1, 0x41000000    # 8.0f

    .line 69
    aput v1, v14, v10

    const/high16 v1, 0x41300000    # 11.0f

    .line 70
    aput v1, v14, v11

    const/high16 v1, 0x41500000    # 13.0f

    .line 71
    aput v1, v14, v13

    const/16 v1, 0x8

    .line 72
    aput v15, v14, v1

    const/16 v1, 0x9

    .line 73
    aput v15, v14, v1

    const/16 v1, 0xa

    .line 74
    aput v15, v14, v1

    const/16 v1, 0xb

    .line 75
    aput v15, v14, v1

    const/16 v1, 0xc

    .line 76
    aput v15, v14, v1

    const/16 v1, 0xd

    const v20, 0x3dcccccd    # 0.1f

    .line 77
    aput v20, v14, v1

    const/16 v1, 0xe

    const v20, 0x3da3d70a    # 0.08f

    .line 78
    aput v20, v14, v1

    const/16 v1, 0xf

    const v20, 0x3ca3d70a    # 0.02f

    .line 79
    aput v20, v14, v1

    .line 80
    iget-object v1, v12, Lcom/smartisanos/smengine/Na;->jU:[I

    aput v5, v1, v4

    .line 81
    aput v7, v1, v5

    .line 82
    aput v8, v1, v7

    .line 83
    aput v9, v1, v8

    .line 84
    aput v10, v1, v9

    .line 85
    aput v11, v1, v10

    .line 86
    aput v13, v1, v11

    const/16 v14, 0x8

    .line 87
    aput v14, v1, v13

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 88
    iput v1, v12, Lcom/smartisanos/smengine/Na;->shadowRadius:F

    const v1, 0x3f99999a    # 1.2f

    .line 89
    iput v1, v12, Lcom/smartisanos/smengine/Na;->kU:F

    const v1, 0x3f333333    # 0.7f

    .line 90
    iput v1, v12, Lcom/smartisanos/smengine/Na;->lU:F

    const/4 v1, 0x0

    .line 91
    iput v1, v12, Lcom/smartisanos/smengine/Na;->x:F

    const/high16 v14, 0x41200000    # 10.0f

    .line 92
    iput v14, v12, Lcom/smartisanos/smengine/Na;->y:F

    const v14, 0x3fb9999a    # 1.45f

    .line 93
    iput v14, v12, Lcom/smartisanos/smengine/Na;->scale:F

    .line 94
    new-instance v14, Lcom/smartisanos/smengine/Na;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/smartisanos/smengine/Na;-><init>(Lcom/smartisanos/smengine/Ka;)V

    .line 95
    iget-object v15, v14, Lcom/smartisanos/smengine/Na;->iU:[F

    aput v1, v15, v4

    const/high16 v1, 0x3f800000    # 1.0f

    .line 96
    aput v1, v15, v5

    .line 97
    aput v3, v15, v7

    .line 98
    aput v6, v15, v8

    const/high16 v1, 0x40c00000    # 6.0f

    .line 99
    aput v1, v15, v9

    const/high16 v1, 0x41000000    # 8.0f

    .line 100
    aput v1, v15, v10

    const/high16 v1, 0x41300000    # 11.0f

    .line 101
    aput v1, v15, v11

    const/high16 v1, 0x41500000    # 13.0f

    .line 102
    aput v1, v15, v13

    const/16 v1, 0x8

    const v3, 0x3df5c28f    # 0.12f

    .line 103
    aput v3, v15, v1

    const/16 v1, 0x9

    .line 104
    aput v3, v15, v1

    const/16 v1, 0xa

    .line 105
    aput v3, v15, v1

    const/16 v1, 0xb

    .line 106
    aput v3, v15, v1

    const/16 v1, 0xc

    .line 107
    aput v3, v15, v1

    const/16 v1, 0xd

    const v3, 0x3dcccccd    # 0.1f

    .line 108
    aput v3, v15, v1

    const/16 v1, 0xe

    const v3, 0x3da3d70a    # 0.08f

    .line 109
    aput v3, v15, v1

    const/16 v1, 0xf

    const v3, 0x3ca3d70a    # 0.02f

    .line 110
    aput v3, v15, v1

    .line 111
    iget-object v1, v14, Lcom/smartisanos/smengine/Na;->jU:[I

    aput v5, v1, v4

    .line 112
    aput v7, v1, v5

    .line 113
    aput v8, v1, v7

    .line 114
    aput v9, v1, v8

    .line 115
    aput v10, v1, v9

    .line 116
    aput v11, v1, v10

    .line 117
    aput v13, v1, v11

    const/16 v3, 0x8

    .line 118
    aput v3, v1, v13

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 119
    iput v1, v14, Lcom/smartisanos/smengine/Na;->shadowRadius:F

    const v1, 0x3f4ccccd    # 0.8f

    .line 120
    iput v1, v14, Lcom/smartisanos/smengine/Na;->kU:F

    const v1, 0x3f333333    # 0.7f

    .line 121
    iput v1, v14, Lcom/smartisanos/smengine/Na;->lU:F

    const/4 v1, 0x0

    .line 122
    iput v1, v14, Lcom/smartisanos/smengine/Na;->x:F

    const/high16 v1, 0x41200000    # 10.0f

    .line 123
    iput v1, v14, Lcom/smartisanos/smengine/Na;->y:F

    const v1, 0x3fb9999a    # 1.45f

    .line 124
    iput v1, v14, Lcom/smartisanos/smengine/Na;->scale:F

    .line 125
    sget-object v1, Lcom/smartisanos/smengine/Ra;->bV:[Lcom/smartisanos/smengine/Na;

    aput-object v0, v1, v4

    .line 126
    aput-object v2, v1, v5

    .line 127
    aput-object v12, v1, v7

    .line 128
    aput-object v14, v1, v8

    return-void
.end method

.method public static vt()J
    .locals 7

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/Ra;->aV:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-wide v1, Lcom/smartisanos/smengine/Ra;->_U:J

    .line 3
    sget-wide v3, Lcom/smartisanos/smengine/Ra;->_U:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 4
    sget-wide v3, Lcom/smartisanos/smengine/Ra;->_U:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    sput-wide v3, Lcom/smartisanos/smengine/Ra;->_U:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 5
    sput-wide v3, Lcom/smartisanos/smengine/Ra;->_U:J

    .line 6
    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public T(F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Ra;->DU:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/Ra;->CU:Lcom/smartisanos/smengine/La;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Lcom/smartisanos/smengine/La;->d(F)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/Ra;->yU:Lcom/smartisanos/smengine/v;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/v;->update(F)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/smengine/Ra;->zU:Lcom/smartisanos/smengine/p;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/p;->update(F)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/smengine/Ra;->uU:Lcom/smartisanos/smengine/d;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/d;->update(F)V

    .line 7
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Ra;->EU:Z

    if-nez v0, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/smengine/Ra;->BU:Lcom/smartisanos/smengine/b/i;

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/b/i;->ea(F)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/smengine/Ra;->vU:Lcom/smartisanos/smengine/Q;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Q;->Vk()V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/smengine/Ra;->tU:Lcom/smartisanos/smengine/J;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/J;->r(F)V

    .line 11
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->CU:Lcom/smartisanos/smengine/La;

    if-eqz p0, :cond_3

    .line 12
    invoke-interface {p0, p1}, Lcom/smartisanos/smengine/La;->b(F)V

    :cond_3
    return-void
.end method

.method public U(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->SU:Lcom/smartisanos/smengine/a/k;

    iput p1, p0, Lcom/smartisanos/smengine/a/k;->y:F

    return-void
.end method

.method public V(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->SU:Lcom/smartisanos/smengine/a/k;

    iput p1, p0, Lcom/smartisanos/smengine/a/k;->z:F

    return-void
.end method

.method public Vb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/Ra;->DU:Z

    return-void
.end method

.method public W(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->SU:Lcom/smartisanos/smengine/a/k;

    iput p1, p0, Lcom/smartisanos/smengine/a/k;->x:F

    return-void
.end method

.method public X(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/Ra;->WU:F

    return-void
.end method

.method public Y(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/Ra;->XU:F

    return-void
.end method

.method public Zs()Lcom/smartisanos/smengine/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->uU:Lcom/smartisanos/smengine/d;

    return-object p0
.end method

.method public _s()Landroid/content/res/AssetManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->pU:Landroid/content/res/AssetManager;

    return-object p0
.end method

.method public a(ILcom/smartisanos/smengine/a/k;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unknown shadow factor"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :pswitch_0
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->TU:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/a/k;->f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    goto :goto_0

    .line 6
    :pswitch_1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->SU:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/a/k;->f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    goto :goto_0

    .line 7
    :pswitch_2
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->RU:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/a/k;->f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    goto :goto_0

    .line 8
    :pswitch_3
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->QU:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/a/k;->f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    goto :goto_0

    .line 9
    :pswitch_4
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->PU:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/a/k;->f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    goto :goto_0

    .line 10
    :pswitch_5
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->NU:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/a/k;->f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/res/AssetManager;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/smengine/Ra;->pU:Landroid/content/res/AssetManager;

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/La;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/smengine/Ra;->CU:Lcom/smartisanos/smengine/La;

    return-void
.end method

.method public at()Lcom/smartisanos/smengine/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->sU:Lcom/smartisanos/smengine/k;

    return-object p0
.end method

.method public b(Landroid/opengl/GLSurfaceView;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/smengine/Ra;->FU:Landroid/opengl/GLSurfaceView;

    return-void
.end method

.method public bt()Lcom/smartisanos/smengine/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->AU:Lcom/smartisanos/smengine/m;

    return-object p0
.end method

.method public c(IFFFF)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unknown shadow factor"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->TU:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    goto :goto_0

    .line 8
    :pswitch_1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->SU:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    goto :goto_0

    .line 9
    :pswitch_2
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->RU:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    goto :goto_0

    .line 10
    :pswitch_3
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->QU:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    goto :goto_0

    .line 11
    :pswitch_4
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->PU:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    goto :goto_0

    .line 12
    :pswitch_5
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->NU:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c([I)V
    .locals 3

    .line 2
    array-length v0, p1

    iget-object v1, p0, Lcom/smartisanos/smengine/Ra;->UU:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/smengine/Ra;->UU:[I

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shadow tex seq lengh error"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ct()Lcom/smartisanos/smengine/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->zU:Lcom/smartisanos/smengine/p;

    return-object p0
.end method

.method public db(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/Ra;->ZU:Ljava/lang/String;

    return-void
.end method

.method public dt()Lcom/smartisanos/smengine/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->yU:Lcom/smartisanos/smengine/v;

    return-object p0
.end method

.method public eb(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Lcom/smartisanos/launcher/view/activeicon/n;->ua(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/Ra;->ZU:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/Ra;->db(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/smengine/Ra;->ZU:Ljava/lang/String;

    const-string v0, "sunny"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/Ra;->db(Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->tt()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 7
    sget-object p1, Lcom/smartisanos/smengine/Ra;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "weather is sunny"

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/Ra;->q(IZ)V

    goto :goto_1

    .line 9
    :cond_3
    sget-object p1, Lcom/smartisanos/smengine/Ra;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "weather is not sunny"

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/Ra;->q(IZ)V

    .line 11
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/J;->getHour()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/Ra;->pc(I)V

    return-void
.end method

.method public et()Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->LU:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method

.method public ft()Lcom/smartisanos/smengine/z;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->xU:Lcom/smartisanos/smengine/z;

    return-object p0
.end method

.method public getMainThreadHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getShadowRadius()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->SU:Lcom/smartisanos/smengine/a/k;

    iget p0, p0, Lcom/smartisanos/smengine/a/k;->x:F

    return p0
.end method

.method public gt()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->SU:Lcom/smartisanos/smengine/a/k;

    iget p0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ht()Lcom/smartisanos/smengine/b/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->BU:Lcom/smartisanos/smengine/b/i;

    return-object p0
.end method

.method public it()Lcom/smartisanos/smengine/J;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->tU:Lcom/smartisanos/smengine/J;

    return-object p0
.end method

.method public jt()Lcom/smartisanos/smengine/Q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->vU:Lcom/smartisanos/smengine/Q;

    return-object p0
.end method

.method public k(Lcom/smartisanos/smengine/a/j;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/Ra;->GU:Lcom/smartisanos/smengine/a/j;

    # Publish all three components together; never hold this monitor while queuing.
    monitor-enter v0
    :sensor_write_start

    iget v1, p1, Lcom/smartisanos/smengine/a/j;->x:F

    iget v2, p1, Lcom/smartisanos/smengine/a/j;->y:F

    neg-float v2, v2

    iget p1, p1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v0, v1, v2, p1}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    monitor-exit v0
    :sensor_write_end
    .catchall {:sensor_write_start .. :sensor_write_end} :sensor_write_failed

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/n;->obtain()Lcom/smartisanos/smengine/n;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->YU:Lcom/smartisanos/smengine/Qa;

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/n;->j(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void

    :sensor_write_failed
    move-exception v3
    :sensor_unlock_start
    monitor-exit v0
    :sensor_unlock_end
    .catchall {:sensor_unlock_start .. :sensor_unlock_end} :sensor_write_failed
    throw v3
.end method

.method public kt()Lcom/smartisanos/smengine/ta;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->wU:Lcom/smartisanos/smengine/ta;

    return-object p0
.end method

.method public lm()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->UU:[I

    return-object p0
.end method

.method public lt()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Ra;->VU:I

    return p0
.end method

.method public mc(I)Lcom/smartisanos/smengine/a/k;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unknown shadow factor"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :pswitch_0
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->TU:Lcom/smartisanos/smengine/a/k;

    return-object p0

    .line 3
    :pswitch_1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->SU:Lcom/smartisanos/smengine/a/k;

    return-object p0

    .line 4
    :pswitch_2
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->RU:Lcom/smartisanos/smengine/a/k;

    return-object p0

    .line 5
    :pswitch_3
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->QU:Lcom/smartisanos/smengine/a/k;

    return-object p0

    .line 6
    :pswitch_4
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->PU:Lcom/smartisanos/smengine/a/k;

    return-object p0

    .line 7
    :pswitch_5
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->NU:Lcom/smartisanos/smengine/a/k;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public mt()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->TU:Lcom/smartisanos/smengine/a/k;

    iget p0, p0, Lcom/smartisanos/smengine/a/k;->z:F

    return p0
.end method

.method public nc(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->SU:Lcom/smartisanos/smengine/a/k;

    int-to-float p1, p1

    iput p1, p0, Lcom/smartisanos/smengine/a/k;->w:F

    return-void
.end method

.method public nt()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->TU:Lcom/smartisanos/smengine/a/k;

    iget p0, p0, Lcom/smartisanos/smengine/a/k;->x:F

    return p0
.end method

.method public oc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/Ra;->VU:I

    return-void
.end method

.method public ot()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->TU:Lcom/smartisanos/smengine/a/k;

    iget p0, p0, Lcom/smartisanos/smengine/a/k;->y:F

    return p0
.end method

.method public pc(I)V
    .locals 0

    return-void
.end method

.method public pt()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->SU:Lcom/smartisanos/smengine/a/k;

    iget p0, p0, Lcom/smartisanos/smengine/a/k;->y:F

    return p0
.end method

.method public q(IZ)V
    .locals 12

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/Ra;->bV:[Lcom/smartisanos/smengine/Na;

    aget-object p1, v0, p1

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    iget-object v1, p1, Lcom/smartisanos/smengine/Na;->iU:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v5, v1, v5

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Ra;->c(IFFFF)V

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v6

    iget-object v0, p1, Lcom/smartisanos/smengine/Na;->iU:[F

    const/4 v1, 0x4

    aget v8, v0, v1

    const/4 v1, 0x5

    aget v9, v0, v1

    const/4 v1, 0x6

    aget v10, v0, v1

    const/4 v1, 0x7

    aget v11, v0, v1

    const/4 v7, 0x2

    invoke-virtual/range {v6 .. v11}, Lcom/smartisanos/smengine/Ra;->c(IFFFF)V

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    iget-object v1, p1, Lcom/smartisanos/smengine/Na;->iU:[F

    const/16 v2, 0x8

    aget v2, v1, v2

    const/16 v3, 0x9

    aget v3, v1, v3

    const/16 v4, 0xa

    aget v4, v1, v4

    const/16 v5, 0xb

    aget v5, v1, v5

    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/Ra;->c(IFFFF)V

    .line 5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v6

    iget-object v0, p1, Lcom/smartisanos/smengine/Na;->iU:[F

    const/16 v1, 0xc

    aget v8, v0, v1

    const/16 v1, 0xd

    aget v9, v0, v1

    const/16 v1, 0xe

    aget v10, v0, v1

    const/16 v1, 0xf

    aget v11, v0, v1

    const/4 v7, 0x4

    invoke-virtual/range {v6 .. v11}, Lcom/smartisanos/smengine/Ra;->c(IFFFF)V

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    iget v1, p1, Lcom/smartisanos/smengine/Na;->shadowRadius:F

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ra;->W(F)V

    .line 7
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    iget v1, p1, Lcom/smartisanos/smengine/Na;->kU:F

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ra;->U(F)V

    .line 8
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    iget v1, p1, Lcom/smartisanos/smengine/Na;->lU:F

    sget-object v2, Lcom/smartisanos/smengine/Ra;->gV:Lcom/smartisanos/smengine/Oa;
    iget-boolean v3, v2, Lcom/smartisanos/smengine/Oa;->hasSample:Z
    if-eqz v3, :weather_without_light_sample
    iget v2, v2, Lcom/smartisanos/smengine/Oa;->currentLux:F
    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/Ra;->applyShadowLux(FF)V
    goto :weather_light_applied
    :weather_without_light_sample
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ra;->V(F)V
    :weather_light_applied

    .line 9
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    iget v4, p1, Lcom/smartisanos/smengine/Na;->x:F

    iget v5, p1, Lcom/smartisanos/smengine/Na;->y:F

    iget v6, p1, Lcom/smartisanos/smengine/Na;->scale:F

    const/4 v3, 0x6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/smartisanos/smengine/Ra;->c(IFFFF)V

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    iget-object p1, p1, Lcom/smartisanos/smengine/Na;->jU:[I

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Ra;->c([I)V

    if-eqz p2, :cond_0

    .line 11
    new-instance p1, Lcom/smartisanos/smengine/Ka;

    const/16 p2, 0x64

    invoke-direct {p1, p0, p2}, Lcom/smartisanos/smengine/Ka;-><init>(Lcom/smartisanos/smengine/Ra;I)V

    const/4 p0, 0x0

    .line 12
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_0
    return-void
.end method

.method public qt()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->SU:Lcom/smartisanos/smengine/a/k;

    iget p0, p0, Lcom/smartisanos/smengine/a/k;->z:F

    return p0
.end method

.method public rt()Lcom/smartisanos/smengine/Ea;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->qU:Lcom/smartisanos/smengine/Ea;

    return-object p0
.end method

.method public tt()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->ZU:Ljava/lang/String;

    const-string v0, "sunny"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public ut()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->mMainThreadHandler:Landroid/os/Handler;

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/smengine/Ra;->pU:Landroid/content/res/AssetManager;

    return-void
.end method

.method public v(FF)V
    .locals 0

    .line 1
    sput p1, Lcom/smartisanos/smengine/Ra;->eV:F

    .line 2
    sput p2, Lcom/smartisanos/smengine/Ra;->fV:F

    .line 3
    sget-object p0, Lcom/smartisanos/smengine/Ra;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "set max and min lux for shadow len : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/smartisanos/smengine/Ra;->eV:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/smartisanos/smengine/Ra;->fV:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method

.method public w(FF)Z
    .locals 2

    .line 1
    sget-object p0, Lcom/smartisanos/smengine/Ra;->gV:Lcom/smartisanos/smengine/Oa;

    iget-boolean v0, p0, Lcom/smartisanos/smengine/Oa;->running:Z
    if-eqz v0, :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/Oa;->nU:F
    cmpl-float v1, v0, p2
    if-eqz v1, :shadow_target_accepted
    # A new reading continues from the displayed lux, never from an obsolete target.
    iget p1, p0, Lcom/smartisanos/smengine/Oa;->currentLux:F
    iput p1, p0, Lcom/smartisanos/smengine/Oa;->mU:F
    iput p2, p0, Lcom/smartisanos/smengine/Oa;->nU:F
    const/4 v0, 0x0
    iput v0, p0, Lcom/smartisanos/smengine/Oa;->start:I
    :shadow_target_accepted
    const/4 v0, 0x1
    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/n;->obtain()Lcom/smartisanos/smengine/n;

    move-result-object p0

    .line 3
    sget-object v1, Lcom/smartisanos/smengine/Ra;->gV:Lcom/smartisanos/smengine/Oa;

    const/4 v0, 0x1
    iput-boolean v0, v1, Lcom/smartisanos/smengine/Oa;->running:Z
    iput-boolean v0, v1, Lcom/smartisanos/smengine/Oa;->hasSample:Z
    const/4 v0, 0x0
    iput p1, v1, Lcom/smartisanos/smengine/Oa;->mU:F
    iput p1, v1, Lcom/smartisanos/smengine/Oa;->currentLux:F

    .line 4
    iput p2, v1, Lcom/smartisanos/smengine/Oa;->nU:F

    .line 5
    iput v0, v1, Lcom/smartisanos/smengine/Oa;->start:I

    .line 6
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->lt()I

    move-result p1

    iput p1, v1, Lcom/smartisanos/smengine/Oa;->duration:I

    .line 7
    sget-object p1, Lcom/smartisanos/smengine/Ra;->gV:Lcom/smartisanos/smengine/Oa;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/n;->j(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/n;->q(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public wt()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Ra;->FU:Landroid/opengl/GLSurfaceView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_0
    return-void
.end method

.method public static resumeShadowOwner()Lcom/smartisanos/smengine/Oa;
    .locals 1
    sget-object v0, Lcom/smartisanos/smengine/Ra;->gV:Lcom/smartisanos/smengine/Oa;
    return-object v0
.end method

.method public resumeShadowTransition()V
    .locals 3
    sget-object v0, Lcom/smartisanos/smengine/Ra;->gV:Lcom/smartisanos/smengine/Oa;
    iget-boolean v1, v0, Lcom/smartisanos/smengine/Oa;->suspended:Z
    if-eqz v1, :done
    const/4 v1, 0x0
    iput-boolean v1, v0, Lcom/smartisanos/smengine/Oa;->suspended:Z
    invoke-static {}, Lcom/smartisanos/smengine/n;->obtain()Lcom/smartisanos/smengine/n;
    move-result-object v2
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/n;->j(Ljava/lang/Runnable;)V
    const/4 v1, 0x0
    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/n;->q(F)V
    :done
    return-void
.end method

.method public applyShadowLux(FF)V
    .locals 3
    invoke-static {p1}, Lcom/smartisanos/smengine/Ra;->S(F)F
    move-result v0
    const/4 v1, 0x0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F
    move-result v0
    const/high16 v1, 0x3f800000
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
    move-result v0
    mul-float/2addr v0, p2
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/Ra;->V(F)V
    const/4 v1, -0x1
    invoke-static {p1, v0, v1}, Lcom/smartisanos/launcher/theme/IconIlluminationCompat;->traceLightFrame(FFI)V
    return-void
.end method

.method public restoreShadowLux(F)Z
    .locals 4
    sget-object v0, Lcom/smartisanos/smengine/Ra;->gV:Lcom/smartisanos/smengine/Oa;
    iget-boolean v1, v0, Lcom/smartisanos/smengine/Oa;->hasSample:Z
    if-nez v1, :known_light_sample
    const/4 v1, 0x1
    iput p1, v0, Lcom/smartisanos/smengine/Oa;->currentLux:F
    iput p1, v0, Lcom/smartisanos/smengine/Oa;->mU:F
    iput p1, v0, Lcom/smartisanos/smengine/Oa;->nU:F
    iput-boolean v1, v0, Lcom/smartisanos/smengine/Oa;->hasSample:Z
    goto :restore_known_light
    :known_light_sample
    iget v1, v0, Lcom/smartisanos/smengine/Oa;->currentLux:F
    sub-float v2, v1, p1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F
    move-result v2
    const/high16 v3, 0x41200000
    cmpg-float v2, v2, v3
    if-lez v2, :restore_known_light
    invoke-virtual {p0, v1, p1}, Lcom/smartisanos/smengine/Ra;->w(FF)Z
    move-result v1
    return v1
    :restore_known_light
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->tt()Z
    move-result v2
    const/high16 v1, 0x3f000000
    if-nez v2, :restore_weather_coefficient
    const v1, 0x3f333333
    :restore_weather_coefficient
    iget p1, v0, Lcom/smartisanos/smengine/Oa;->currentLux:F
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/Ra;->applyShadowLux(FF)V
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->jt()Lcom/smartisanos/smengine/Q;
    move-result-object v2
    invoke-virtual {v2}, Lcom/smartisanos/smengine/Q;->getRootNode()Lcom/smartisanos/smengine/SceneNode;
    move-result-object v2
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateNeedDisplay()V
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V
    const/4 v1, 0x1
    return v1
.end method
