.class public Lcom/smartisanos/smengine/N;
.super Ljava/lang/Object;
.source "RenderTarget.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private mTargetContextGeneration:I

.field private AG:Z

.field private BG:Z

.field private CG:Z

.field private DG:Z

.field private OF:Lcom/smartisanos/smengine/a/k;

.field private mHeight:I

.field private mName:Ljava/lang/String;

.field private mSurface:Landroid/view/Surface;

.field private mWidth:I

.field private sG:I

.field private tG:I

.field private uG:I

.field private vG:I

.field private wG:I

.field private xG:Z

.field private yG:Z

.field private zG:Lcom/smartisanos/smengine/Ca;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/N;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/N;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/N;->sG:I

    .line 3
    iput v0, p0, Lcom/smartisanos/smengine/N;->tG:I

    .line 4
    iput v0, p0, Lcom/smartisanos/smengine/N;->uG:I

    .line 5
    iput v0, p0, Lcom/smartisanos/smengine/N;->vG:I

    .line 6
    iput v0, p0, Lcom/smartisanos/smengine/N;->wG:I

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/smengine/N;->xG:Z

    .line 8
    iput-boolean v0, p0, Lcom/smartisanos/smengine/N;->yG:Z

    .line 9
    new-instance v1, Lcom/smartisanos/smengine/Ca;

    invoke-direct {v1}, Lcom/smartisanos/smengine/Ca;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/N;->zG:Lcom/smartisanos/smengine/Ca;

    .line 10
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/N;->OF:Lcom/smartisanos/smengine/a/k;

    .line 11
    iput-boolean v0, p0, Lcom/smartisanos/smengine/N;->DG:Z

    .line 12
    iput p2, p0, Lcom/smartisanos/smengine/N;->mWidth:I

    .line 13
    iput p3, p0, Lcom/smartisanos/smengine/N;->mHeight:I

    .line 14
    iput-object p1, p0, Lcom/smartisanos/smengine/N;->mName:Ljava/lang/String;

    .line 15
    iput-boolean v0, p0, Lcom/smartisanos/smengine/N;->BG:Z

    .line 16
    iput-boolean v0, p0, Lcom/smartisanos/smengine/N;->CG:Z

    .line 17
    iput-boolean v0, p0, Lcom/smartisanos/smengine/N;->DG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZZ)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/smartisanos/smengine/N;->sG:I

    .line 20
    iput v0, p0, Lcom/smartisanos/smengine/N;->tG:I

    .line 21
    iput v0, p0, Lcom/smartisanos/smengine/N;->uG:I

    .line 22
    iput v0, p0, Lcom/smartisanos/smengine/N;->vG:I

    .line 23
    iput v0, p0, Lcom/smartisanos/smengine/N;->wG:I

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/smartisanos/smengine/N;->xG:Z

    .line 25
    iput-boolean v0, p0, Lcom/smartisanos/smengine/N;->yG:Z

    .line 26
    new-instance v1, Lcom/smartisanos/smengine/Ca;

    invoke-direct {v1}, Lcom/smartisanos/smengine/Ca;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/N;->zG:Lcom/smartisanos/smengine/Ca;

    .line 27
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/k;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/smengine/N;->OF:Lcom/smartisanos/smengine/a/k;

    .line 28
    iput-boolean v0, p0, Lcom/smartisanos/smengine/N;->DG:Z

    .line 29
    iput p2, p0, Lcom/smartisanos/smengine/N;->mWidth:I

    .line 30
    iput p3, p0, Lcom/smartisanos/smengine/N;->mHeight:I

    .line 31
    iput-object p1, p0, Lcom/smartisanos/smengine/N;->mName:Ljava/lang/String;

    .line 32
    iput-boolean p4, p0, Lcom/smartisanos/smengine/N;->BG:Z

    .line 33
    iput-boolean p5, p0, Lcom/smartisanos/smengine/N;->CG:Z

    .line 34
    iput-boolean p6, p0, Lcom/smartisanos/smengine/N;->DG:Z

    return-void
.end method


