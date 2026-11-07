.class public Lcom/smartisanos/smengine/c/i;
.super Ljava/lang/Object;
.source "ShadowManager.java"


# static fields
.field private static VX:Lcom/smartisanos/smengine/c/i; = null

.field public static WX:J = -0x1L


# instance fields
.field public AX:Z

.field public BX:Z

.field public CX:Z

.field public DX:I

.field private EX:Lcom/smartisanos/smengine/c/g;

.field private FX:Lcom/smartisanos/smengine/c/g;

.field private GX:Lcom/smartisanos/smengine/c/j;

.field private HX:Lcom/smartisanos/smengine/c/b;

.field private IX:Lcom/smartisanos/smengine/Camera;

.field private JX:[F

.field private KX:I

.field private LX:Ljava/nio/ShortBuffer;

.field private MX:I

.field private NX:Ljava/nio/FloatBuffer;

.field private OX:Z

.field private Pq:Landroid/os/HandlerThread;

.field private QX:Landroid/os/Handler;

.field private Qx:Lcom/smartisanos/smengine/Camera;

.field private RX:Lcom/smartisanos/smengine/c/n;

.field private SX:J

.field private UX:J

.field private ap:Z

.field private bF:I

.field private cF:I

.field count:I

.field private mWorldMatrix:Lcom/smartisanos/smengine/a/f;

.field private vF:Lcom/smartisanos/smengine/a/f;

.field public zX:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/c/i;->vF:Lcom/smartisanos/smengine/a/f;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/c/i;->mWorldMatrix:Lcom/smartisanos/smengine/a/f;

    const/4 v0, 0x6

    .line 4
    iput v0, p0, Lcom/smartisanos/smengine/c/i;->KX:I

    .line 5
    iget v0, p0, Lcom/smartisanos/smengine/c/i;->KX:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/smengine/c/i;->LX:Ljava/nio/ShortBuffer;

    const/4 v0, 0x4

    .line 6
    iput v0, p0, Lcom/smartisanos/smengine/c/i;->MX:I

    .line 7
    iget v1, p0, Lcom/smartisanos/smengine/c/i;->MX:I

    mul-int/lit8 v1, v1, 0xc

    mul-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c/i;->OX:Z

    .line 9
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c/i;->ap:Z

    .line 10
    iput v0, p0, Lcom/smartisanos/smengine/c/i;->count:I

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/smartisanos/smengine/c/i;->bF:I

    const-wide/16 v1, -0x1

    .line 12
    iput-wide v1, p0, Lcom/smartisanos/smengine/c/i;->SX:J

    .line 13
    iput v0, p0, Lcom/smartisanos/smengine/c/i;->cF:I

    .line 14
    iput-wide v1, p0, Lcom/smartisanos/smengine/c/i;->UX:J

    .line 15
    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->mWorldMatrix:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/f;->loadIdentity()V

    .line 16
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "scene-manager-post-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/c/i;->Pq:Landroid/os/HandlerThread;

    .line 17
    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->Pq:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/smartisanos/smengine/c/i;->Pq:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/c/i;->QX:Landroid/os/Handler;

    return-void
.end method

.method private D(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/f;->Kt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/c/i;->s(Lcom/smartisanos/smengine/SceneNode;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-direct {p0, v2}, Lcom/smartisanos/smengine/c/i;->D(Lcom/smartisanos/smengine/SceneNode;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/smartisanos/smengine/c/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/smengine/c/i;->VX:Lcom/smartisanos/smengine/c/i;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/c/i;

    invoke-direct {v0}, Lcom/smartisanos/smengine/c/i;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/c/i;->VX:Lcom/smartisanos/smengine/c/i;

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/smengine/c/i;->VX:Lcom/smartisanos/smengine/c/i;

    return-object v0
.end method

.method private nB()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/c/i;->UX:J

    sget-wide v2, Lcom/smartisanos/smengine/c/i;->WX:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2
    iput v1, p0, Lcom/smartisanos/smengine/c/i;->cF:I

    .line 3
    iput-wide v2, p0, Lcom/smartisanos/smengine/c/i;->UX:J

    .line 4
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/c/i;->cF:I

    const v2, 0x8893

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v3, 0x0

    .line 5
    invoke-static {v0, v1, v3}, Lcom/smartisanos/smengine/P;->glGenBuffers(I[II)V

    .line 6
    aget v0, v1, v3

    iput v0, p0, Lcom/smartisanos/smengine/c/i;->cF:I

    .line 7
    iget v0, p0, Lcom/smartisanos/smengine/c/i;->cF:I

    invoke-static {v2, v0}, Lcom/smartisanos/smengine/P;->glBindBuffer(II)V

    .line 8
    iget-object p0, p0, Lcom/smartisanos/smengine/c/i;->LX:Ljava/nio/ShortBuffer;

    .line 9
    invoke-virtual {p0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const v1, 0x88e4

    .line 11
    invoke-static {v2, v0, p0, v1}, Lcom/smartisanos/smengine/P;->glBufferData(IILjava/nio/Buffer;I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v2, v0}, Lcom/smartisanos/smengine/P;->glBindBuffer(II)V

    :goto_0
    return-void
.end method

.method private oB()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/c/i;->SX:J

    sget-wide v2, Lcom/smartisanos/smengine/c/i;->WX:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2
    iput v1, p0, Lcom/smartisanos/smengine/c/i;->bF:I

    .line 3
    iput-wide v2, p0, Lcom/smartisanos/smengine/c/i;->SX:J

    .line 4
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/c/i;->bF:I

    const v2, 0x8892

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v3, 0x0

    .line 5
    invoke-static {v0, v1, v3}, Lcom/smartisanos/smengine/P;->glGenBuffers(I[II)V

    .line 6
    aget v0, v1, v3

    iput v0, p0, Lcom/smartisanos/smengine/c/i;->bF:I

    .line 7
    iget v0, p0, Lcom/smartisanos/smengine/c/i;->bF:I

    invoke-static {v2, v0}, Lcom/smartisanos/smengine/P;->glBindBuffer(II)V

    .line 8
    iget-object p0, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    .line 9
    invoke-virtual {p0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x88e8

    .line 11
    invoke-static {v2, v0, p0, v1}, Lcom/smartisanos/smengine/P;->glBufferData(IILjava/nio/Buffer;I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v2, v0}, Lcom/smartisanos/smengine/P;->glBindBuffer(II)V

    :goto_0
    return-void
.end method

.method private pB()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/c/i;->OX:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c/i;->OX:Z

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 5
    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 6
    sget v2, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v2, v2

    add-float v3, v2, v1

    div-float/2addr v3, v2

    .line 7
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    .line 8
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    neg-float v1, v1

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    .line 9
    iget-object v3, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    neg-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 10
    iget-object v3, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    neg-float v8, v4

    div-float/2addr v8, v6

    invoke-virtual {v3, v0, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 11
    iget-object v3, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    const/4 v9, 0x2

    invoke-virtual {v3, v9, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 v3, 0xc

    .line 12
    iget-object v10, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    div-float/2addr v2, v6

    invoke-virtual {v10, v3, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 v3, 0xd

    .line 13
    iget-object v10, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v3, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 v3, 0xe

    .line 14
    iget-object v8, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v3, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 v3, 0x18

    .line 15
    iget-object v8, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v3, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 v2, 0x19

    .line 16
    iget-object v3, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    div-float/2addr v4, v6

    invoke-virtual {v3, v2, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 v2, 0x1a

    .line 17
    iget-object v3, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 v2, 0x24

    .line 18
    iget-object v3, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 v2, 0x25

    .line 19
    iget-object v3, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 v2, 0x26

    .line 20
    iget-object v3, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    .line 21
    iget-object v2, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    .line 22
    iget-object v2, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 v1, 0x12

    .line 23
    iget-object v2, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 v1, 0x13

    .line 24
    iget-object v2, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 v1, 0x1e

    .line 25
    iget-object v2, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 v1, 0x1f

    .line 26
    iget-object v2, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 v1, 0x2a

    .line 27
    iget-object v2, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 v1, 0x2b

    .line 28
    iget-object v2, p0, Lcom/smartisanos/smengine/c/i;->NX:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 29
    iget-object v1, p0, Lcom/smartisanos/smengine/c/i;->LX:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v7, v7}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 30
    iget-object v1, p0, Lcom/smartisanos/smengine/c/i;->LX:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v0, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 31
    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->LX:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v9, v9}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 32
    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->LX:Ljava/nio/ShortBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    const/4 v0, 0x4

    .line 33
    iget-object v2, p0, Lcom/smartisanos/smengine/c/i;->LX:Ljava/nio/ShortBuffer;

    invoke-virtual {v2, v0, v1}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    const/4 v0, 0x5

    .line 34
    iget-object p0, p0, Lcom/smartisanos/smengine/c/i;->LX:Ljava/nio/ShortBuffer;

    invoke-virtual {p0, v0, v7}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    return-void
.end method


# virtual methods
.method public Bc(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->RX:Lcom/smartisanos/smengine/c/n;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/c/n;

    invoke-direct {v0}, Lcom/smartisanos/smengine/c/n;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/c/i;->RX:Lcom/smartisanos/smengine/c/n;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->RX:Lcom/smartisanos/smengine/c/n;

    const-string v1, "noise.png"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c/n;->kb(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/smengine/c/i;->RX:Lcom/smartisanos/smengine/c/n;

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/c/n;->Cc(I)Z

    return-void
.end method

.method public Xb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/c/i;->ap:Z

    return-void
.end method

.method public fu()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->HX:Lcom/smartisanos/smengine/c/b;

    const/16 v1, 0x200

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/c/b;

    invoke-direct {v0, v1, v1}, Lcom/smartisanos/smengine/c/b;-><init>(II)V

    iput-object v0, p0, Lcom/smartisanos/smengine/c/i;->HX:Lcom/smartisanos/smengine/c/b;

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 4
    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 5
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    sget v3, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    neg-float v0, v0

    .line 6
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 7
    new-instance v2, Lcom/smartisanos/smengine/Camera;

    invoke-direct {v2, v1, v1}, Lcom/smartisanos/smengine/Camera;-><init>(II)V

    iput-object v2, p0, Lcom/smartisanos/smengine/c/i;->IX:Lcom/smartisanos/smengine/Camera;

    .line 8
    sget v2, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    const v3, 0x454e4000    # 3300.0f

    div-float/2addr v2, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-float v2, v4

    .line 9
    iget-object v4, p0, Lcom/smartisanos/smengine/c/i;->IX:Lcom/smartisanos/smengine/Camera;

    const/high16 v5, 0x44fa0000    # 2000.0f

    const v6, 0x459c4000    # 5000.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v2, v7, v5, v6}, Lcom/smartisanos/smengine/Camera;->d(FFFF)V

    .line 10
    iget-object v2, p0, Lcom/smartisanos/smengine/c/i;->IX:Lcom/smartisanos/smengine/Camera;

    new-instance v4, Lcom/smartisanos/smengine/a/j;

    const/high16 v5, 0x43160000    # 150.0f

    invoke-direct {v4, v5, v0, v3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/Camera;->g(Lcom/smartisanos/smengine/a/j;)V

    .line 11
    iget-object v2, p0, Lcom/smartisanos/smengine/c/i;->IX:Lcom/smartisanos/smengine/Camera;

    new-instance v3, Lcom/smartisanos/smengine/a/j;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0, v4, v7, v4}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a/j;->zt()Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/smengine/Camera;->a(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V

    .line 12
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/smartisanos/smengine/k;->Vj()Lcom/smartisanos/smengine/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/smengine/c/i;->Qx:Lcom/smartisanos/smengine/Camera;

    .line 14
    iget-object v2, p0, Lcom/smartisanos/smengine/c/i;->IX:Lcom/smartisanos/smengine/Camera;

    const-string v3, "mainCamera"

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/k;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V

    .line 15
    iget-object v2, p0, Lcom/smartisanos/smengine/c/i;->IX:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/k;->a(Lcom/smartisanos/smengine/Camera;)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->HX:Lcom/smartisanos/smengine/c/b;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/c/b;->create()V

    invoke-virtual {v0}, Lcom/smartisanos/smengine/c/b;->isReady()Z
    move-result v0
    if-nez v0, :shadow_depth_created
    invoke-virtual {p0}, Lcom/smartisanos/smengine/c/i;->iu()V
    return-void
    :shadow_depth_created

    .line 17
    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->HX:Lcom/smartisanos/smengine/c/b;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/c/b;->bind()V

    const/4 v0, 0x0

    .line 18
    invoke-static {v0, v0, v1, v1}, Lcom/smartisanos/smengine/P;->glViewport(IIII)V

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/smartisanos/smengine/c/i;->zX:I

    .line 20
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c/i;->AX:Z

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c/i;->BX:Z

    .line 22
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c/i;->CX:Z

    const/16 v0, 0x405

    .line 23
    iput v0, p0, Lcom/smartisanos/smengine/c/i;->DX:I

    const/16 p0, 0xbe2

    .line 24
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glDisable(I)V

    const/16 p0, 0xb71

    .line 25
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glEnable(I)V

    const/16 p0, 0xb44

    .line 26
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glEnable(I)V

    .line 27
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glCullFace(I)V

    return-void
.end method

.method public gu()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/c/i;->ap:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/c/i;->fu()V

    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->HX:Lcom/smartisanos/smengine/c/b;
    invoke-virtual {v0}, Lcom/smartisanos/smengine/c/b;->isReady()Z
    move-result v0
    if-nez v0, :shadow_depth_renderable
    return-void
    :shadow_depth_renderable

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/c/i;->D(Lcom/smartisanos/smengine/SceneNode;)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/c/i;->iu()V

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/c/i;->hu()V

    return-void
.end method

.method public hu()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/smartisanos/smengine/c/i;->HX:Lcom/smartisanos/smengine/c/b;
    if-eqz v1, :shadow_depth_unavailable
    invoke-virtual {v1}, Lcom/smartisanos/smengine/c/b;->isReady()Z
    move-result v1
    if-nez v1, :shadow_depth_sampleable
    :shadow_depth_unavailable
    return-void
    :shadow_depth_sampleable

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/c/i;->pB()V

    .line 2
    iget-object v1, v0, Lcom/smartisanos/smengine/c/i;->GX:Lcom/smartisanos/smengine/c/j;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/c/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/c/j;-><init>()V

    iput-object v1, v0, Lcom/smartisanos/smengine/c/i;->GX:Lcom/smartisanos/smengine/c/j;

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/smartisanos/smengine/c/i;->GX:Lcom/smartisanos/smengine/c/j;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/smartisanos/smengine/c/j;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Camera;)V

    const v1, 0x8d40

    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    .line 6
    iget-object v1, v0, Lcom/smartisanos/smengine/c/i;->HX:Lcom/smartisanos/smengine/c/b;

    const v3, 0x84c0

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/c/b;->Ac(I)V

    const v1, 0x84c1

    .line 7
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c/i;->Bc(I)V

    .line 8
    iget-object v1, v0, Lcom/smartisanos/smengine/c/i;->GX:Lcom/smartisanos/smengine/c/j;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/c/g;->bu()I

    move-result v1

    invoke-static {v1, v2}, Lcom/smartisanos/smengine/c/g;->J(II)V

    .line 9
    iget-object v1, v0, Lcom/smartisanos/smengine/c/i;->GX:Lcom/smartisanos/smengine/c/j;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/c/g;->cu()I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/smartisanos/smengine/c/g;->J(II)V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-virtual {v1, v4, v5}, Lcom/smartisanos/launcher/view/Eb;->n(II)Lcom/smartisanos/smengine/Camera;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v4

    .line 12
    invoke-virtual {v1}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v5

    .line 13
    invoke-static {v2, v2, v4, v5}, Lcom/smartisanos/smengine/P;->glViewport(IIII)V

    .line 14
    invoke-virtual {v1}, Lcom/smartisanos/smengine/Camera;->Rj()Lcom/smartisanos/smengine/a/f;

    move-result-object v1

    .line 15
    iget-object v4, v0, Lcom/smartisanos/smengine/c/i;->mWorldMatrix:Lcom/smartisanos/smengine/a/f;

    iget-object v5, v0, Lcom/smartisanos/smengine/c/i;->vF:Lcom/smartisanos/smengine/a/f;

    invoke-virtual {v1, v4, v5}, Lcom/smartisanos/smengine/a/f;->a(Lcom/smartisanos/smengine/a/f;Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;

    .line 16
    iget-object v1, v0, Lcom/smartisanos/smengine/c/i;->JX:[F

    if-nez v1, :cond_1

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 17
    iput-object v1, v0, Lcom/smartisanos/smengine/c/i;->JX:[F

    .line 18
    :cond_1
    iget-object v1, v0, Lcom/smartisanos/smengine/c/i;->vF:Lcom/smartisanos/smengine/a/f;

    iget-object v4, v0, Lcom/smartisanos/smengine/c/i;->JX:[F

    invoke-virtual {v1, v4, v3}, Lcom/smartisanos/smengine/a/f;->a([FZ)V

    .line 19
    iget-object v1, v0, Lcom/smartisanos/smengine/c/i;->GX:Lcom/smartisanos/smengine/c/j;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/c/g;->_t()I

    move-result v1

    iget-object v4, v0, Lcom/smartisanos/smengine/c/i;->JX:[F

    invoke-static {v1, v3, v2, v4, v2}, Lcom/smartisanos/smengine/P;->glUniformMatrix4fv(IIZ[FI)V

    .line 20
    iget-object v1, v0, Lcom/smartisanos/smengine/c/i;->mWorldMatrix:Lcom/smartisanos/smengine/a/f;

    iget-object v4, v0, Lcom/smartisanos/smengine/c/i;->JX:[F

    invoke-virtual {v1, v4, v3}, Lcom/smartisanos/smengine/a/f;->a([FZ)V

    .line 21
    iget-object v1, v0, Lcom/smartisanos/smengine/c/i;->GX:Lcom/smartisanos/smengine/c/j;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/c/g;->du()I

    move-result v1

    iget-object v4, v0, Lcom/smartisanos/smengine/c/i;->JX:[F

    invoke-static {v1, v3, v2, v4, v2}, Lcom/smartisanos/smengine/P;->glUniformMatrix4fv(IIZ[FI)V

    .line 22
    iget-object v1, v0, Lcom/smartisanos/smengine/c/i;->IX:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Camera;->Rj()Lcom/smartisanos/smengine/a/f;

    move-result-object v1

    iget-object v4, v0, Lcom/smartisanos/smengine/c/i;->JX:[F

    invoke-virtual {v1, v4, v3}, Lcom/smartisanos/smengine/a/f;->a([FZ)V

    .line 23
    iget-object v1, v0, Lcom/smartisanos/smengine/c/i;->GX:Lcom/smartisanos/smengine/c/j;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/c/g;->au()I

    move-result v1

    iget-object v4, v0, Lcom/smartisanos/smengine/c/i;->JX:[F

    invoke-static {v1, v3, v2, v4, v2}, Lcom/smartisanos/smengine/P;->glUniformMatrix4fv(IIZ[FI)V

    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/c/i;->oB()V

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x30

    .line 25
    invoke-static/range {v5 .. v10}, Lcom/smartisanos/smengine/P;->glVertexAttribPointer(IIIZII)V

    .line 26
    invoke-static {v2}, Lcom/smartisanos/smengine/P;->glEnableVertexAttribArray(I)V

    const/16 v16, 0x18

    const/4 v11, 0x2

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/16 v15, 0x30

    .line 27
    invoke-static/range {v11 .. v16}, Lcom/smartisanos/smengine/P;->glVertexAttribPointer(IIIZII)V

    const/4 v1, 0x2

    .line 28
    invoke-static {v1}, Lcom/smartisanos/smengine/P;->glEnableVertexAttribArray(I)V

    .line 29
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/c/i;->nB()V

    .line 30
    iget v0, v0, Lcom/smartisanos/smengine/c/i;->KX:I

    const/4 v1, 0x4

    const/16 v3, 0x1403

    .line 31
    invoke-static {v1, v0, v3, v2}, Lcom/smartisanos/smengine/P;->glDrawElements(IIII)V

    const v0, 0x8892

    .line 32
    invoke-static {v0, v2}, Lcom/smartisanos/smengine/P;->glBindBuffer(II)V

    const v0, 0x8893

    .line 33
    invoke-static {v0, v2}, Lcom/smartisanos/smengine/P;->glBindBuffer(II)V

    return-void
.end method

.method public init()V
    .locals 0

    invoke-static {}, Lcom/smartisanos/smengine/c/i;->advanceContextGeneration()V
    return-void
.end method

# Renderer invalidation must not construct the worker-owning singleton on the GL thread.
.method public static advanceContextGeneration()V
    .locals 4

    .line 1
    sget-wide v0, Lcom/smartisanos/smengine/c/i;->WX:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/smartisanos/smengine/c/i;->WX:J

    return-void
.end method

.method public iu()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->HX:Lcom/smartisanos/smengine/c/b;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/c/b;->Zt()V

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->at()Lcom/smartisanos/smengine/k;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/smengine/c/i;->Qx:Lcom/smartisanos/smengine/Camera;

    const-string v2, "mainCamera"

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/k;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/smengine/c/i;->Qx:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/k;->a(Lcom/smartisanos/smengine/Camera;)V

    return-void
.end method

.method public k(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->QX:Landroid/os/Handler;

    new-instance v1, Lcom/smartisanos/smengine/c/h;

    invoke-direct {v1, p0, p1}, Lcom/smartisanos/smengine/c/h;-><init>(Lcom/smartisanos/smengine/c/i;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public s(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->IX:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->setNativeData(Lcom/smartisanos/smengine/Camera;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->IX:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->calculateMVPMatrixData(Lcom/smartisanos/smengine/Camera;)V

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/f;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleTextureDirLightMaterial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->FX:Lcom/smartisanos/smengine/c/g;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/smartisanos/smengine/c/e;

    invoke-direct {v0}, Lcom/smartisanos/smengine/c/e;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/c/i;->FX:Lcom/smartisanos/smengine/c/g;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->FX:Lcom/smartisanos/smengine/c/g;

    iget-object p0, p0, Lcom/smartisanos/smengine/c/i;->IX:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, p1, p0}, Lcom/smartisanos/smengine/c/g;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Camera;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->EX:Lcom/smartisanos/smengine/c/g;

    if-nez v0, :cond_4

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->zr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Lcom/smartisanos/smengine/c/d;

    invoke-direct {v0}, Lcom/smartisanos/smengine/c/d;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/c/i;->EX:Lcom/smartisanos/smengine/c/g;

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Br()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    new-instance v0, Lcom/smartisanos/smengine/c/c;

    invoke-direct {v0}, Lcom/smartisanos/smengine/c/c;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/c/i;->EX:Lcom/smartisanos/smengine/c/g;

    goto :goto_0

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "renderToDepthBuffer"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/smengine/c/i;->EX:Lcom/smartisanos/smengine/c/g;

    iget-object p0, p0, Lcom/smartisanos/smengine/c/i;->IX:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, p1, p0}, Lcom/smartisanos/smengine/c/g;->a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Camera;)V

    :goto_1
    return-void
.end method
