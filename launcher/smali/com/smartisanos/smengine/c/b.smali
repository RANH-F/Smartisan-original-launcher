.class public Lcom/smartisanos/smengine/c/b;
.super Ljava/lang/Object;
.source "DepthRenderTarget.java"


# instance fields
.field private mReady:Z

.field private mCreateFailed:Z

.field public UW:I

.field private VW:I

.field private WW:J

.field private mHeight:I

.field private mWidth:I

.field private uG:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/c/b;->UW:I

    .line 3
    iput v0, p0, Lcom/smartisanos/smengine/c/b;->uG:I

    .line 4
    iput v0, p0, Lcom/smartisanos/smengine/c/b;->VW:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/smartisanos/smengine/c/b;->WW:J

    .line 6
    iput p1, p0, Lcom/smartisanos/smengine/c/b;->mWidth:I

    .line 7
    iput p2, p0, Lcom/smartisanos/smengine/c/b;->mHeight:I

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/smengine/c/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/c/b;->VW:I

    return p0
.end method


# virtual methods
.method public Ac(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/smartisanos/smengine/c/b;->isReady()Z
    move-result v0
    if-nez v0, :depth_binding_ready
    invoke-static {p1}, Lcom/smartisanos/smengine/P;->glActiveTexture(I)V
    const/4 v0, 0x0
    const/16 p1, 0xde1
    invoke-static {p1, v0}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V
    return-void
    :depth_binding_ready

    .line 1
    invoke-static {p1}, Lcom/smartisanos/smengine/P;->glActiveTexture(I)V

    .line 2
    iget p0, p0, Lcom/smartisanos/smengine/c/b;->UW:I

    const/16 p1, 0xde1

    invoke-static {p1, p0}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    return-void
.end method

.method public Zt()V
    .locals 1

    const/4 p0, 0x0

    const v0, 0x8d40

    .line 1
    invoke-static {v0, p0}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    const/16 v0, 0xde1

    .line 2
    invoke-static {v0, p0}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    return-void
.end method

.method public bind()V
    .locals 1

    invoke-virtual {p0}, Lcom/smartisanos/smengine/c/b;->isReady()Z
    move-result v0
    if-nez v0, :depth_binding_ready
    return-void
    :depth_binding_ready

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/c/b;->uG:I

    const v0, 0x8d40

    invoke-static {v0, p0}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    return-void
.end method

.method public create()V
    .locals 14

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/c/b;->WW:J

    sget-wide v2, Lcom/smartisanos/smengine/c/i;->WX:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2
    iput v1, p0, Lcom/smartisanos/smengine/c/b;->UW:I

    .line 3
    iput v1, p0, Lcom/smartisanos/smengine/c/b;->uG:I

    .line 4
    iput v1, p0, Lcom/smartisanos/smengine/c/b;->VW:I

    .line 5
    iput-wide v2, p0, Lcom/smartisanos/smengine/c/b;->WW:J

    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c/b;->mReady:Z
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c/b;->mCreateFailed:Z

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/smengine/c/b;->mCreateFailed:Z
    if-eqz v0, :depth_creation_allowed
    return-void
    :depth_creation_allowed
    iget v0, p0, Lcom/smartisanos/smengine/c/b;->UW:I

    const v2, 0x8d40

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/smartisanos/smengine/c/b;->uG:I

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 7
    invoke-static {v0, v1, v3}, Lcom/smartisanos/smengine/P;->glGenTextures(I[II)V

    .line 8
    aget v1, v1, v3

    iput v1, p0, Lcom/smartisanos/smengine/c/b;->UW:I

    .line 9
    iget v1, p0, Lcom/smartisanos/smengine/c/b;->UW:I

    const/16 v4, 0xde1

    invoke-static {v4, v1}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1902

    .line 10
    iget v8, p0, Lcom/smartisanos/smengine/c/b;->mWidth:I

    iget v9, p0, Lcom/smartisanos/smengine/c/b;->mHeight:I

    const/4 v10, 0x0

    const/16 v11, 0x1902

    const/16 v12, 0x1403

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lcom/smartisanos/smengine/P;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v1, 0x2801

    const v5, 0x46180400    # 9729.0f

    .line 11
    invoke-static {v4, v1, v5}, Lcom/smartisanos/smengine/P;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    .line 12
    invoke-static {v4, v1, v5}, Lcom/smartisanos/smengine/P;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const/16 v5, 0x2901

    .line 13
    invoke-static {v4, v1, v5}, Lcom/smartisanos/smengine/P;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 14
    invoke-static {v4, v1, v5}, Lcom/smartisanos/smengine/P;->glTexParameteri(III)V

    new-array v1, v0, [I

    .line 15
    invoke-static {v0, v1, v3}, Lcom/smartisanos/smengine/P;->glGenFramebuffers(I[II)V

    .line 16
    aget v0, v1, v3

    iput v0, p0, Lcom/smartisanos/smengine/c/b;->uG:I

    .line 17
    iget v0, p0, Lcom/smartisanos/smengine/c/b;->uG:I

    invoke-static {v2, v0}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    const v0, 0x8d00

    .line 18
    iget v1, p0, Lcom/smartisanos/smengine/c/b;->UW:I

    invoke-static {v2, v0, v4, v1, v3}, Lcom/smartisanos/smengine/P;->glFramebufferTexture2D(IIIII)V

    iget v0, p0, Lcom/smartisanos/smengine/c/b;->UW:I
    if-lez v0, :depth_creation_failed
    iget v0, p0, Lcom/smartisanos/smengine/c/b;->uG:I
    if-lez v0, :depth_creation_failed
    invoke-static {v2}, Lcom/smartisanos/smengine/P;->glCheckFramebufferStatus(I)I
    move-result v0
    const v1, 0x8cd5
    if-eq v0, v1, :depth_creation_complete
    :depth_creation_failed
    invoke-direct {p0}, Lcom/smartisanos/smengine/c/b;->failCreation()V
    return-void
    :depth_creation_complete
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c/b;->mReady:Z

    .line 19
    invoke-static {v2, v3}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    .line 20
    :cond_2
    iget p0, p0, Lcom/smartisanos/smengine/c/b;->uG:I

    invoke-static {v2, p0}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    const/4 p0, 0x0

    .line 21
    invoke-static {p0, p0, p0, p0}, Lcom/smartisanos/smengine/P;->glClearColor(FFFF)V

    .line 22
    invoke-static {v3}, Lcom/smartisanos/smengine/P;->glClearStencil(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 23
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glClearDepthf(F)V

    const/16 p0, 0x4500

    .line 24
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glClear(I)V

    const/16 p0, 0x302

    const/16 v0, 0x303

    .line 25
    invoke-static {p0, v0}, Lcom/smartisanos/smengine/P;->glBlendFunc(II)V

    .line 26
    invoke-static {v2, v3}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    return-void
.end method

.method protected finalize()V
    .locals 9

    .line 1
    iget v5, p0, Lcom/smartisanos/smengine/c/b;->UW:I

    .line 2
    iget v6, p0, Lcom/smartisanos/smengine/c/b;->uG:I

    .line 3
    iget v7, p0, Lcom/smartisanos/smengine/c/b;->VW:I

    .line 4
    iget-wide v3, p0, Lcom/smartisanos/smengine/c/b;->WW:J

    .line 5
    new-instance v8, Lcom/smartisanos/smengine/c/a;

    const/16 v2, 0x64

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/smengine/c/a;-><init>(Lcom/smartisanos/smengine/c/b;IJIII)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {v8, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 7
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public isReady()Z
    .locals 4
    iget-wide v0, p0, Lcom/smartisanos/smengine/c/b;->WW:J
    sget-wide v2, Lcom/smartisanos/smengine/c/i;->WX:J
    cmp-long v0, v0, v2
    if-nez v0, :depth_not_ready
    iget-boolean v0, p0, Lcom/smartisanos/smengine/c/b;->mReady:Z
    if-eqz v0, :depth_not_ready
    iget v0, p0, Lcom/smartisanos/smengine/c/b;->UW:I
    if-lez v0, :depth_not_ready
    iget v0, p0, Lcom/smartisanos/smengine/c/b;->uG:I
    if-lez v0, :depth_not_ready
    const/4 v0, 0x1
    return v0
    :depth_not_ready
    const/4 v0, 0x0
    return v0
.end method

# A failed immutable target is retried only after the existing context/theme generation changes.
.method private failCreation()V
    .locals 4
    const/4 v1, 0x0
    const/4 v2, 0x1
    iget v0, p0, Lcom/smartisanos/smengine/c/b;->UW:I
    if-lez v0, :depth_failed_fbo
    new-array v3, v2, [I
    aput v0, v3, v1
    invoke-static {v2, v3, v1}, Lcom/smartisanos/smengine/P;->glDeleteTextures(I[II)V
    :depth_failed_fbo
    iget v0, p0, Lcom/smartisanos/smengine/c/b;->uG:I
    if-lez v0, :depth_failed_reset
    new-array v3, v2, [I
    aput v0, v3, v1
    invoke-static {v2, v3, v1}, Lcom/smartisanos/smengine/P;->glDeleteFramebuffers(I[II)V
    :depth_failed_reset
    const/4 v0, -0x1
    iput v0, p0, Lcom/smartisanos/smengine/c/b;->UW:I
    iput v0, p0, Lcom/smartisanos/smengine/c/b;->uG:I
    iput-boolean v1, p0, Lcom/smartisanos/smengine/c/b;->mReady:Z
    iput-boolean v2, p0, Lcom/smartisanos/smengine/c/b;->mCreateFailed:Z
    const v0, 0x8d40
    invoke-static {v0, v1}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V
    const-string v0, "SmartisanDepthTarget"
    const-string v1, "Depth framebuffer incomplete; retry after context/theme rebuild"
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method
