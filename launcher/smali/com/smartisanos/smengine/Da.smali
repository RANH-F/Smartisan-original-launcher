.class public Lcom/smartisanos/smengine/Da;
.super Ljava/lang/Object;
.source "Texture.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;

.field public static sT:Ljava/lang/String;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContextGeneration:I

.field private mHeight:F

.field private mName:Ljava/lang/String;

.field private mRenderTarget:Lcom/smartisanos/smengine/N;

.field private mWidth:F

.field private nD:Z

.field private oT:Lcom/smartisanos/smengine/Ca;

.field private pT:Z

.field private qT:Ljava/nio/Buffer;

.field private rT:Z

.field private sG:I

.field private yG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/Da;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/Da;->log:Lcom/smartisanos/launcher/va;

    const-string v0, ""

    .line 2
    sput-object v0, Lcom/smartisanos/smengine/Da;->sT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1
    iput v0, p0, Lcom/smartisanos/smengine/Da;->mContextGeneration:I

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/Ca;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Ca;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Da;->oT:Lcom/smartisanos/smengine/Ca;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/smartisanos/smengine/Da;->sG:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/smengine/Da;->mRenderTarget:Lcom/smartisanos/smengine/N;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Da;->rT:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Da;->nD:Z

    return-void
.end method

.method public constructor <init>(IIIILandroid/graphics/Bitmap;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1
    iput v0, p0, Lcom/smartisanos/smengine/Da;->mContextGeneration:I

    .line 17
    new-instance v0, Lcom/smartisanos/smengine/Ca;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Ca;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Da;->oT:Lcom/smartisanos/smengine/Ca;

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/smartisanos/smengine/Da;->sG:I

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/smartisanos/smengine/Da;->mRenderTarget:Lcom/smartisanos/smengine/N;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Da;->rT:Z

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Da;->nD:Z

    .line 22
    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->oT:Lcom/smartisanos/smengine/Ca;

    iput p1, v0, Lcom/smartisanos/smengine/Ca;->mT:I

    .line 23
    iput p2, v0, Lcom/smartisanos/smengine/Ca;->nT:I

    .line 24
    iput p3, v0, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    .line 25
    iput p4, v0, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    .line 26
    iput-object p5, p0, Lcom/smartisanos/smengine/Da;->mBitmap:Landroid/graphics/Bitmap;

    .line 27
    iget-object p1, p0, Lcom/smartisanos/smengine/Da;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/smartisanos/smengine/Da;->mWidth:F

    .line 29
    iget-object p1, p0, Lcom/smartisanos/smengine/Da;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/smartisanos/smengine/Da;->mHeight:F

    .line 30
    :cond_0
    iget-boolean p1, p0, Lcom/smartisanos/smengine/Da;->yG:Z

    if-eqz p1, :cond_1

    .line 31
    iget-object p0, p0, Lcom/smartisanos/smengine/Da;->oT:Lcom/smartisanos/smengine/Ca;

    const/4 p1, 0x3

    iput p1, p0, Lcom/smartisanos/smengine/Ca;->mT:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1
    iput v0, p0, Lcom/smartisanos/smengine/Da;->mContextGeneration:I

    .line 33
    new-instance v0, Lcom/smartisanos/smengine/Ca;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Ca;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Da;->oT:Lcom/smartisanos/smengine/Ca;

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/smartisanos/smengine/Da;->sG:I

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/smartisanos/smengine/Da;->mRenderTarget:Lcom/smartisanos/smengine/N;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Da;->rT:Z

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/smartisanos/smengine/Da;->nD:Z

    .line 38
    iput-object p1, p0, Lcom/smartisanos/smengine/Da;->mBitmap:Landroid/graphics/Bitmap;

    .line 39
    iget-object p1, p0, Lcom/smartisanos/smengine/Da;->oT:Lcom/smartisanos/smengine/Ca;

    iput v0, p1, Lcom/smartisanos/smengine/Ca;->mT:I

    .line 40
    iput v0, p1, Lcom/smartisanos/smengine/Ca;->nT:I

    .line 41
    iput v0, p1, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    .line 42
    iput v0, p1, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    .line 43
    iget-object p1, p0, Lcom/smartisanos/smengine/Da;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/smartisanos/smengine/Da;->mWidth:F

    .line 45
    iget-object p1, p0, Lcom/smartisanos/smengine/Da;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/smartisanos/smengine/Da;->mHeight:F

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/N;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1
    iput v0, p0, Lcom/smartisanos/smengine/Da;->mContextGeneration:I

    .line 8
    new-instance v0, Lcom/smartisanos/smengine/Ca;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Ca;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/Da;->oT:Lcom/smartisanos/smengine/Ca;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/smartisanos/smengine/Da;->sG:I

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/smartisanos/smengine/Da;->mRenderTarget:Lcom/smartisanos/smengine/N;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Da;->rT:Z

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Da;->nD:Z

    .line 13
    iput-object p1, p0, Lcom/smartisanos/smengine/Da;->mRenderTarget:Lcom/smartisanos/smengine/N;

    .line 14
    iget-boolean p1, p0, Lcom/smartisanos/smengine/Da;->yG:Z

    if-eqz p1, :cond_0

    .line 15
    iget-object p0, p0, Lcom/smartisanos/smengine/Da;->oT:Lcom/smartisanos/smengine/Ca;

    const/4 p1, 0x3

    iput p1, p0, Lcom/smartisanos/smengine/Ca;->mT:I

    :cond_0
    return-void
.end method

.method private static Od(I)I
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/16 p0, 0x2703

    return p0

    .line 1
    :cond_0
    new-instance p0, Lcom/smartisanos/smengine/Texture$TextureException;

    const-string v0, "unsupport filter param"

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/Texture$TextureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p0, 0x2701

    return p0

    :cond_2
    const/16 p0, 0x2702

    return p0

    :cond_3
    const/16 p0, 0x2700

    return p0

    :cond_4
    const/16 p0, 0x2601

    return p0

    :cond_5
    const/16 p0, 0x2600

    return p0
.end method

.method private static Pd(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x2901

    return p0

    .line 1
    :cond_0
    new-instance p0, Lcom/smartisanos/smengine/Texture$TextureException;

    const-string v0, "unsupport wrap param"

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/Texture$TextureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p0, 0x812f

    return p0
.end method

.method private static Qd(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Lcom/smartisanos/smengine/Texture$TextureException;

    const-string v0, "unsupport filter param"

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/Texture$TextureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string p0, "GL_LINEAR_MIPMAP_LINEAR"

    return-object p0

    :cond_2
    const-string p0, "GL_NEAREST_MIPMAP_LINEAR"

    return-object p0

    :cond_3
    const-string p0, "GL_NEAREST_MIPMAP_NEAREST"

    return-object p0

    :cond_4
    const-string p0, "GL_LINEAR"

    return-object p0

    :cond_5
    const-string p0, "GL_NEAREST"

    return-object p0
.end method

.method private static Rd(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "GL_REPEAT"

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Lcom/smartisanos/smengine/Texture$TextureException;

    const-string v0, "unsupport wrap param"

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/Texture$TextureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "GL_CLAMP_TO_EDGE"

    return-object p0
.end method

.method public static Ya(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Da;->cA()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Da;->bA()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/--/"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static Za(Ljava/lang/String;)I
    .locals 3

    const-string v0, "flag_message"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "_"

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object p0, p0, v2

    const-string v2, "^[1-9]\\d*$"

    .line 4
    invoke-static {v2, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public static _a(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Da;->cA()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Da;->aA()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/Paint;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Da;->cA()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Da;->bA()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/Da;->aA()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/smartisanos/smengine/Da;->sT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/smartisanos/smengine/Ca;)V
    .locals 3

    .line 6
    iget v0, p0, Lcom/smartisanos/smengine/Ca;->mT:I

    invoke-static {v0}, Lcom/smartisanos/smengine/Da;->Od(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0xde1

    const/16 v2, 0x2801

    invoke-static {v1, v2, v0}, Lcom/smartisanos/smengine/P;->glTexParameterf(IIF)V

    const-string v0, "texparameter min filter"

    .line 7
    invoke-static {v0}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 8
    iget v0, p0, Lcom/smartisanos/smengine/Ca;->nT:I

    .line 9
    invoke-static {v0}, Lcom/smartisanos/smengine/Da;->Od(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v2, 0x2800

    .line 10
    invoke-static {v1, v2, v0}, Lcom/smartisanos/smengine/P;->glTexParameterf(IIF)V

    const-string v0, "texparameter mag filter"

    .line 11
    invoke-static {v0}, Lcom/smartisanos/smengine/r;->Ea(Ljava/lang/String;)V

    .line 12
    iget v0, p0, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    .line 13
    invoke-static {v0}, Lcom/smartisanos/smengine/Da;->Pd(I)I

    move-result v0

    const/16 v2, 0x2802

    .line 14
    invoke-static {v1, v2, v0}, Lcom/smartisanos/smengine/P;->glTexParameteri(III)V

    .line 15
    iget p0, p0, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    .line 16
    invoke-static {p0}, Lcom/smartisanos/smengine/Da;->Pd(I)I

    move-result p0

    const/16 v0, 0x2803

    .line 17
    invoke-static {v1, v0, p0}, Lcom/smartisanos/smengine/P;->glTexParameteri(III)V

    return-void
.end method

.method private static aA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bA()Ljava/lang/String;
    .locals 1

    const-string v0, "&&"

    return-object v0
.end method

.method private bind()Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->mRenderTarget:Lcom/smartisanos/smengine/N;

    const/4 v1, -0x1

    const/16 v2, 0xde1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/N;->Rk()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 3
    invoke-static {v2, v0}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    .line 4
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Da;->rT:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->oT:Lcom/smartisanos/smengine/Ca;

    invoke-static {v0}, Lcom/smartisanos/smengine/Da;->a(Lcom/smartisanos/smengine/Ca;)V

    .line 6
    iput-boolean v4, p0, Lcom/smartisanos/smengine/Da;->rT:Z

    :cond_0
    return v3

    .line 7
    :cond_1
    sget-object v0, Lcom/smartisanos/smengine/Da;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "texture has render target, but target.getTexId == -1 mRenderTarget name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/smengine/Da;->mRenderTarget:Lcom/smartisanos/smengine/N;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/N;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return v4

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/smartisanos/smengine/Da;->hasCurrentContext()Z
    move-result v0
    if-nez v0, :texture_context_ready
    # Invalidate only the GL name; retained pixels keep their existing owner.
    const/4 v0, -0x1
    iput v0, p0, Lcom/smartisanos/smengine/Da;->sG:I
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Da;->rT:Z
    :texture_context_ready
    iget v0, p0, Lcom/smartisanos/smengine/Da;->sG:I

    if-eq v0, v1, :cond_5

    .line 9
    invoke-static {v2, v0}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    .line 10
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Da;->rT:Z

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->oT:Lcom/smartisanos/smengine/Ca;

    invoke-static {v0}, Lcom/smartisanos/smengine/Da;->a(Lcom/smartisanos/smengine/Ca;)V

    .line 12
    iput-boolean v4, p0, Lcom/smartisanos/smengine/Da;->rT:Z

    .line 13
    :cond_3
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Da;->pT:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/smartisanos/smengine/Da;->yG:Z

    if-eqz v0, :cond_4

    .line 14
    invoke-static {v2}, Lcom/smartisanos/smengine/P;->glGenerateMipmap(I)V

    .line 15
    iput-boolean v4, p0, Lcom/smartisanos/smengine/Da;->pT:Z

    :cond_4
    return v3

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    .line 17
    sget-object v0, Lcom/smartisanos/smengine/Da;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "texture bind with mBitmap name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/smartisanos/smengine/Da;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " w = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/smartisanos/smengine/Da;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " h = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/smartisanos/smengine/Da;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    new-array v0, v3, [I

    .line 18
    invoke-static {v3, v0, v4}, Lcom/smartisanos/smengine/P;->glGenTextures(I[II)V

    .line 19
    aget v5, v0, v4

    iput v5, p0, Lcom/smartisanos/smengine/Da;->sG:I

    .line 20
    iget v5, p0, Lcom/smartisanos/smengine/Da;->sG:I

    const-string v6, "SMGLES20.glGenTextures error. name = "

    if-ne v5, v1, :cond_6

    .line 21
    sget-object v5, Lcom/smartisanos/smengine/Da;->log:Lcom/smartisanos/launcher/va;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/smartisanos/smengine/Da;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " again gen texture!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 22
    invoke-static {v3, v0, v4}, Lcom/smartisanos/smengine/P;->glGenTextures(I[II)V

    .line 23
    aget v0, v0, v4

    iput v0, p0, Lcom/smartisanos/smengine/Da;->sG:I

    .line 24
    :cond_6
    iget v0, p0, Lcom/smartisanos/smengine/Da;->sG:I

    if-eq v0, v1, :cond_c

    .line 25
    invoke-static {v2, v0}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    .line 26
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Da;->rT:Z

    if-eqz v0, :cond_7

    .line 27
    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->oT:Lcom/smartisanos/smengine/Ca;

    invoke-static {v0}, Lcom/smartisanos/smengine/Da;->a(Lcom/smartisanos/smengine/Ca;)V

    .line 28
    iput-boolean v4, p0, Lcom/smartisanos/smengine/Da;->rT:Z

    .line 29
    :cond_7
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v4, v0, v4}, Lcom/smartisanos/smengine/P;->texImage2D(IILandroid/graphics/Bitmap;I)V

    # A retained text descriptor is reusable only after upload in the current EGL context.
    invoke-static {}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->getEglContextGeneration()I
    move-result v5
    iput v5, p0, Lcom/smartisanos/smengine/Da;->mContextGeneration:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 30
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 31
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 32
    :cond_8
    :goto_0
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Da;->yG:Z

    if-eqz v0, :cond_9

    .line 33
    invoke-static {v2}, Lcom/smartisanos/smengine/P;->glGenerateMipmap(I)V

    .line 34
    :cond_9
    iget v0, p0, Lcom/smartisanos/smengine/Da;->sG:I

    if-eq v0, v1, :cond_b

    .line 35
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Da;->nD:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 36
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/smartisanos/smengine/Da;->mBitmap:Landroid/graphics/Bitmap;

    :cond_a
    return v3

    .line 38
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ??? glGenTextures error!!!!! name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/smengine/Da;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/smengine/Da;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_d
    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->qT:Ljava/nio/Buffer;

    if-eqz v0, :cond_11

    .line 41
    sget-object v0, Lcom/smartisanos/smengine/Da;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "texture bind with mPixel name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/smartisanos/smengine/Da;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    new-array v0, v3, [I

    .line 42
    invoke-static {v3, v0, v4}, Lcom/smartisanos/smengine/P;->glGenTextures(I[II)V

    .line 43
    aget v0, v0, v4

    iput v0, p0, Lcom/smartisanos/smengine/Da;->sG:I

    .line 44
    iget v0, p0, Lcom/smartisanos/smengine/Da;->sG:I

    invoke-static {v2, v0}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    .line 45
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Da;->rT:Z

    if-eqz v0, :cond_e

    .line 46
    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->oT:Lcom/smartisanos/smengine/Ca;

    invoke-static {v0}, Lcom/smartisanos/smengine/Da;->a(Lcom/smartisanos/smengine/Ca;)V

    .line 47
    iput-boolean v4, p0, Lcom/smartisanos/smengine/Da;->rT:Z

    :cond_e
    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1908

    .line 48
    iget v0, p0, Lcom/smartisanos/smengine/Da;->mWidth:F

    float-to-int v8, v0

    iget v0, p0, Lcom/smartisanos/smengine/Da;->mHeight:F

    float-to-int v9, v0

    const/4 v10, 0x0

    const/16 v11, 0x1908

    const/16 v12, 0x1401

    iget-object v13, p0, Lcom/smartisanos/smengine/Da;->qT:Ljava/nio/Buffer;

    invoke-static/range {v5 .. v13}, Lcom/smartisanos/smengine/P;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->getEglContextGeneration()I
    move-result v0
    iput v0, p0, Lcom/smartisanos/smengine/Da;->mContextGeneration:I

    .line 49
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Da;->yG:Z

    if-eqz v0, :cond_f

    .line 50
    invoke-static {v2}, Lcom/smartisanos/smengine/P;->glGenerateMipmap(I)V

    .line 51
    :cond_f
    iget p0, p0, Lcom/smartisanos/smengine/Da;->sG:I

    if-eq p0, v1, :cond_10

    return v3

    .line 52
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, " ??? glGenTextures error!!!!!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    return v4
.end method

.method private static cA()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "#*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g([Ljava/lang/String;)Z
    .locals 2

    .line 1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    const-string v1, "fore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    aget-object p0, p0, v1

    const-string v0, "^[0-9]\\d*$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic jc(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/smengine/Da;->Qd(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic kc(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/smengine/Da;->Rd(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Ka(Z)V
    .locals 6

    if-eqz p1, :texture_release_context_ready
    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->mRenderTarget:Lcom/smartisanos/smengine/N;
    if-nez v0, :texture_release_context_ready
    invoke-direct {p0}, Lcom/smartisanos/smengine/Da;->hasCurrentContext()Z
    move-result v0
    if-nez v0, :texture_release_context_ready
    # An old-context number may belong to another texture in the current context.
    const/4 p1, 0x0
    :texture_release_context_ready

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3
    iput-object v1, p0, Lcom/smartisanos/smengine/Da;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 4
    iput v0, p0, Lcom/smartisanos/smengine/Da;->sG:I

    .line 5
    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->mRenderTarget:Lcom/smartisanos/smengine/N;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/N;->Ka(Z)V

    .line 7
    :cond_1
    iput-object v1, p0, Lcom/smartisanos/smengine/Da;->mRenderTarget:Lcom/smartisanos/smengine/N;

    return-void

    .line 8
    :cond_2
    iget v2, p0, Lcom/smartisanos/smengine/Da;->sG:I

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lcom/smartisanos/smengine/Da;->mRenderTarget:Lcom/smartisanos/smengine/N;

    if-nez v2, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 9
    iget v4, p0, Lcom/smartisanos/smengine/Da;->sG:I

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 10
    invoke-static {v2, v3, v5}, Lcom/smartisanos/smengine/P;->glDeleteTextures(I[II)V

    .line 11
    iput v0, p0, Lcom/smartisanos/smengine/Da;->sG:I

    .line 12
    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->mRenderTarget:Lcom/smartisanos/smengine/N;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/N;->Ka(Z)V

    .line 14
    :cond_4
    iput-object v1, p0, Lcom/smartisanos/smengine/Da;->mRenderTarget:Lcom/smartisanos/smengine/N;

    return-void
.end method

.method public Rk()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->mRenderTarget:Lcom/smartisanos/smengine/N;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/smengine/N;->Rk()I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/smengine/Da;->hasCurrentContext()Z
    move-result v0
    if-nez v0, :texture_id_context_ready
    const/4 v0, -0x1
    return v0
    :texture_id_context_ready
    iget p0, p0, Lcom/smartisanos/smengine/Da;->sG:I

    return p0
.end method

.method public Sb(Z)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/smengine/Da;->bind()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/16 p1, 0xde1

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    :cond_0
    return p0
.end method

.method public Tb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/Da;->nD:Z

    return-void
.end method

.method public Ub(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/Da;->yG:Z

    .line 2
    iget-boolean p1, p0, Lcom/smartisanos/smengine/Da;->yG:Z

    if-eqz p1, :cond_1

    .line 3
    iget-boolean p1, p0, Lcom/smartisanos/smengine/Da;->pT:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/smengine/Da;->pT:Z

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/smengine/Da;->oT:Lcom/smartisanos/smengine/Ca;

    const/4 p1, 0x5

    iput p1, p0, Lcom/smartisanos/smengine/Ca;->mT:I

    .line 6
    iput v0, p0, Lcom/smartisanos/smengine/Ca;->nT:I

    .line 7
    iput v0, p0, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    .line 8
    iput v0, p0, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/smartisanos/smengine/Da;->pT:Z

    :goto_0
    return-void
.end method

.method public e(IIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/Da;->oT:Lcom/smartisanos/smengine/Ca;

    iput p1, p0, Lcom/smartisanos/smengine/Ca;->mT:I

    .line 2
    iput p2, p0, Lcom/smartisanos/smengine/Ca;->nT:I

    .line 3
    iput p3, p0, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    .line 4
    iput p4, p0, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    return-void
.end method

.method public getHeight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Da;->mHeight:F

    return p0
.end method

.method public getContextGeneration()I
    .locals 0
    iget p0, p0, Lcom/smartisanos/smengine/Da;->mContextGeneration:I
    return p0
.end method

.method private hasCurrentContext()Z
    .locals 2
    invoke-static {}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->getEglContextGeneration()I
    move-result v0
    iget v1, p0, Lcom/smartisanos/smengine/Da;->mContextGeneration:I
    if-ne v0, v1, :old_texture_context
    const/4 v0, 0x1
    return v0
    :old_texture_context
    const/4 v0, 0x0
    return v0
.end method

.method public needsSourceReload()Z
    .locals 1
    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->mRenderTarget:Lcom/smartisanos/smengine/N;
    if-nez v0, :source_pixels_available
    iget v0, p0, Lcom/smartisanos/smengine/Da;->mContextGeneration:I
    if-ltz v0, :source_pixels_available
    invoke-direct {p0}, Lcom/smartisanos/smengine/Da;->hasCurrentContext()Z
    move-result v0
    if-nez v0, :source_pixels_available
    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->mBitmap:Landroid/graphics/Bitmap;
    if-nez v0, :source_pixels_available
    iget-object v0, p0, Lcom/smartisanos/smengine/Da;->qT:Ljava/nio/Buffer;
    if-nez v0, :source_pixels_available
    const/4 v0, 0x1
    return v0
    :source_pixels_available
    const/4 v0, 0x0
    return v0
.end method

.method public getWidth()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/Da;->mWidth:F

    return p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/Da;->mName:Ljava/lang/String;

    return-void
.end method
