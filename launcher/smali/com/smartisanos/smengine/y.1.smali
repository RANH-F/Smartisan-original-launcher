.class public Lcom/smartisanos/smengine/y;
.super Ljava/lang/Object;
.source "Mesh.java"


# instance fields
.field private mBufferContextGeneration:I

.field private RE:Lcom/smartisanos/smengine/w;

.field private SE:[F

.field private TE:[F

.field private UE:[F

.field private VE:[S

.field private WE:[F

.field private XE:[[F

.field private YE:I

.field private ZE:Z

.field private _E:I

.field private aF:Z

.field bF:I

.field cF:I

.field private dF:Ljava/nio/FloatBuffer;

.field private eF:Ljava/nio/ShortBuffer;

.field private fF:I

.field private isClear:Z

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/smengine/y;->isClear:Z

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/w;

    invoke-direct {v1}, Lcom/smartisanos/smengine/w;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/y;->RE:Lcom/smartisanos/smengine/w;

    .line 4
    iput v0, p0, Lcom/smartisanos/smengine/y;->YE:I

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/smengine/y;->aF:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/smartisanos/smengine/y;->bF:I

    .line 7
    iput v1, p0, Lcom/smartisanos/smengine/y;->cF:I

    .line 8
    iput v0, p0, Lcom/smartisanos/smengine/y;->fF:I

    const/4 v1, 0x4

    new-array v1, v1, [[F

    .line 9
    iput-object v1, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    .line 10
    iput v0, p0, Lcom/smartisanos/smengine/y;->fF:I

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/smartisanos/smengine/y;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/smartisanos/smengine/y;->isClear:Z

    .line 14
    new-instance v1, Lcom/smartisanos/smengine/w;

    invoke-direct {v1}, Lcom/smartisanos/smengine/w;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/y;->RE:Lcom/smartisanos/smengine/w;

    .line 15
    iput v0, p0, Lcom/smartisanos/smengine/y;->YE:I

    .line 16
    iput-boolean v0, p0, Lcom/smartisanos/smengine/y;->aF:Z

    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lcom/smartisanos/smengine/y;->bF:I

    .line 18
    iput v1, p0, Lcom/smartisanos/smengine/y;->cF:I

    .line 19
    iput v0, p0, Lcom/smartisanos/smengine/y;->fF:I

    const/4 v1, 0x4

    new-array v1, v1, [[F

    .line 20
    iput-object v1, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    .line 21
    iput v0, p0, Lcom/smartisanos/smengine/y;->fF:I

    .line 22
    iput-object p1, p0, Lcom/smartisanos/smengine/y;->mName:Ljava/lang/String;

    return-void
.end method

.method private Wx()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/y;->VE:[S

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/y;->YE:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/smartisanos/smengine/y;->YE:I

    :goto_0
    return-void
.end method

.method private Xx()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/y;->WE:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/y;->fF:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 4
    iput v0, p0, Lcom/smartisanos/smengine/y;->fF:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/smengine/y;->WE:[F

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    .line 6
    iput v0, p0, Lcom/smartisanos/smengine/y;->fF:I

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/smartisanos/smengine/y;->UE:[F

    if-nez v0, :cond_3

    const/4 v0, 0x6

    .line 8
    iput v0, p0, Lcom/smartisanos/smengine/y;->fF:I

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/smartisanos/smengine/y;->UE:[F

    if-nez v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/smartisanos/smengine/y;->TE:[F

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lcom/smartisanos/smengine/y;->fF:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/smartisanos/smengine/y;->fF:I

    goto :goto_0

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/smartisanos/smengine/y;->UE:[F

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    .line 14
    iput v0, p0, Lcom/smartisanos/smengine/y;->fF:I

    goto :goto_0

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v0, v0, v1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/smartisanos/smengine/y;->UE:[F

    if-eqz v0, :cond_7

    .line 16
    iput v3, p0, Lcom/smartisanos/smengine/y;->fF:I

    :goto_0
    return-void

    .line 17
    :cond_7
    new-instance p0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v0, "never goto this statement"

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private Yx()V
    .locals 3

    invoke-direct {p0}, Lcom/smartisanos/smengine/y;->ensureBufferContext()V

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/y;->cF:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const v1, 0x8893

    .line 2
    invoke-static {v1, v0}, Lcom/smartisanos/smengine/P;->glBindBuffer(II)V

    const-string v0, "glBindBuffer index"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/y;->qk()Ljava/nio/ShortBuffer;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const v2, 0x88e4

    .line 6
    invoke-static {v1, v0, p0, v2}, Lcom/smartisanos/smengine/P;->glBufferData(IILjava/nio/Buffer;I)V

    const-string p0, "glBufferData index"

    .line 7
    invoke-static {p0}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    return-void
.end method

.method private f(I[F)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v2, v1, p1

    aget v3, p2, v0

    aput v3, v2, v0

    .line 3
    aget-object v1, v1, p1

    add-int/lit8 v2, v0, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aget v4, p2, v2

    sub-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public Aa(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/y;->aF:Z

    return-void
.end method

.method public Ak()I
    .locals 3

    invoke-direct {p0}, Lcom/smartisanos/smengine/y;->ensureBufferContext()V

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/y;->bF:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lcom/smartisanos/smengine/P;->glGenBuffers(I[II)V

    .line 3
    aget v0, v1, v2

    iput v0, p0, Lcom/smartisanos/smengine/y;->bF:I

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/y;->Dk()V

    .line 5
    iget p0, p0, Lcom/smartisanos/smengine/y;->bF:I

    return p0
.end method

.method public Bk()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/y;->fF:I

    return p0
.end method

.method public Ck()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/y;->aF:Z

    return p0
.end method

.method public Dk()V
    .locals 3

    invoke-direct {p0}, Lcom/smartisanos/smengine/y;->ensureBufferContext()V

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/y;->bF:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const v1, 0x8892

    .line 2
    invoke-static {v1, v0}, Lcom/smartisanos/smengine/P;->glBindBuffer(II)V

    const-string v0, "glBindBuffer"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/y;->zk()Ljava/nio/FloatBuffer;

    move-result-object p0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    const v2, 0x88e4

    .line 7
    invoke-static {v1, v0, p0, v2}, Lcom/smartisanos/smengine/P;->glBufferData(IILjava/nio/Buffer;I)V

    const-string p0, "glBufferData"

    .line 8
    invoke-static {p0}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    return-void
.end method

.method public Ta(I)V
    .locals 4

    invoke-direct {p0}, Lcom/smartisanos/smengine/y;->ensureBufferContext()V

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/y;->YE:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    mul-int/lit8 p1, p1, 0x3

    mul-int/lit8 v0, p1, 0x2

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/smengine/y;->VE:[S

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    .line 5
    iput-object v1, p0, Lcom/smartisanos/smengine/y;->eF:Ljava/nio/ShortBuffer;

    .line 6
    iget p0, p0, Lcom/smartisanos/smengine/y;->cF:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const p1, 0x8893

    .line 7
    invoke-static {p1, p0}, Lcom/smartisanos/smengine/P;->glBindBuffer(II)V

    const p0, 0x88e4

    .line 8
    invoke-static {p1, v0, v1, p0}, Lcom/smartisanos/smengine/P;->glBufferData(IILjava/nio/Buffer;I)V

    :cond_1
    return-void
.end method

.method public Ua(I)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object p0, p0, p1

    return-object p0
.end method

.method public a([F[F[F[S[FZ)V
    .locals 3

    if-eqz p1, :cond_8

    .line 2
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/y;->SE:[F

    .line 3
    iget-object v0, p0, Lcom/smartisanos/smengine/y;->SE:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p4, :cond_0

    .line 4
    array-length p1, p4

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/smartisanos/smengine/y;->VE:[S

    .line 5
    iget-object p1, p0, Lcom/smartisanos/smengine/y;->VE:[S

    array-length v0, p4

    invoke-static {p4, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-eqz p2, :cond_3

    .line 6
    iget-object p1, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    array-length p4, p2

    new-array p4, p4, [F

    aput-object p4, p1, v2

    if-nez p6, :cond_1

    .line 7
    aget-object p1, p1, v2

    array-length p4, p2

    invoke-static {p2, v2, p1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/smartisanos/smengine/y;->f(I[F)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/smengine/y;->SE:[F

    array-length p1, p1

    div-int/lit8 p1, p1, 0x3

    .line 10
    iget-object p2, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object p2, p2, v2

    array-length p2, p2

    div-int/lit8 p2, p2, 0x2

    if-ne p1, p2, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    new-instance p0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string p1, "create mesh error: point num and tex num is not equal"

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-eqz p5, :cond_5

    .line 12
    array-length p1, p5

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/smartisanos/smengine/y;->UE:[F

    .line 13
    iget-object p1, p0, Lcom/smartisanos/smengine/y;->UE:[F

    array-length p2, p5

    invoke-static {p5, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/smengine/y;->SE:[F

    array-length p1, p1

    div-int/lit8 p1, p1, 0x3

    .line 15
    iget-object p2, p0, Lcom/smartisanos/smengine/y;->UE:[F

    array-length p2, p2

    div-int/lit8 p2, p2, 0x4

    if-ne p1, p2, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    new-instance p0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string p1, "create mesh error: point num and color num is not equal"

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    if-eqz p3, :cond_7

    .line 17
    array-length p1, p3

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/smartisanos/smengine/y;->TE:[F

    .line 18
    iget-object p1, p0, Lcom/smartisanos/smengine/y;->TE:[F

    array-length p2, p3

    invoke-static {p3, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget-object p1, p0, Lcom/smartisanos/smengine/y;->SE:[F

    array-length p1, p1

    div-int/lit8 p1, p1, 0x3

    .line 20
    iget-object p2, p0, Lcom/smartisanos/smengine/y;->TE:[F

    array-length p2, p2

    div-int/lit8 p2, p2, 0x3

    if-ne p1, p2, :cond_6

    goto :goto_3

    .line 21
    :cond_6
    new-instance p0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string p1, "create mesh error: point num and normal num is not equal"

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_7
    :goto_3
    iput-boolean p6, p0, Lcom/smartisanos/smengine/y;->ZE:Z

    .line 23
    invoke-direct {p0}, Lcom/smartisanos/smengine/y;->Wx()V

    .line 24
    invoke-direct {p0}, Lcom/smartisanos/smengine/y;->Xx()V

    return-void

    .line 25
    :cond_8
    new-instance p0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string p1, "create mesh error: pointArray null error"

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a([F[F[S[FZ)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/y;->a([F[F[F[S[FZ)V

    return-void
.end method

.method public a([F[F[S[F[FZ)V
    .locals 3

    if-eqz p1, :cond_8

    .line 26
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/y;->SE:[F

    .line 27
    iget-object v0, p0, Lcom/smartisanos/smengine/y;->SE:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p3, :cond_0

    .line 28
    array-length p1, p3

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/smartisanos/smengine/y;->VE:[S

    .line 29
    iget-object p1, p0, Lcom/smartisanos/smengine/y;->VE:[S

    array-length v0, p3

    invoke-static {p3, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-eqz p2, :cond_3

    .line 30
    iget-object p1, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    array-length p3, p2

    new-array p3, p3, [F

    aput-object p3, p1, v2

    if-nez p6, :cond_1

    .line 31
    aget-object p1, p1, v2

    array-length p3, p2

    invoke-static {p2, v2, p1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/smartisanos/smengine/y;->f(I[F)V

    .line 33
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/smengine/y;->SE:[F

    array-length p1, p1

    div-int/lit8 p1, p1, 0x3

    .line 34
    iget-object p2, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object p2, p2, v2

    array-length p2, p2

    div-int/lit8 p2, p2, 0x2

    if-ne p1, p2, :cond_2

    goto :goto_1

    .line 35
    :cond_2
    new-instance p0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string p1, "create mesh error: point num and tex num is not equal"

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-eqz p4, :cond_5

    .line 36
    array-length p1, p4

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/smartisanos/smengine/y;->UE:[F

    .line 37
    iget-object p1, p0, Lcom/smartisanos/smengine/y;->UE:[F

    array-length p2, p4

    invoke-static {p4, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget-object p1, p0, Lcom/smartisanos/smengine/y;->SE:[F

    array-length p1, p1

    div-int/lit8 p1, p1, 0x3

    .line 39
    iget-object p2, p0, Lcom/smartisanos/smengine/y;->UE:[F

    array-length p2, p2

    div-int/lit8 p2, p2, 0x4

    if-ne p1, p2, :cond_4

    goto :goto_2

    .line 40
    :cond_4
    new-instance p0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string p1, "create mesh error: point num and color num is not equal"

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    if-eqz p5, :cond_7

    .line 41
    array-length p1, p5

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/smartisanos/smengine/y;->TE:[F

    .line 42
    iget-object p1, p0, Lcom/smartisanos/smengine/y;->TE:[F

    array-length p2, p5

    invoke-static {p5, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-object p1, p0, Lcom/smartisanos/smengine/y;->SE:[F

    array-length p1, p1

    div-int/lit8 p1, p1, 0x3

    .line 44
    iget-object p2, p0, Lcom/smartisanos/smengine/y;->TE:[F

    array-length p2, p2

    div-int/lit8 p2, p2, 0x3

    if-ne p1, p2, :cond_6

    goto :goto_3

    .line 45
    :cond_6
    new-instance p0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string p1, "create mesh error: point num and normal num is not equal"

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_7
    :goto_3
    iput-boolean p6, p0, Lcom/smartisanos/smengine/y;->ZE:Z

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    .line 48
    invoke-virtual {p0}, Lcom/smartisanos/smengine/y;->ok()V

    .line 49
    invoke-direct {p0}, Lcom/smartisanos/smengine/y;->Wx()V

    .line 50
    invoke-direct {p0}, Lcom/smartisanos/smengine/y;->Xx()V

    return-void

    .line 51
    :cond_8
    new-instance p0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string p1, "create mesh error: pointArray null error"

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(I[F)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aput-object v0, p2, p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v2, v1, p1

    if-eqz v2, :cond_1

    aget-object v1, v1, p1

    array-length v1, v1

    array-length v2, p2

    if-eq v1, v2, :cond_2

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    array-length v2, p2

    new-array v2, v2, [F

    aput-object v2, v1, p1

    .line 4
    :cond_2
    iget-boolean v1, p0, Lcom/smartisanos/smengine/y;->ZE:Z

    if-nez v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object p1, v1, p1

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/smengine/y;->f(I[F)V

    .line 7
    :goto_0
    iput-object v0, p0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/smengine/y;->ok()V

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/smengine/y;->Xx()V

    return-void
.end method

.method public c([F)V
    .locals 3

    if-eqz p1, :cond_2

    .line 10
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/y;->WE:[F

    .line 11
    iget-object v0, p0, Lcom/smartisanos/smengine/y;->WE:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    .line 13
    iget-object p1, p0, Lcom/smartisanos/smengine/y;->UE:[F

    if-nez p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 15
    iput p1, p0, Lcom/smartisanos/smengine/y;->fF:I

    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string p1, "can not support tex array null and mat index array not null"

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_1
    new-instance p0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string p1, "can not support both mat index array and color array"

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public clearAll()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/y;->za(Z)V

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/smartisanos/smengine/y;->RE:Lcom/smartisanos/smengine/w;

    .line 3
    iput-object v1, p0, Lcom/smartisanos/smengine/y;->SE:[F

    .line 4
    iput-object v1, p0, Lcom/smartisanos/smengine/y;->TE:[F

    .line 5
    iput-object v1, p0, Lcom/smartisanos/smengine/y;->UE:[F

    .line 6
    iput-object v1, p0, Lcom/smartisanos/smengine/y;->VE:[S

    .line 7
    iput-object v1, p0, Lcom/smartisanos/smengine/y;->WE:[F

    .line 8
    iput-object v1, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    .line 9
    iput-object v1, p0, Lcom/smartisanos/smengine/y;->mName:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 12
    iput-object v1, p0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/smengine/y;->eF:Ljava/nio/ShortBuffer;

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 15
    iput-object v1, p0, Lcom/smartisanos/smengine/y;->eF:Ljava/nio/ShortBuffer;

    .line 16
    :cond_1
    iput-boolean v0, p0, Lcom/smartisanos/smengine/y;->isClear:Z

    return-void
.end method

.method public clone()Lcom/smartisanos/smengine/y;
    .locals 6

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/y;

    invoke-direct {v0}, Lcom/smartisanos/smengine/y;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/y;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/y;->setName(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->SE:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/smartisanos/smengine/y;->SE:[F

    .line 5
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->SE:[F

    iget-object v2, v0, Lcom/smartisanos/smengine/y;->SE:[F

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->VE:[S

    if-eqz v1, :cond_0

    .line 7
    array-length v1, v1

    new-array v1, v1, [S

    iput-object v1, v0, Lcom/smartisanos/smengine/y;->VE:[S

    .line 8
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->VE:[S

    iget-object v2, v0, Lcom/smartisanos/smengine/y;->VE:[S

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v2, v1, v4

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, v0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v3, v1, v4

    array-length v3, v3

    new-array v3, v3, [F

    aput-object v3, v2, v4

    .line 11
    aget-object v3, v1, v4

    aget-object v2, v2, v4

    aget-object v1, v1, v4

    array-length v1, v1

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    const/4 v2, 0x3

    aget-object v3, v1, v2

    if-eqz v3, :cond_2

    .line 13
    iget-object v3, v0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v5, v1, v2

    array-length v5, v5

    new-array v5, v5, [F

    aput-object v5, v3, v2

    .line 14
    aget-object v5, v1, v2

    aget-object v3, v3, v2

    aget-object v1, v1, v2

    array-length v1, v1

    invoke-static {v5, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->UE:[F

    if-eqz v1, :cond_3

    .line 16
    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/smartisanos/smengine/y;->UE:[F

    .line 17
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->UE:[F

    iget-object v2, v0, Lcom/smartisanos/smengine/y;->UE:[F

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->WE:[F

    if-eqz v1, :cond_4

    .line 19
    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/smartisanos/smengine/y;->WE:[F

    .line 20
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->WE:[F

    iget-object v2, v0, Lcom/smartisanos/smengine/y;->WE:[F

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->TE:[F

    if-eqz v1, :cond_5

    .line 22
    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/smartisanos/smengine/y;->TE:[F

    .line 23
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->TE:[F

    iget-object v2, v0, Lcom/smartisanos/smengine/y;->TE:[F

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    :cond_5
    iget v1, p0, Lcom/smartisanos/smengine/y;->YE:I

    iput v1, v0, Lcom/smartisanos/smengine/y;->YE:I

    .line 25
    iget-boolean v1, p0, Lcom/smartisanos/smengine/y;->ZE:Z

    iput-boolean v1, v0, Lcom/smartisanos/smengine/y;->ZE:Z

    .line 26
    iget v1, p0, Lcom/smartisanos/smengine/y;->fF:I

    iput v1, v0, Lcom/smartisanos/smengine/y;->fF:I

    .line 27
    iget p0, p0, Lcom/smartisanos/smengine/y;->_E:I

    iput p0, v0, Lcom/smartisanos/smengine/y;->_E:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object p0

    return-object p0
.end method

.method public d(I[F)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/y;->fF:I

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    const/4 v1, 0x0

    aput-object v1, p2, p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v2, v1, p1

    if-eqz v2, :cond_1

    aget-object v1, v1, p1

    array-length v1, v1

    array-length v2, p2

    if-eq v1, v2, :cond_2

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    array-length v2, p2

    new-array v2, v2, [F

    aput-object v2, v1, p1

    .line 5
    :cond_2
    iget-boolean v1, p0, Lcom/smartisanos/smengine/y;->ZE:Z

    if-nez v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v1, v1, p1

    array-length v2, p2

    invoke-static {p2, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/smengine/y;->f(I[F)V

    .line 8
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    if-nez p2, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/smengine/y;->zk()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    .line 10
    :cond_4
    iget p2, p0, Lcom/smartisanos/smengine/y;->fF:I

    invoke-static {p2}, Lcom/smartisanos/smengine/x;->Na(I)I

    move-result p2

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/smengine/y;->vk()I

    move-result v1

    const/4 v2, 0x3

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    if-ne p1, v2, :cond_6

    const/4 v2, 0x5

    goto :goto_1

    :cond_6
    move v2, v0

    .line 12
    :goto_1
    iget-object v3, p0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move v3, v0

    :goto_2
    if-ge v3, v1, :cond_7

    mul-int v4, v3, p2

    add-int/2addr v4, v2

    add-int/lit8 v5, v4, 0x1

    .line 13
    iget-object v6, p0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v7, v7, p1

    mul-int/lit8 v8, v3, 0x2

    aget v7, v7, v8

    invoke-virtual {v6, v4, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 14
    iget-object v4, p0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    iget-object v6, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v6, v6, p1

    add-int/lit8 v8, v8, 0x1

    aget v6, v6, v8

    invoke-virtual {v4, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 15
    :cond_7
    iget-object p0, p0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 16
    :cond_8
    new-instance p1, Lcom/smartisanos/smengine/Mesh$MeshException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid vertex type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/smengine/y;->fF:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getClearFlag()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/y;->isClear:Z

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/y;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public mk()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/y;->YE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/y;->rk()I

    move-result p0

    const v0, 0x8893

    .line 3
    invoke-static {v0, p0}, Lcom/smartisanos/smengine/P;->glBindBuffer(II)V

    :cond_0
    return-void
.end method

.method public nk()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/y;->Ak()I

    move-result p0

    const v0, 0x8892

    .line 2
    invoke-static {v0, p0}, Lcom/smartisanos/smengine/P;->glBindBuffer(II)V

    return-void
.end method

.method public ok()V
    .locals 5

    invoke-direct {p0}, Lcom/smartisanos/smengine/y;->ensureBufferContext()V

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/y;->bF:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    new-array v4, v2, [I

    aput v0, v4, v1

    .line 2
    invoke-static {v2, v4, v1}, Lcom/smartisanos/smengine/P;->glDeleteBuffers(I[II)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/y;->cF:I

    if-eq v0, v3, :cond_1

    new-array v4, v2, [I

    aput v0, v4, v1

    .line 4
    invoke-static {v2, v4, v1}, Lcom/smartisanos/smengine/P;->glDeleteBuffers(I[II)V

    .line 5
    :cond_1
    iput v3, p0, Lcom/smartisanos/smengine/y;->bF:I

    .line 6
    iput v3, p0, Lcom/smartisanos/smengine/y;->cF:I

    return-void
.end method

.method public pk()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/y;->eF:Ljava/nio/ShortBuffer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "index buffer null error"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public qk()Ljava/nio/ShortBuffer;
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/y;->YE:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/y;->eF:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/y;->VE:[S

    array-length v0, v0

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/smartisanos/smengine/y;->VE:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    iput-object v0, p0, Lcom/smartisanos/smengine/y;->eF:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public rk()I
    .locals 3

    invoke-direct {p0}, Lcom/smartisanos/smengine/y;->ensureBufferContext()V

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/y;->cF:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lcom/smartisanos/smengine/P;->glGenBuffers(I[II)V

    .line 3
    aget v0, v1, v2

    iput v0, p0, Lcom/smartisanos/smengine/y;->cF:I

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/smengine/y;->Yx()V

    .line 5
    iget p0, p0, Lcom/smartisanos/smengine/y;->cF:I

    return p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/y;->mName:Ljava/lang/String;

    return-void
.end method

.method public sk()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/y;->WE:[F

    return-object p0
.end method

.method public tk()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/y;->TE:[F

    return-object p0
.end method

.method public uk()[F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public vk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/y;->_E:I

    if-lez v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/smengine/y;->SE:[F

    array-length p0, p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public wk()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/y;->SE:[F

    return-object p0
.end method

.method public xk()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/y;->YE:I

    return p0
.end method

.method public yk()[F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/y;->XE:[[F

    const/4 v0, 0x3

    aget-object p0, p0, v0

    return-object p0
.end method

.method public za(Z)V
    .locals 5

    invoke-direct {p0}, Lcom/smartisanos/smengine/y;->ensureBufferContext()V

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 1
    iput v0, p0, Lcom/smartisanos/smengine/y;->bF:I

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/y;->cF:I

    .line 3
    :cond_0
    iget v1, p0, Lcom/smartisanos/smengine/y;->bF:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v4, p0, Lcom/smartisanos/smengine/y;->aF:Z

    if-nez v4, :cond_1

    new-array v4, v3, [I

    aput v1, v4, v2

    .line 4
    invoke-static {v3, v4, v2}, Lcom/smartisanos/smengine/P;->glDeleteBuffers(I[II)V

    .line 5
    iput v0, p0, Lcom/smartisanos/smengine/y;->bF:I

    .line 6
    :cond_1
    iget v1, p0, Lcom/smartisanos/smengine/y;->cF:I

    if-eq v1, v0, :cond_2

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/smartisanos/smengine/y;->aF:Z

    if-nez p1, :cond_2

    new-array p1, v3, [I

    aput v1, p1, v2

    .line 7
    invoke-static {v3, p1, v2}, Lcom/smartisanos/smengine/P;->glDeleteBuffers(I[II)V

    .line 8
    iput v0, p0, Lcom/smartisanos/smengine/y;->cF:I

    :cond_2
    return-void
.end method

.method public zk()Ljava/nio/FloatBuffer;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/smartisanos/smengine/y;->fF:I

    if-eqz v1, :cond_1b

    .line 2
    iget-object v2, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget-object v0, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    return-object v0

    :cond_0
    const-string v2, "create vertex buffer error: shadow array null"

    const-string v4, "create vertex buffer error: mat index array null"

    const-string v5, "create vertex buffer error : float must be 8"

    const-string v6, "create vertex buffer error : float must be 5"

    const/16 v7, 0x8

    const/4 v8, 0x7

    const-string v9, "create vertex buffer error: tex array null"

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x3

    packed-switch v1, :pswitch_data_0

    .line 5
    new-instance v1, Lcom/smartisanos/smengine/Mesh$MeshException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupport vertex type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/smartisanos/smengine/y;->fF:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :pswitch_0
    invoke-static {v1}, Lcom/smartisanos/smengine/x;->Na(I)I

    move-result v1

    if-ne v1, v8, :cond_4

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/y;->vk()I

    move-result v4

    .line 8
    iget-object v5, v0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v6, v5, v3

    if-eqz v6, :cond_3

    .line 9
    aget-object v5, v5, v12

    if-eqz v5, :cond_2

    mul-int v2, v4, v1

    .line 10
    new-array v2, v2, [F

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    mul-int/lit8 v6, v5, 0x3

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v6, 0x2

    mul-int/lit8 v9, v5, 0x2

    add-int/lit8 v11, v9, 0x1

    mul-int v13, v5, v1

    .line 11
    iget-object v14, v0, Lcom/smartisanos/smengine/y;->SE:[F

    aget v6, v14, v6

    aput v6, v2, v13

    add-int/lit8 v6, v13, 0x1

    .line 12
    aget v7, v14, v7

    aput v7, v2, v6

    add-int/lit8 v6, v13, 0x2

    .line 13
    aget v7, v14, v8

    aput v7, v2, v6

    add-int/lit8 v6, v13, 0x3

    .line 14
    iget-object v7, v0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v8, v7, v3

    aget v8, v8, v9

    aput v8, v2, v6

    add-int/lit8 v6, v13, 0x4

    .line 15
    aget-object v8, v7, v3

    aget v8, v8, v11

    aput v8, v2, v6

    add-int/lit8 v6, v13, 0x5

    .line 16
    aget-object v8, v7, v12

    aget v8, v8, v9

    aput v8, v2, v6

    add-int/2addr v13, v10

    .line 17
    aget-object v6, v7, v12

    aget v6, v6, v11

    aput v6, v2, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 18
    :cond_1
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 19
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 20
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 21
    iput-object v1, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    .line 22
    iget-object v0, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    return-object v0

    .line 23
    :cond_2
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    invoke-direct {v0, v2}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_3
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    invoke-direct {v0, v9}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_4
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    invoke-direct {v0, v5}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :pswitch_1
    invoke-static {v1}, Lcom/smartisanos/smengine/x;->Na(I)I

    move-result v1

    if-ne v1, v7, :cond_9

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/y;->vk()I

    move-result v5

    .line 28
    iget-object v6, v0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v7, v6, v3

    if-eqz v7, :cond_8

    .line 29
    aget-object v6, v6, v12

    if-eqz v6, :cond_7

    .line 30
    iget-object v2, v0, Lcom/smartisanos/smengine/y;->WE:[F

    if-eqz v2, :cond_6

    mul-int v2, v5, v1

    .line 31
    new-array v2, v2, [F

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_5

    mul-int/lit8 v6, v4, 0x3

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v9, v6, 0x2

    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v11, v10, 0x1

    mul-int v13, v4, v1

    .line 32
    iget-object v14, v0, Lcom/smartisanos/smengine/y;->SE:[F

    aget v6, v14, v6

    aput v6, v2, v13

    add-int/lit8 v6, v13, 0x1

    .line 33
    aget v7, v14, v7

    aput v7, v2, v6

    add-int/lit8 v6, v13, 0x2

    .line 34
    aget v7, v14, v9

    aput v7, v2, v6

    add-int/lit8 v6, v13, 0x3

    .line 35
    iget-object v7, v0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v9, v7, v3

    aget v9, v9, v10

    aput v9, v2, v6

    add-int/lit8 v6, v13, 0x4

    .line 36
    aget-object v9, v7, v3

    aget v9, v9, v11

    aput v9, v2, v6

    add-int/lit8 v6, v13, 0x5

    .line 37
    aget-object v9, v7, v12

    aget v9, v9, v10

    aput v9, v2, v6

    add-int/lit8 v6, v13, 0x6

    .line 38
    aget-object v7, v7, v12

    aget v7, v7, v11

    aput v7, v2, v6

    add-int/2addr v13, v8

    .line 39
    iget-object v6, v0, Lcom/smartisanos/smengine/y;->WE:[F

    aget v6, v6, v4

    aput v6, v2, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 40
    :cond_5
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 41
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 42
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 43
    iput-object v1, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    .line 44
    iget-object v0, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    return-object v0

    .line 45
    :cond_6
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    invoke-direct {v0, v4}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_7
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    invoke-direct {v0, v2}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_8
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    invoke-direct {v0, v9}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_9
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    invoke-direct {v0, v5}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :pswitch_2
    invoke-static {v1}, Lcom/smartisanos/smengine/x;->Na(I)I

    move-result v1

    if-ne v1, v12, :cond_b

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/y;->vk()I

    move-result v2

    mul-int v4, v2, v1

    .line 51
    new-array v4, v4, [F

    move v5, v3

    :goto_2
    if-ge v5, v2, :cond_a

    mul-int/lit8 v6, v5, 0x3

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v6, 0x2

    mul-int v9, v5, v1

    .line 52
    iget-object v10, v0, Lcom/smartisanos/smengine/y;->SE:[F

    aget v6, v10, v6

    aput v6, v4, v9

    add-int/lit8 v6, v9, 0x1

    .line 53
    aget v7, v10, v7

    aput v7, v4, v6

    add-int/lit8 v9, v9, 0x2

    .line 54
    aget v6, v10, v8

    aput v6, v4, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 55
    :cond_a
    array-length v1, v4

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 56
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 58
    iput-object v1, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    .line 59
    iget-object v0, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    return-object v0

    .line 60
    :cond_b
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v1, "create vertex buffer error : float must be 3"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_3
    invoke-static {v1}, Lcom/smartisanos/smengine/x;->Na(I)I

    move-result v1

    if-ne v1, v10, :cond_f

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/y;->vk()I

    move-result v2

    .line 63
    iget-object v5, v0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v5, v5, v3

    if-eqz v5, :cond_e

    .line 64
    iget-object v5, v0, Lcom/smartisanos/smengine/y;->WE:[F

    if-eqz v5, :cond_d

    mul-int v4, v2, v1

    .line 65
    new-array v4, v4, [F

    move v5, v3

    :goto_3
    if-ge v5, v2, :cond_c

    mul-int/lit8 v6, v5, 0x3

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v6, 0x2

    mul-int/lit8 v9, v5, 0x2

    add-int/lit8 v10, v9, 0x1

    mul-int v12, v5, v1

    .line 66
    iget-object v13, v0, Lcom/smartisanos/smengine/y;->SE:[F

    aget v6, v13, v6

    aput v6, v4, v12

    add-int/lit8 v6, v12, 0x1

    .line 67
    aget v7, v13, v7

    aput v7, v4, v6

    add-int/lit8 v6, v12, 0x2

    .line 68
    aget v7, v13, v8

    aput v7, v4, v6

    add-int/lit8 v6, v12, 0x3

    .line 69
    iget-object v7, v0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v8, v7, v3

    aget v8, v8, v9

    aput v8, v4, v6

    add-int/lit8 v6, v12, 0x4

    .line 70
    aget-object v7, v7, v3

    aget v7, v7, v10

    aput v7, v4, v6

    add-int/2addr v12, v11

    .line 71
    iget-object v6, v0, Lcom/smartisanos/smengine/y;->WE:[F

    aget v6, v6, v5

    aput v6, v4, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 72
    :cond_c
    array-length v1, v4

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 73
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 74
    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    iput-object v1, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    .line 76
    iget-object v0, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    return-object v0

    .line 77
    :cond_d
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    invoke-direct {v0, v4}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_e
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    invoke-direct {v0, v9}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_f
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v1, "create vertex buffer error : float must be 6"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :pswitch_4
    invoke-static {v1}, Lcom/smartisanos/smengine/x;->Na(I)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_12

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/y;->vk()I

    move-result v2

    .line 82
    iget-object v4, v0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v4, v4, v3

    if-eqz v4, :cond_11

    mul-int v4, v2, v1

    .line 83
    new-array v4, v4, [F

    move v5, v3

    :goto_4
    if-ge v5, v2, :cond_10

    mul-int/lit8 v6, v5, 0x3

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v9, v6, 0x2

    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v11, v10, 0x1

    mul-int/lit8 v12, v5, 0x4

    add-int/lit8 v13, v12, 0x1

    add-int/lit8 v14, v12, 0x2

    add-int/lit8 v15, v12, 0x3

    mul-int v16, v5, v1

    .line 84
    iget-object v7, v0, Lcom/smartisanos/smengine/y;->SE:[F

    aget v6, v7, v6

    aput v6, v4, v16

    add-int/lit8 v6, v16, 0x1

    .line 85
    aget v8, v7, v8

    aput v8, v4, v6

    add-int/lit8 v6, v16, 0x2

    .line 86
    aget v7, v7, v9

    aput v7, v4, v6

    add-int/lit8 v6, v16, 0x3

    .line 87
    iget-object v7, v0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v8, v7, v3

    aget v8, v8, v10

    aput v8, v4, v6

    add-int/lit8 v6, v16, 0x4

    .line 88
    aget-object v7, v7, v3

    aget v7, v7, v11

    aput v7, v4, v6

    add-int/lit8 v6, v16, 0x5

    .line 89
    iget-object v7, v0, Lcom/smartisanos/smengine/y;->UE:[F

    aget v8, v7, v12

    aput v8, v4, v6

    add-int/lit8 v6, v16, 0x6

    .line 90
    aget v8, v7, v13

    aput v8, v4, v6

    add-int/lit8 v6, v16, 0x7

    .line 91
    aget v8, v7, v14

    aput v8, v4, v6

    const/16 v6, 0x8

    add-int/lit8 v16, v16, 0x8

    .line 92
    aget v6, v7, v15

    aput v6, v4, v16

    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x8

    goto :goto_4

    .line 93
    :cond_10
    array-length v1, v4

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 94
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    iput-object v1, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    .line 97
    iget-object v0, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    return-object v0

    .line 98
    :cond_11
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    invoke-direct {v0, v9}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_12
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v1, "create vertex buffer error : float must be 9"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :pswitch_5
    invoke-static {v1}, Lcom/smartisanos/smengine/x;->Na(I)I

    move-result v1

    if-ne v1, v8, :cond_14

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/y;->vk()I

    move-result v2

    mul-int v4, v2, v1

    .line 102
    new-array v4, v4, [F

    move v5, v3

    :goto_5
    if-ge v5, v2, :cond_13

    mul-int/lit8 v6, v5, 0x3

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v6, 0x2

    mul-int/lit8 v9, v5, 0x4

    add-int/lit8 v11, v9, 0x1

    add-int/lit8 v12, v9, 0x2

    add-int/lit8 v13, v9, 0x3

    mul-int v14, v5, v1

    .line 103
    iget-object v15, v0, Lcom/smartisanos/smengine/y;->SE:[F

    aget v6, v15, v6

    aput v6, v4, v14

    add-int/lit8 v6, v14, 0x1

    .line 104
    aget v7, v15, v7

    aput v7, v4, v6

    add-int/lit8 v6, v14, 0x2

    .line 105
    aget v7, v15, v8

    aput v7, v4, v6

    add-int/lit8 v6, v14, 0x3

    .line 106
    iget-object v7, v0, Lcom/smartisanos/smengine/y;->UE:[F

    aget v8, v7, v9

    aput v8, v4, v6

    add-int/lit8 v6, v14, 0x4

    .line 107
    aget v8, v7, v11

    aput v8, v4, v6

    add-int/lit8 v6, v14, 0x5

    .line 108
    aget v8, v7, v12

    aput v8, v4, v6

    add-int/2addr v14, v10

    .line 109
    aget v6, v7, v13

    aput v6, v4, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 110
    :cond_13
    array-length v1, v4

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 111
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 113
    iput-object v1, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    .line 114
    iget-object v0, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    return-object v0

    .line 115
    :cond_14
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v1, "create vertex buffer error : float must be 7"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :pswitch_6
    invoke-static {v1}, Lcom/smartisanos/smengine/x;->Na(I)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_17

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/y;->vk()I

    move-result v2

    .line 118
    iget-object v4, v0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v4, v4, v3

    if-eqz v4, :cond_16

    mul-int v4, v2, v1

    .line 119
    new-array v4, v4, [F

    move v5, v3

    :goto_6
    if-ge v5, v2, :cond_15

    mul-int/lit8 v6, v5, 0x3

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v9, v6, 0x2

    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v11, v10, 0x1

    mul-int v12, v5, v1

    .line 120
    iget-object v13, v0, Lcom/smartisanos/smengine/y;->SE:[F

    aget v14, v13, v6

    aput v14, v4, v12

    add-int/lit8 v14, v12, 0x1

    .line 121
    aget v15, v13, v7

    aput v15, v4, v14

    add-int/lit8 v14, v12, 0x2

    .line 122
    aget v13, v13, v9

    aput v13, v4, v14

    add-int/lit8 v13, v12, 0x3

    .line 123
    iget-object v14, v0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v15, v14, v3

    aget v10, v15, v10

    aput v10, v4, v13

    add-int/lit8 v10, v12, 0x4

    .line 124
    aget-object v13, v14, v3

    aget v11, v13, v11

    aput v11, v4, v10

    add-int/lit8 v10, v12, 0x5

    .line 125
    iget-object v11, v0, Lcom/smartisanos/smengine/y;->TE:[F

    aget v6, v11, v6

    aput v6, v4, v10

    add-int/lit8 v6, v12, 0x6

    .line 126
    aget v7, v11, v7

    aput v7, v4, v6

    add-int/2addr v12, v8

    .line 127
    aget v6, v11, v9

    aput v6, v4, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 128
    :cond_15
    array-length v1, v4

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 129
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 130
    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 131
    iput-object v1, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    .line 132
    iget-object v0, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    return-object v0

    .line 133
    :cond_16
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    invoke-direct {v0, v9}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_17
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    invoke-direct {v0, v6}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_7
    invoke-static {v1}, Lcom/smartisanos/smengine/x;->Na(I)I

    move-result v1

    if-ne v1, v11, :cond_1a

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/y;->vk()I

    move-result v2

    .line 137
    iget-object v4, v0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v4, v4, v3

    if-eqz v4, :cond_19

    mul-int v4, v2, v1

    .line 138
    new-array v4, v4, [F

    move v5, v3

    :goto_7
    if-ge v5, v2, :cond_18

    mul-int/lit8 v6, v5, 0x3

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v6, 0x2

    mul-int/lit8 v9, v5, 0x2

    add-int/lit8 v10, v9, 0x1

    mul-int v11, v5, v1

    .line 139
    iget-object v12, v0, Lcom/smartisanos/smengine/y;->SE:[F

    aget v6, v12, v6

    aput v6, v4, v11

    add-int/lit8 v6, v11, 0x1

    .line 140
    aget v7, v12, v7

    aput v7, v4, v6

    add-int/lit8 v6, v11, 0x2

    .line 141
    aget v7, v12, v8

    aput v7, v4, v6

    add-int/lit8 v6, v11, 0x3

    .line 142
    iget-object v7, v0, Lcom/smartisanos/smengine/y;->XE:[[F

    aget-object v8, v7, v3

    aget v8, v8, v9

    aput v8, v4, v6

    add-int/lit8 v11, v11, 0x4

    .line 143
    aget-object v6, v7, v3

    aget v6, v6, v10

    aput v6, v4, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 144
    :cond_18
    array-length v1, v4

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 145
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 146
    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    iput-object v1, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    .line 148
    iget-object v0, v0, Lcom/smartisanos/smengine/y;->dF:Ljava/nio/FloatBuffer;

    return-object v0

    .line 149
    :cond_19
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    invoke-direct {v0, v9}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1a
    new-instance v0, Lcom/smartisanos/smengine/Mesh$MeshException;

    invoke-direct {v0, v6}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1b
    new-instance v1, Lcom/smartisanos/smengine/Mesh$MeshException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid vertex type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/smartisanos/smengine/y;->fF:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

# Buffer names belong to the EGL generation that uploaded their CPU data.
.method private ensureBufferContext()V
    .locals 2

    invoke-static {}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->getEglContextGeneration()I
    move-result v0
    iget v1, p0, Lcom/smartisanos/smengine/y;->mBufferContextGeneration:I
    if-eq v0, v1, :current_context

    const/4 v1, -0x1
    iput v1, p0, Lcom/smartisanos/smengine/y;->bF:I
    iput v1, p0, Lcom/smartisanos/smengine/y;->cF:I
    iput v0, p0, Lcom/smartisanos/smengine/y;->mBufferContextGeneration:I

    :current_context
    return-void
.end method