# virtual methods
.method public Ja(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/N;->Uk()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/smartisanos/smengine/s;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public Ka(Z)V
    .locals 5

    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/N;->ensureTargetContext()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 1
    iput v1, p0, Lcom/smartisanos/smengine/N;->uG:I

    .line 2
    iput v1, p0, Lcom/smartisanos/smengine/N;->sG:I

    .line 3
    iput v1, p0, Lcom/smartisanos/smengine/N;->wG:I

    .line 4
    iput v1, p0, Lcom/smartisanos/smengine/N;->vG:I

    .line 5
    iput v1, p0, Lcom/smartisanos/smengine/N;->tG:I

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/smengine/N;->xG:Z

    return-void

    .line 7
    :cond_0
    iget p1, p0, Lcom/smartisanos/smengine/N;->uG:I

    if-ne p1, v1, :cond_1

    .line 8
    iput v1, p0, Lcom/smartisanos/smengine/N;->sG:I

    .line 9
    iput-boolean v0, p0, Lcom/smartisanos/smengine/N;->xG:Z

    .line 10
    iput v1, p0, Lcom/smartisanos/smengine/N;->vG:I

    .line 11
    iput v1, p0, Lcom/smartisanos/smengine/N;->wG:I

    .line 12
    iput v1, p0, Lcom/smartisanos/smengine/N;->tG:I

    return-void

    .line 13
    :cond_1
    iget p1, p0, Lcom/smartisanos/smengine/N;->vG:I

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    new-array v3, v2, [I

    aput p1, v3, v0

    .line 14
    invoke-static {v2, v3, v0}, Lcom/smartisanos/smengine/P;->glDeleteRenderbuffers(I[II)V

    .line 15
    iput v1, p0, Lcom/smartisanos/smengine/N;->vG:I

    .line 16
    :cond_2
    iget p1, p0, Lcom/smartisanos/smengine/N;->wG:I

    if-eq p1, v1, :cond_3

    new-array v3, v2, [I

    aput p1, v3, v0

    .line 17
    invoke-static {v2, v3, v0}, Lcom/smartisanos/smengine/P;->glDeleteRenderbuffers(I[II)V

    .line 18
    iput v1, p0, Lcom/smartisanos/smengine/N;->wG:I

    .line 19
    :cond_3
    iget p1, p0, Lcom/smartisanos/smengine/N;->tG:I

    const-string v3, "glDeleteTexture attached to FrameBuffer"

    if-eq p1, v1, :cond_4

    new-array v4, v2, [I

    aput p1, v4, v0

    .line 20
    invoke-static {v2, v4, v0}, Lcom/smartisanos/smengine/P;->glDeleteTextures(I[II)V

    .line 21
    invoke-static {v3}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 22
    :cond_4
    iput v1, p0, Lcom/smartisanos/smengine/N;->tG:I

    new-array p1, v2, [I

    .line 23
    iget v4, p0, Lcom/smartisanos/smengine/N;->uG:I

    aput v4, p1, v0

    .line 24
    invoke-static {v2, p1, v0}, Lcom/smartisanos/smengine/P;->glDeleteFramebuffers(I[II)V

    const-string p1, "glDeleteFramebuffer"

    .line 25
    invoke-static {p1}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 26
    iput v1, p0, Lcom/smartisanos/smengine/N;->uG:I

    .line 27
    iput-boolean v0, p0, Lcom/smartisanos/smengine/N;->xG:Z

    .line 28
    iget-object p1, p0, Lcom/smartisanos/smengine/N;->mSurface:Landroid/view/Surface;

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/smartisanos/smengine/N;->mSurface:Landroid/view/Surface;

    .line 30
    :cond_5
    iget p1, p0, Lcom/smartisanos/smengine/N;->sG:I

    if-eq p1, v1, :cond_6

    new-array v4, v2, [I

    aput p1, v4, v0

    .line 31
    invoke-static {v2, v4, v0}, Lcom/smartisanos/smengine/P;->glDeleteTextures(I[II)V

    .line 32
    invoke-static {v3}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 33
    :cond_6
    iput v1, p0, Lcom/smartisanos/smengine/N;->sG:I

    return-void
.end method

.method public La(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/N;->AG:Z

    return-void
.end method

.method public Ma(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/N;->yG:Z

    return-void
.end method

.method public Qk()V
    .locals 4

    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/N;->ensureTargetContext()V

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/N;->xG:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/N;->uG:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/N;->OF:Lcom/smartisanos/smengine/a/k;

    iget v0, p0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v2, p0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v3, p0, Lcom/smartisanos/smengine/a/k;->z:F

    iget p0, p0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-static {v0, v2, v3, p0}, Lcom/smartisanos/smengine/P;->glClearColor(FFFF)V

    const/16 p0, 0x4000

    .line 4
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glClear(I)V

    const/4 p0, 0x0

    .line 5
    invoke-static {v1, p0}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    return-void
.end method

.method public Rk()I
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/N;->ensureTargetContext()V

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/N;->sG:I

    return p0
.end method

.method public Sk()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/N;->yG:Z

    return p0
.end method

.method public Tk()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/N;->Uk()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "readPixel.png"

    .line 2
    invoke-static {v0, p0}, Lcom/smartisanos/smengine/s;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public Uk()Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/N;->ensureTargetContext()V

    .line 1
    iget v0, p0, Lcom/smartisanos/smengine/N;->uG:I

    iget v1, p0, Lcom/smartisanos/smengine/N;->mWidth:I

    iget p0, p0, Lcom/smartisanos/smengine/N;->mHeight:I

    invoke-static {v0, v1, p0}, Lcom/smartisanos/launcher/view/vc;->b(III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public bind()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/N;->ensureTargetContext()V

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/N;->xG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x8d40

    .line 2
    iget p0, p0, Lcom/smartisanos/smengine/N;->uG:I

    invoke-static {v0, p0}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    return-void
.end method

.method public create()V
    .locals 19

    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/N;->ensureTargetContext()V

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->xG:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/smartisanos/smengine/N;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create render target name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/smartisanos/smengine/N;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " w = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/smartisanos/smengine/N;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " h = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/smartisanos/smengine/N;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    new-array v1, v2, [I

    const/4 v3, 0x0

    .line 3
    invoke-static {v2, v1, v3}, Lcom/smartisanos/smengine/P;->glGenTextures(I[II)V

    const-string v4, "texImage"

    .line 4
    invoke-static {v4}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 5
    aget v1, v1, v3

    iput v1, v0, Lcom/smartisanos/smengine/N;->sG:I

    .line 6
    iget-object v1, v0, Lcom/smartisanos/smengine/N;->mSurface:Landroid/view/Surface;

    const/16 v5, 0xde1

    if-nez v1, :cond_1

    .line 7
    iget v1, v0, Lcom/smartisanos/smengine/N;->sG:I

    invoke-static {v5, v1}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    const/16 v6, 0xde1

    const/4 v7, 0x0

    const/16 v8, 0x1908

    .line 8
    iget v9, v0, Lcom/smartisanos/smengine/N;->mWidth:I

    iget v10, v0, Lcom/smartisanos/smengine/N;->mHeight:I

    const/4 v11, 0x0

    const/16 v12, 0x1908

    const/16 v13, 0x1401

    const/4 v14, 0x0

    invoke-static/range {v6 .. v14}, Lcom/smartisanos/smengine/P;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 9
    invoke-static {v4}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget v4, v0, Lcom/smartisanos/smengine/N;->sG:I

    iget v6, v0, Lcom/smartisanos/smengine/N;->mWidth:I

    iget v7, v0, Lcom/smartisanos/smengine/N;->mHeight:I

    invoke-static {v4, v1, v6, v7}, Lsmartisanos/opengl/OpenGLHelper;->nativeImageTargetTex2D(ILandroid/view/Surface;II)V

    const-string v1, "native bind surface as texture target"

    .line 11
    invoke-static {v1}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 12
    :goto_0
    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->yG:Z

    if-eqz v1, :cond_2

    .line 13
    invoke-static {v5}, Lcom/smartisanos/smengine/P;->glGenerateMipmap(I)V

    const-string v1, "miapmap"

    .line 14
    invoke-static {v1}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 15
    iget-object v1, v0, Lcom/smartisanos/smengine/N;->zG:Lcom/smartisanos/smengine/Ca;

    const/4 v4, 0x3

    iput v4, v1, Lcom/smartisanos/smengine/Ca;->mT:I

    .line 16
    iput v2, v1, Lcom/smartisanos/smengine/Ca;->nT:I

    .line 17
    iput v2, v1, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    .line 18
    iput v2, v1, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    goto :goto_1

    .line 19
    :cond_2
    iget-object v1, v0, Lcom/smartisanos/smengine/N;->zG:Lcom/smartisanos/smengine/Ca;

    iput v2, v1, Lcom/smartisanos/smengine/Ca;->mT:I

    .line 20
    iput v2, v1, Lcom/smartisanos/smengine/Ca;->nT:I

    .line 21
    iput v3, v1, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    .line 22
    iput v3, v1, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    .line 23
    :goto_1
    iget-object v1, v0, Lcom/smartisanos/smengine/N;->zG:Lcom/smartisanos/smengine/Ca;

    invoke-static {v1}, Lcom/smartisanos/smengine/Da;->a(Lcom/smartisanos/smengine/Ca;)V

    .line 24
    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->DG:Z

    const-string v4, "not support only stencil texture"

    const v6, 0x8d41

    if-eqz v1, :cond_5

    .line 25
    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->BG:Z

    const/16 v7, 0x2801

    const v8, 0x812f

    const/16 v9, 0x2600

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->CG:Z

    if-eqz v1, :cond_3

    new-array v1, v2, [I

    .line 26
    invoke-static {v2, v1, v3}, Lcom/smartisanos/smengine/P;->glGenTextures(I[II)V

    .line 27
    aget v1, v1, v3

    iput v1, v0, Lcom/smartisanos/smengine/N;->tG:I

    .line 28
    iget v1, v0, Lcom/smartisanos/smengine/N;->tG:I

    invoke-static {v5, v1}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    const/16 v10, 0xde1

    const/4 v11, 0x0

    const v12, 0x88f0

    .line 29
    iget v13, v0, Lcom/smartisanos/smengine/N;->mWidth:I

    iget v14, v0, Lcom/smartisanos/smengine/N;->mHeight:I

    const/4 v15, 0x0

    const v16, 0x84f9

    const v17, 0x84fa

    const/16 v18, 0x0

    invoke-static/range {v10 .. v18}, Lcom/smartisanos/smengine/P;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 30
    invoke-static {v5, v7, v9}, Lcom/smartisanos/smengine/P;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 31
    invoke-static {v5, v1, v9}, Lcom/smartisanos/smengine/P;->glTexParameteri(III)V

    const/16 v1, 0x2802

    .line 32
    invoke-static {v5, v1, v8}, Lcom/smartisanos/smengine/P;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 33
    invoke-static {v5, v1, v8}, Lcom/smartisanos/smengine/P;->glTexParameteri(III)V

    goto/16 :goto_2

    .line 34
    :cond_3
    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->BG:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->CG:Z

    if-nez v1, :cond_4

    new-array v1, v2, [I

    .line 35
    invoke-static {v2, v1, v3}, Lcom/smartisanos/smengine/P;->glGenTextures(I[II)V

    .line 36
    aget v1, v1, v3

    iput v1, v0, Lcom/smartisanos/smengine/N;->tG:I

    .line 37
    iget v1, v0, Lcom/smartisanos/smengine/N;->tG:I

    invoke-static {v5, v1}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    const/16 v10, 0xde1

    const/4 v11, 0x0

    const/16 v12, 0x1902

    .line 38
    iget v13, v0, Lcom/smartisanos/smengine/N;->mWidth:I

    iget v14, v0, Lcom/smartisanos/smengine/N;->mHeight:I

    const/4 v15, 0x0

    const/16 v16, 0x1902

    const/16 v17, 0x1403

    const/16 v18, 0x0

    invoke-static/range {v10 .. v18}, Lcom/smartisanos/smengine/P;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 39
    invoke-static {v5, v7, v9}, Lcom/smartisanos/smengine/P;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 40
    invoke-static {v5, v1, v9}, Lcom/smartisanos/smengine/P;->glTexParameteri(III)V

    const/16 v1, 0x2802

    .line 41
    invoke-static {v5, v1, v8}, Lcom/smartisanos/smengine/P;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 42
    invoke-static {v5, v1, v8}, Lcom/smartisanos/smengine/P;->glTexParameteri(III)V

    goto :goto_2

    .line 43
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_5
    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->BG:Z

    const-string v7, "glRenderbufferStorage"

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->CG:Z

    if-eqz v1, :cond_6

    new-array v1, v2, [I

    .line 45
    invoke-static {v2, v1, v3}, Lcom/smartisanos/smengine/P;->glGenRenderbuffers(I[II)V

    .line 46
    aget v1, v1, v3

    iput v1, v0, Lcom/smartisanos/smengine/N;->vG:I

    .line 47
    iget v1, v0, Lcom/smartisanos/smengine/N;->vG:I

    invoke-static {v6, v1}, Lcom/smartisanos/smengine/P;->glBindRenderbuffer(II)V

    const v1, 0x88f0

    .line 48
    iget v8, v0, Lcom/smartisanos/smengine/N;->mWidth:I

    iget v9, v0, Lcom/smartisanos/smengine/N;->mHeight:I

    invoke-static {v6, v1, v8, v9}, Lcom/smartisanos/smengine/P;->glRenderbufferStorage(IIII)V

    .line 49
    invoke-static {v7}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    goto :goto_2

    .line 50
    :cond_6
    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->BG:Z

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->CG:Z

    if-nez v1, :cond_7

    new-array v1, v2, [I

    .line 51
    invoke-static {v2, v1, v3}, Lcom/smartisanos/smengine/P;->glGenRenderbuffers(I[II)V

    .line 52
    aget v1, v1, v3

    iput v1, v0, Lcom/smartisanos/smengine/N;->vG:I

    .line 53
    iget v1, v0, Lcom/smartisanos/smengine/N;->vG:I

    invoke-static {v6, v1}, Lcom/smartisanos/smengine/P;->glBindRenderbuffer(II)V

    const v1, 0x81a5

    .line 54
    iget v7, v0, Lcom/smartisanos/smengine/N;->mWidth:I

    iget v8, v0, Lcom/smartisanos/smengine/N;->mHeight:I

    invoke-static {v6, v1, v7, v8}, Lcom/smartisanos/smengine/P;->glRenderbufferStorage(IIII)V

    goto :goto_2

    .line 55
    :cond_7
    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->BG:Z

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->CG:Z

    if-eqz v1, :cond_8

    new-array v1, v2, [I

    .line 56
    invoke-static {v2, v1, v3}, Lcom/smartisanos/smengine/P;->glGenRenderbuffers(I[II)V

    .line 57
    aget v1, v1, v3

    iput v1, v0, Lcom/smartisanos/smengine/N;->wG:I

    .line 58
    iget v1, v0, Lcom/smartisanos/smengine/N;->wG:I

    invoke-static {v6, v1}, Lcom/smartisanos/smengine/P;->glBindRenderbuffer(II)V

    const v1, 0x8d48

    .line 59
    iget v8, v0, Lcom/smartisanos/smengine/N;->mWidth:I

    iget v9, v0, Lcom/smartisanos/smengine/N;->mHeight:I

    invoke-static {v6, v1, v8, v9}, Lcom/smartisanos/smengine/P;->glRenderbufferStorage(IIII)V

    .line 60
    invoke-static {v7}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    :cond_8
    :goto_2
    new-array v1, v2, [I

    .line 61
    invoke-static {v2, v1, v3}, Lcom/smartisanos/smengine/P;->glGenFramebuffers(I[II)V

    .line 62
    aget v1, v1, v3

    iput v1, v0, Lcom/smartisanos/smengine/N;->uG:I

    .line 63
    iget v1, v0, Lcom/smartisanos/smengine/N;->uG:I

    const v7, 0x8d40

    invoke-static {v7, v1}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    const v1, 0x8ce0

    .line 64
    iget v8, v0, Lcom/smartisanos/smengine/N;->sG:I

    invoke-static {v7, v1, v5, v8, v3}, Lcom/smartisanos/smengine/P;->glFramebufferTexture2D(IIIII)V

    const-string v1, "glFramebufferTexture2D"

    .line 65
    invoke-static {v1}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 66
    iget-boolean v8, v0, Lcom/smartisanos/smengine/N;->DG:Z

    const v9, 0x8d20

    const v10, 0x8d00

    if-eqz v8, :cond_c

    .line 67
    iget-boolean v6, v0, Lcom/smartisanos/smengine/N;->BG:Z

    if-eqz v6, :cond_9

    iget-boolean v6, v0, Lcom/smartisanos/smengine/N;->CG:Z

    if-eqz v6, :cond_9

    .line 68
    iget v4, v0, Lcom/smartisanos/smengine/N;->tG:I

    invoke-static {v7, v10, v5, v4, v3}, Lcom/smartisanos/smengine/P;->glFramebufferTexture2D(IIIII)V

    .line 69
    invoke-static {v1}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 70
    iget v4, v0, Lcom/smartisanos/smengine/N;->tG:I

    invoke-static {v7, v9, v5, v4, v3}, Lcom/smartisanos/smengine/P;->glFramebufferTexture2D(IIIII)V

    .line 71
    invoke-static {v1}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    goto :goto_3

    .line 72
    :cond_9
    iget-boolean v6, v0, Lcom/smartisanos/smengine/N;->BG:Z

    if-eqz v6, :cond_a

    iget-boolean v6, v0, Lcom/smartisanos/smengine/N;->CG:Z

    if-nez v6, :cond_a

    .line 73
    iget v4, v0, Lcom/smartisanos/smengine/N;->tG:I

    invoke-static {v7, v10, v5, v4, v3}, Lcom/smartisanos/smengine/P;->glFramebufferTexture2D(IIIII)V

    .line 74
    invoke-static {v1}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    goto :goto_3

    .line 75
    :cond_a
    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->BG:Z

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->CG:Z

    if-nez v1, :cond_b

    goto :goto_3

    .line 76
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_c
    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->BG:Z

    const-string v4, "glFramebufferRenderbuffer"

    if-eqz v1, :cond_d

    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->CG:Z

    if-eqz v1, :cond_d

    .line 78
    iget v1, v0, Lcom/smartisanos/smengine/N;->vG:I

    invoke-static {v7, v10, v6, v1}, Lcom/smartisanos/smengine/P;->glFramebufferRenderbuffer(IIII)V

    .line 79
    invoke-static {v4}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 80
    iget v1, v0, Lcom/smartisanos/smengine/N;->vG:I

    invoke-static {v7, v9, v6, v1}, Lcom/smartisanos/smengine/P;->glFramebufferRenderbuffer(IIII)V

    .line 81
    invoke-static {v4}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    goto :goto_3

    .line 82
    :cond_d
    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->BG:Z

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->CG:Z

    if-nez v1, :cond_e

    .line 83
    iget v1, v0, Lcom/smartisanos/smengine/N;->vG:I

    invoke-static {v7, v10, v6, v1}, Lcom/smartisanos/smengine/P;->glFramebufferRenderbuffer(IIII)V

    .line 84
    invoke-static {v4}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    goto :goto_3

    .line 85
    :cond_e
    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->BG:Z

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->CG:Z

    if-eqz v1, :cond_f

    .line 86
    iget v1, v0, Lcom/smartisanos/smengine/N;->wG:I

    invoke-static {v7, v9, v6, v1}, Lcom/smartisanos/smengine/P;->glFramebufferRenderbuffer(IIII)V

    .line 87
    invoke-static {v4}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 88
    :cond_f
    :goto_3
    invoke-static {v7}, Lcom/smartisanos/smengine/P;->glCheckFramebufferStatus(I)I

    move-result v1

    const v4, 0x8cd5

    if-ne v1, v4, :cond_11

    .line 89
    iput-boolean v2, v0, Lcom/smartisanos/smengine/N;->xG:Z

    .line 90
    iget-boolean v1, v0, Lcom/smartisanos/smengine/N;->xG:Z

    if-eqz v1, :cond_10

    .line 91
    iget-object v0, v0, Lcom/smartisanos/smengine/N;->OF:Lcom/smartisanos/smengine/a/k;

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-static {v1, v2, v4, v0}, Lcom/smartisanos/smengine/P;->glClearColor(FFFF)V

    .line 92
    invoke-static {v3}, Lcom/smartisanos/smengine/P;->glClearStencil(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 93
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glClearDepthf(F)V

    const/16 v0, 0x4500

    .line 94
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glClear(I)V

    .line 95
    :cond_10
    invoke-static {v7, v3}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    return-void

    .line 96
    :cond_11
    sget-object v0, Lcom/smartisanos/smengine/N;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "## status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LauncherSmartisanNew"

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8cdd

    if-ne v1, v0, :cond_12

    .line 97
    sget-object v0, Lcom/smartisanos/smengine/N;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "LauncherSmartisanNew"

    const-string v2, "### UNSUPPORT ##"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_12
    # Preserve the external Surface for a later retry; delete only owned GL names.
    move-object/from16 v0, p0
    iget-object v2, v0, Lcom/smartisanos/smengine/N;->mSurface:Landroid/view/Surface;
    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/N;->Ka(Z)V
    iput-object v2, v0, Lcom/smartisanos/smengine/N;->mSurface:Landroid/view/Surface;
    return-void
.end method

.method public e(FFFF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/N;->OF:Lcom/smartisanos/smengine/a/k;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    return-void
.end method

.method public genMipmap()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/N;->ensureTargetContext()V

    iget-boolean v0, p0, Lcom/smartisanos/smengine/N;->xG:Z
    if-nez v0, :target_mipmap_ready
    return-void
    :target_mipmap_ready

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/N;->AG:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/smengine/N;->yG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/smengine/N;->AG:Z

    .line 3
    iget p0, p0, Lcom/smartisanos/smengine/N;->sG:I

    const/16 v0, 0xde1

    invoke-static {v0, p0}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    .line 4
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glGenerateMipmap(I)V

    const-string p0, "miapmap"

    .line 5
    invoke-static {p0}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/N;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getViewPort()Lcom/smartisanos/smengine/Ga;
    .locals 3

    .line 1
    new-instance v0, Lcom/smartisanos/smengine/Ga;

    iget v1, p0, Lcom/smartisanos/smengine/N;->mWidth:I

    iget p0, p0, Lcom/smartisanos/smengine/N;->mHeight:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Lcom/smartisanos/smengine/Ga;-><init>(IIII)V

    return-object v0
.end method

.method public p(II)Lcom/smartisanos/smengine/M;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public q(II)Lcom/smartisanos/smengine/Ga;
    .locals 1

    .line 1
    new-instance p1, Lcom/smartisanos/smengine/Ga;

    iget p2, p0, Lcom/smartisanos/smengine/N;->mWidth:I

    iget p0, p0, Lcom/smartisanos/smengine/N;->mHeight:I

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p0}, Lcom/smartisanos/smengine/Ga;-><init>(IIII)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/smengine/N;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/smengine/N;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/smengine/N;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mTexID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/smengine/N;->sG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mFrameBufferID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/smengine/N;->uG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mCreateOK = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smartisanos/smengine/N;->xG:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mUseMipmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smartisanos/smengine/N;->yG:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mTextureState = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/smengine/N;->zG:Lcom/smartisanos/smengine/Ca;

    iget v1, v1, Lcom/smartisanos/smengine/Ca;->nT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/smengine/N;->zG:Lcom/smartisanos/smengine/Ca;

    iget v2, v2, Lcom/smartisanos/smengine/Ca;->mT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/smengine/N;->zG:Lcom/smartisanos/smengine/Ca;

    iget v2, v2, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/smengine/N;->zG:Lcom/smartisanos/smengine/Ca;

    iget v1, v1, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] , mClearColor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/smengine/N;->OF:Lcom/smartisanos/smengine/a/k;

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a/k;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

# Context loss invalidates GL names, not the target description or external Surface.
.method private ensureTargetContext()V
    .locals 2

    invoke-static {}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->getEglContextGeneration()I
    move-result v0
    iget v1, p0, Lcom/smartisanos/smengine/N;->mTargetContextGeneration:I
    if-eq v0, v1, :target_context_current

    # Stamp first because the existing non-deleting reset also checks this guard.
    iput v0, p0, Lcom/smartisanos/smengine/N;->mTargetContextGeneration:I
    const/4 v1, 0x0
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/N;->Ka(Z)V
    iput-boolean v1, p0, Lcom/smartisanos/smengine/N;->AG:Z

    :target_context_current
    return-void
.end method
