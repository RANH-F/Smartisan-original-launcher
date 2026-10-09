.class public Lcom/smartisanos/smengine/mymaterial/f;
.super Ljava/lang/Object;
.source "Material.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private WV:Ljava/util/HashMap;

.field private XV:[Ljava/lang/String;

.field private YV:[Lcom/smartisanos/smengine/Ca;

.field private ZV:[Z

.field private _V:[I

.field private aW:[I

.field public bW:Z

.field private bp:Z

.field public cW:Z

.field public dW:Z

.field public eW:Z

.field public fW:Z

.field public gW:Z

.field public hW:Z

.field public iW:Z

.field private jW:[Z

.field private kW:[Ljava/lang/Object;

.field private mName:Ljava/lang/String;

.field protected mShader:Lcom/smartisanos/smengine/sa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/mymaterial/f;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/mymaterial/f;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->WV:Ljava/util/HashMap;

    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/String;

    .line 3
    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/f;->XV:[Ljava/lang/String;

    new-array v1, v0, [Lcom/smartisanos/smengine/Ca;

    .line 4
    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/f;->YV:[Lcom/smartisanos/smengine/Ca;

    new-array v1, v0, [Z

    .line 5
    iput-object v1, p0, Lcom/smartisanos/smengine/mymaterial/f;->ZV:[Z

    const/4 v1, 0x7

    new-array v2, v1, [I

    .line 6
    iput-object v2, p0, Lcom/smartisanos/smengine/mymaterial/f;->_V:[I

    const/16 v2, 0x31

    new-array v3, v2, [I

    .line 7
    iput-object v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->aW:[I

    const/4 v3, 0x1

    .line 8
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->bW:Z

    const/4 v3, 0x0

    .line 9
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->cW:Z

    .line 10
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->dW:Z

    .line 11
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->eW:Z

    .line 12
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->fW:Z

    .line 13
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->gW:Z

    .line 14
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->hW:Z

    .line 15
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->iW:Z

    new-array v4, v0, [Z

    .line 16
    iput-object v4, p0, Lcom/smartisanos/smengine/mymaterial/f;->jW:[Z

    const/16 v4, 0x2a

    new-array v4, v4, [Ljava/lang/Object;

    .line 17
    iput-object v4, p0, Lcom/smartisanos/smengine/mymaterial/f;->kW:[Ljava/lang/Object;

    .line 18
    iput-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->bp:Z

    .line 19
    iput-object p1, p0, Lcom/smartisanos/smengine/mymaterial/f;->mName:Ljava/lang/String;

    move v4, v3

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v1, :cond_0

    .line 20
    iget-object v6, p0, Lcom/smartisanos/smengine/mymaterial/f;->_V:[I

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_1
    if-ge v1, v2, :cond_1

    .line 21
    iget-object v4, p0, Lcom/smartisanos/smengine/mymaterial/f;->aW:[I

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 22
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/Ra;->kt()Lcom/smartisanos/smengine/ta;

    move-result-object v1

    .line 23
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/ta;->Xa(Ljava/lang/String;)Lcom/smartisanos/smengine/sa;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    .line 24
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    if-nez v2, :cond_2

    .line 25
    new-instance v2, Lcom/smartisanos/smengine/sa;

    invoke-direct {v2, p1, p2, p3}, Lcom/smartisanos/smengine/sa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    .line 26
    iget-object p2, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    invoke-virtual {v1, p1, p2}, Lcom/smartisanos/smengine/ta;->a(Ljava/lang/String;Lcom/smartisanos/smengine/sa;)V

    :cond_2
    :goto_2
    if-ge v3, v0, :cond_3

    .line 27
    iget-object p1, p0, Lcom/smartisanos/smengine/mymaterial/f;->YV:[Lcom/smartisanos/smengine/Ca;

    new-instance p2, Lcom/smartisanos/smengine/Ca;

    invoke-direct {p2}, Lcom/smartisanos/smengine/Ca;-><init>()V

    aput-object p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private a(Ljava/nio/FloatBuffer;IIZ)V
    .locals 7

    .line 2
    invoke-static {p2}, Lcom/smartisanos/smengine/x;->Ma(I)I

    move-result v5

    const/4 p2, 0x2

    const-string v0, "aColors"

    .line 3
    invoke-virtual {p0, p2, v0}, Lcom/smartisanos/smengine/mymaterial/f;->d(ILjava/lang/String;)I

    move-result v1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    const/4 v3, 0x4

    move-object v2, p1

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/sa;->a(ILjava/nio/FloatBuffer;IIIZ)V

    return-void
.end method

.method private b(Ljava/nio/FloatBuffer;IIZ)V
    .locals 7

    .line 1
    invoke-static {p2}, Lcom/smartisanos/smengine/x;->Oa(I)I

    move-result v5

    const/4 p2, 0x6

    const-string v0, "aMvpArrayIndex"

    .line 2
    invoke-virtual {p0, p2, v0}, Lcom/smartisanos/smengine/mymaterial/f;->d(ILjava/lang/String;)I

    move-result v1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    const/4 v3, 0x1

    move-object v2, p1

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/sa;->a(ILjava/nio/FloatBuffer;IIIZ)V

    return-void
.end method

.method private c(Ljava/nio/FloatBuffer;IIZ)V
    .locals 7

    .line 2
    invoke-static {p2}, Lcom/smartisanos/smengine/x;->Pa(I)I

    move-result v5

    const/4 p2, 0x3

    const-string v0, "aNormals"

    .line 3
    invoke-virtual {p0, p2, v0}, Lcom/smartisanos/smengine/mymaterial/f;->d(ILjava/lang/String;)I

    move-result v1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    const/4 v3, 0x3

    move-object v2, p1

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/sa;->a(ILjava/nio/FloatBuffer;IIIZ)V

    return-void
.end method

.method private d(Ljava/nio/FloatBuffer;IIZ)V
    .locals 7

    .line 4
    invoke-static {p2}, Lcom/smartisanos/smengine/x;->Qa(I)I

    move-result v5

    const/4 p2, 0x0

    const-string v0, "aPosition"

    .line 5
    invoke-virtual {p0, p2, v0}, Lcom/smartisanos/smengine/mymaterial/f;->d(ILjava/lang/String;)I

    move-result v1

    .line 6
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    const/4 v3, 0x3

    move-object v2, p1

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/sa;->a(ILjava/nio/FloatBuffer;IIIZ)V

    return-void
.end method

.method private e(Ljava/nio/FloatBuffer;IIZ)V
    .locals 7

    .line 5
    invoke-static {p2}, Lcom/smartisanos/smengine/x;->Sa(I)I

    move-result v5

    const/4 p2, 0x1

    const-string v0, "aTexCoord"

    .line 6
    invoke-virtual {p0, p2, v0}, Lcom/smartisanos/smengine/mymaterial/f;->d(ILjava/lang/String;)I

    move-result v1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    const/4 v3, 0x2

    move-object v2, p1

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/sa;->a(ILjava/nio/FloatBuffer;IIIZ)V

    return-void
.end method

.method private f(Ljava/nio/FloatBuffer;IIZ)V
    .locals 7

    .line 1
    invoke-static {p2}, Lcom/smartisanos/smengine/x;->Ra(I)I

    move-result v5

    const/4 p2, 0x5

    const-string v0, "aNormalTexCoord"

    .line 2
    invoke-virtual {p0, p2, v0}, Lcom/smartisanos/smengine/mymaterial/f;->d(ILjava/lang/String;)I

    move-result v1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    const/4 v3, 0x2

    move-object v2, p1

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/sa;->a(ILjava/nio/FloatBuffer;IIIZ)V

    return-void
.end method

.method private g(Ljava/nio/FloatBuffer;IIZ)V
    .locals 7

    .line 1
    invoke-static {p2}, Lcom/smartisanos/smengine/x;->Ra(I)I

    move-result v5

    const/4 p2, 0x4

    const-string v0, "aShadowTexCoord"

    .line 2
    invoke-virtual {p0, p2, v0}, Lcom/smartisanos/smengine/mymaterial/f;->d(ILjava/lang/String;)I

    move-result v1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    const/4 v3, 0x2

    move-object v2, p1

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/smengine/sa;->a(ILjava/nio/FloatBuffer;IIIZ)V

    return-void
.end method

.method private s([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 p0, 0x0

    .line 1
    :try_start_0
    aget-object v0, p1, p0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/Aa;->g(J)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/Aa;->qc()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/smartisanos/launcher/data/a/l;->V(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    goto :goto_0

    .line 8
    :cond_1
    sget-object p0, Lcom/smartisanos/smengine/mymaterial/f;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "item is delete. can\'t load icon"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    sget-object p0, Lcom/smartisanos/smengine/mymaterial/f;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLoseIconBitmap. item pkg == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const-string p0, "getLoseIconBitmap"

    .line 10
    invoke-static {p0}, Lcom/smartisanos/launcher/va;->v(Ljava/lang/String;)V

    .line 11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "getLoseIconBitmap. see log."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_2
    :goto_0
    invoke-static {v2, v3}, Lcom/smartisanos/launcher/e/s;->a(Lcom/smartisanos/launcher/data/ItemInfo;Z)[B

    move-result-object p0

    iput-object p0, v2, Lcom/smartisanos/launcher/data/ItemInfo;->iconRawData:[B

    .line 13
    iget-wide p0, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/Aa;->g(J)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    .line 15
    invoke-static {p0, p0}, Lcom/smartisanos/launcher/e/s;->t(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public As()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/sa;->As()V

    return-void
.end method

.method protected Ht()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    .line 1
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->XV:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 2
    iget-object v4, p0, Lcom/smartisanos/smengine/mymaterial/f;->YV:[Lcom/smartisanos/smengine/Ca;

    aget-object v4, v4, v1

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->rc(I)I

    move-result v5

    invoke-static {v5}, Lcom/smartisanos/smengine/P;->glActiveTexture(I)V

    .line 4
    invoke-virtual {p0, v3, v4, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Ca;I)Z

    move-result v3

    .line 5
    iget-object v4, p0, Lcom/smartisanos/smengine/mymaterial/f;->jW:[Z

    aput-boolean v3, v4, v1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/16 p0, 0xde1

    .line 6
    invoke-static {p0, v0}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    :cond_2
    return-void
.end method

.method public It()V
    .locals 0

    return-void
.end method

.method public Jt()V
    .locals 0

    return-void
.end method

.method public Kt()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->bp:Z

    return p0
.end method

.method protected Lt()V
    .locals 4

    const/16 v0, 0x18

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/a/j;

    const/16 v1, 0x1a

    const-string v2, "uCameraLoc"

    .line 2
    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/smartisanos/smengine/sa;->a(IFFF)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "camera loc not set"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected Mt()V
    .locals 9

    const/16 v0, 0x17

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/a/k;

    const/16 v1, 0x19

    const-string v2, "uLightColor"

    .line 2
    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v4

    if-eqz v0, :cond_0

    .line 3
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    iget v5, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v6, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v7, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v8, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/smengine/sa;->a(IFFFF)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/smengine/sa;->a(IFFFF)V

    :goto_0
    return-void
.end method

.method protected Nt()V
    .locals 4

    const/16 v0, 0x16

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/a/j;

    const/16 v1, 0x18

    const-string v2, "uLightLoc"

    .line 2
    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    iget v2, v0, Lcom/smartisanos/smengine/a/j;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/a/j;->y:F

    iget v0, v0, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/smartisanos/smengine/sa;->a(IFFF)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "light loc is not set"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected Ot()V
    .locals 9

    const/16 v0, 0x15

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/a/k;

    const/16 v1, 0x17

    const-string v2, "uModularBlendColor"

    .line 2
    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v4

    if-eqz v0, :cond_0

    .line 3
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    iget v5, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v6, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v7, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v8, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/smengine/sa;->a(IFFFF)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/smengine/sa;->a(IFFFF)V

    :goto_0
    return-void
.end method

.method protected Pt()V
    .locals 9

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/a/k;

    const/16 v1, 0x8

    const-string v2, "uModularColor"

    .line 2
    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v4

    if-eqz v0, :cond_0

    .line 3
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    iget v5, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v6, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v7, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v8, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/smengine/sa;->a(IFFFF)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/smengine/sa;->a(IFFFF)V

    :goto_0
    return-void
.end method

.method protected Qt()V
    .locals 9

    const/16 v0, 0x19

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/a/k;

    const/16 v1, 0x1b

    const-string v2, "uSpecularStrength"

    .line 2
    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v4

    if-eqz v0, :cond_0

    .line 3
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    iget v5, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v6, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v7, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v8, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual/range {v3 .. v8}, Lcom/smartisanos/smengine/sa;->a(IFFFF)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "set specular strength error"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public Wb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/smengine/mymaterial/f;->bp:Z

    return-void
.end method

.method public a(ILcom/smartisanos/smengine/Ca;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 5
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->YV:[Lcom/smartisanos/smengine/Ca;

    aput-object p2, p0, p1

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->kW:[Ljava/lang/Object;

    aput-object p2, p0, p1

    return-void
.end method

.method public a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/y;Z)V
    .locals 0

    .line 36
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unknown material "

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected a(Lcom/smartisanos/smengine/y;Z)V
    .locals 0

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/y;->vk()I

    move-result p0

    if-nez p0, :cond_0

    .line 7
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/smartisanos/smengine/mymaterial/f;->log:Lcom/smartisanos/launcher/va;

    const-string p2, "draw points num == 0 : error"

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 8
    invoke-static {p1, p1, p0}, Lcom/smartisanos/smengine/P;->glDrawArrays(III)V

    return-void
.end method

.method protected a(ZLcom/smartisanos/smengine/y;ZZ)V
    .locals 3

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p2}, Lcom/smartisanos/smengine/y;->nk()V

    .line 19
    invoke-virtual {p2}, Lcom/smartisanos/smengine/y;->mk()V

    goto :goto_0

    :cond_0
    const v0, 0x8892

    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Lcom/smartisanos/smengine/P;->glBindBuffer(II)V

    const v0, 0x8893

    .line 21
    invoke-static {v0, v1}, Lcom/smartisanos/smengine/P;->glBindBuffer(II)V

    .line 22
    :goto_0
    invoke-virtual {p2}, Lcom/smartisanos/smengine/y;->Bk()I

    move-result v0

    .line 23
    invoke-virtual {p2}, Lcom/smartisanos/smengine/y;->zk()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 24
    invoke-static {v0}, Lcom/smartisanos/smengine/x;->Na(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    .line 25
    invoke-direct {p0, v1, v0, v2, p1}, Lcom/smartisanos/smengine/mymaterial/f;->d(Ljava/nio/FloatBuffer;IIZ)V

    if-eqz p3, :cond_1

    .line 26
    invoke-direct {p0, v1, v0, v2, p1}, Lcom/smartisanos/smengine/mymaterial/f;->e(Ljava/nio/FloatBuffer;IIZ)V

    :cond_1
    if-eqz p4, :cond_2

    .line 27
    invoke-direct {p0, v1, v0, v2, p1}, Lcom/smartisanos/smengine/mymaterial/f;->a(Ljava/nio/FloatBuffer;IIZ)V

    .line 28
    :cond_2
    invoke-virtual {p2}, Lcom/smartisanos/smengine/y;->sk()[F

    move-result-object p3

    if-eqz p3, :cond_3

    .line 29
    invoke-direct {p0, v1, v0, v2, p1}, Lcom/smartisanos/smengine/mymaterial/f;->b(Ljava/nio/FloatBuffer;IIZ)V

    .line 30
    :cond_3
    invoke-virtual {p2}, Lcom/smartisanos/smengine/y;->yk()[F

    move-result-object p3

    if-eqz p3, :cond_4

    .line 31
    invoke-direct {p0, v1, v0, v2, p1}, Lcom/smartisanos/smengine/mymaterial/f;->g(Ljava/nio/FloatBuffer;IIZ)V

    .line 32
    :cond_4
    invoke-virtual {p2}, Lcom/smartisanos/smengine/y;->uk()[F

    move-result-object p3

    if-eqz p3, :cond_5

    .line 33
    invoke-direct {p0, v1, v0, v2, p1}, Lcom/smartisanos/smengine/mymaterial/f;->f(Ljava/nio/FloatBuffer;IIZ)V

    .line 34
    :cond_5
    invoke-virtual {p2}, Lcom/smartisanos/smengine/y;->tk()[F

    move-result-object p2

    if-eqz p2, :cond_6

    .line 35
    invoke-direct {p0, v1, v0, v2, p1}, Lcom/smartisanos/smengine/mymaterial/f;->c(Ljava/nio/FloatBuffer;IIZ)V

    :cond_6
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/smartisanos/smengine/Ca;I)Z
    .locals 9
    move-object v8, p1

    .line 9
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/Ea;->bb(Ljava/lang/String;)Lcom/smartisanos/smengine/Da;

    move-result-object v1

    if-nez v1, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->hb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7
    if-nez v7, :projection_bitmap_ready
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/IconIlluminationCompat;->isProjectionTexture(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :projection_bitmap_ready
    const/4 v2, 0x0
    return v2
    :projection_bitmap_ready

    .line 12
    new-instance v1, Lcom/smartisanos/smengine/Da;

    iget v3, p2, Lcom/smartisanos/smengine/Ca;->mT:I

    iget v4, p2, Lcom/smartisanos/smengine/Ca;->nT:I

    iget v5, p2, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    iget v6, p2, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/smartisanos/smengine/Da;-><init>(IIIILandroid/graphics/Bitmap;)V

    .line 13
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->ZV:[Z

    aget-boolean p0, p0, p3

    invoke-virtual {v1, p0}, Lcom/smartisanos/smengine/Da;->Ub(Z)V

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    const/4 p0, 0x1

    .line 15
    invoke-virtual {v1, p0}, Lcom/smartisanos/smengine/Da;->Tb(Z)V

    goto :goto_0

    .line 16
    :cond_0
    iget p0, p2, Lcom/smartisanos/smengine/Ca;->mT:I

    iget p1, p2, Lcom/smartisanos/smengine/Ca;->nT:I

    iget p3, p2, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    iget p2, p2, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    invoke-virtual {v1, p0, p1, p3, p2}, Lcom/smartisanos/smengine/Da;->e(IIII)V

    :goto_0
    const/4 p0, 0x0

    .line 17
    invoke-virtual {v1, p0}, Lcom/smartisanos/smengine/Da;->Sb(Z)Z

    move-result p0
    if-nez p0, :projection_bound_result
    invoke-static {v8}, Lcom/smartisanos/launcher/theme/IconIlluminationCompat;->isProjectionTexture(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :projection_bound_result
    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V
    :projection_bound_result
    return p0
.end method

.method public b(ILcom/smartisanos/smengine/a/k;)V
    .locals 1

    .line 8
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/a/k;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v0, p2}, Lcom/smartisanos/smengine/a/k;-><init>(Lcom/smartisanos/smengine/a/k;)V

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    .line 11
    :cond_0
    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/a/k;->f(Lcom/smartisanos/smengine/a/k;)Lcom/smartisanos/smengine/a/k;

    return-void
.end method

.method protected b(Lcom/smartisanos/smengine/y;Z)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/y;->xk()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/f;->c(Lcom/smartisanos/smengine/y;Z)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Lcom/smartisanos/smengine/mymaterial/Material$MaterialException;

    const-string p1, "unknown primitive type"

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/mymaterial/Material$MaterialException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/mymaterial/f;->a(Lcom/smartisanos/smengine/y;Z)V

    :goto_0
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->XV:[Ljava/lang/String;

    aput-object p2, p0, p1

    return-void
.end method

.method protected c(Lcom/smartisanos/smengine/y;Z)V
    .locals 2

    const/16 p0, 0x1403

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/y;->pk()I

    move-result p1

    .line 6
    invoke-static {v0, p1, p0, v1}, Lcom/smartisanos/smengine/P;->glDrawElements(IIII)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/y;->qk()Ljava/nio/ShortBuffer;

    move-result-object p2

    .line 8
    invoke-virtual {p2, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/y;->pk()I

    move-result p1

    .line 10
    invoke-static {v0, p1, p0, p2}, Lcom/smartisanos/smengine/P;->glDrawElements(IIILjava/nio/Buffer;)V

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x31

    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    .line 1
    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/f;->aW:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/f;->_V:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public create()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/smengine/mymaterial/f;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "shader is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/sa;->create()V

    return-void
.end method

.method protected d(ILjava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->_V:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    invoke-virtual {v1, p2}, Lcom/smartisanos/smengine/sa;->Va(Ljava/lang/String;)I

    move-result p2

    aput p2, v0, p1

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->_V:[I

    aget v1, p0, p1

    :cond_0
    return v1
.end method

.method protected e(ILjava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->aW:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    invoke-virtual {v1, p2}, Lcom/smartisanos/smengine/sa;->Wa(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, p1

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->aW:[I

    aget v1, p0, p1

    :cond_0
    if-eq v1, v2, :cond_1

    return v1

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getUniformLocation error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected fb(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    .line 3
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v2

    .line 5
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    neg-float v3, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 8
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    add-double/2addr v5, v7

    double-to-int v5, v5

    add-int/2addr v3, v4

    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v4

    .line 11
    invoke-static {v1, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 12
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    .line 13
    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 14
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6, p0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    int-to-float v1, v1

    .line 16
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v6, v1, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {v6, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v6, v6

    sub-float/2addr v1, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, v1, v7

    if-lez v8, :cond_0

    move v1, v7

    :cond_0
    int-to-float v3, v3

    sub-float/2addr v3, v4

    sub-float/2addr v3, v6

    .line 18
    invoke-virtual {v5, p1, v1, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 19
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    return-object v0
.end method

.method protected gb(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/smartisanos/launcher/data/Constants;->density:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->fb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    .line 5
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x4

    .line 6
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    move-result v3

    .line 10
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 11
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    .line 12
    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 13
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5, p0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    int-to-float v1, v1

    .line 14
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v5, v1, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {v5, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    sub-float/2addr v1, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v1, v6

    if-lez v7, :cond_1

    move v1, v6

    :cond_1
    int-to-float v2, v2

    sub-float/2addr v2, v3

    sub-float/2addr v2, v5

    .line 16
    invoke-virtual {v4, p1, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public h(Lcom/smartisanos/smengine/a/f;)V
    .locals 2

    const/16 v0, 0xe

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/a/f;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/a/f;->e(Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/a/f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/f;-><init>()V

    .line 4
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/a/f;->e(Lcom/smartisanos/smengine/a/f;)Lcom/smartisanos/smengine/a/f;

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected hb(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/IconIlluminationCompat;->projectionFileReadable(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :readable_projection_bundle
    const/4 v0, 0x0
    return-object v0
    :readable_projection_bundle

    .line 1
    invoke-static {p1}, Lcom/smartisanos/smengine/Da;->_a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/smartisanos/smengine/Da;->Ya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->gb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "/data"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/smartisanos/smengine/mymaterial/f;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadbitmap : name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 7
    sget-object p0, Lcom/smartisanos/smengine/mymaterial/f;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", w = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", h = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/IconIlluminationCompat;->isProjectionTexture(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :legacy_missing_bitmap
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/IconIlluminationCompat;->projectionReadFailed(Ljava/lang/String;)V
    const/4 v0, 0x0
    return-object v0
    :legacy_missing_bitmap
    const-string p1, "Textures/1080p/shadow/com.android.settings_8.png"

    .line 8
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->IS_USER:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "_"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/smartisanos/smengine/Da;->g([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->s([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 12
    :cond_3
    invoke-static {p1}, Lcom/smartisanos/smengine/Da;->Za(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->getSinglePageMode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/e/s;->k(II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 14
    :cond_4
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/IconRasterDiagnostics;->recoverMissingGeneratedTexture(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :load_asset_bitmap

    return-object v0

    :load_asset_bitmap
    invoke-static {p1}, Lcom/smartisanos/launcher/xa;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public i(FFFF)V
    .locals 2

    const/16 v0, 0x17

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/a/k;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/k;->set(FFFF)Lcom/smartisanos/smengine/a/k;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/a/k;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public i(IF)V
    .locals 2

    .line 5
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [F

    aput p2, v0, v1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    aput p2, v0, v1

    :goto_0
    return-void
.end method

.method public k(FFF)V
    .locals 2

    const/16 v0, 0x18

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/a/j;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1, p1, p2, p3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    :goto_0
    return-void
.end method

.method public l(FFF)V
    .locals 2

    const/16 v0, 0x16

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/a/j;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1, p2, p3}, Lcom/smartisanos/smengine/a/j;->i(FFF)Lcom/smartisanos/smengine/a/j;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1, p1, p2, p3}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected n(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 2

    const/4 v0, 0x3

    const-string v1, "uCameraViewMat"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p0

    .line 2
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setCameraMatrixToShader(I)V

    return-void
.end method

.method protected o(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 2

    const/16 v0, 0xf

    const-string v1, "uLocalTranslate"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p0

    .line 2
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setLocalTranslateDataToShader(I)V

    return-void
.end method

.method protected p(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "uMVPMat"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p0

    .line 2
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setMVPMatrixToShader(I)V

    return-void
.end method

.method protected q(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 2

    const/4 v0, 0x5

    const-string v1, "uMVPMatArray"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p0

    .line 2
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setMVPMatrixArrayToShader(I)V

    return-void
.end method

.method public r(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->ZV:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method protected r(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "uWorldMat"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p0

    .line 3
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setWorldMatrixToShader(I)V

    return-void
.end method

.method protected rc(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance p0, Lcom/smartisanos/smengine/mymaterial/Material$MaterialException;

    const-string p1, "more texture can not support"

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/mymaterial/Material$MaterialException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p0, 0x84c7

    return p0

    :pswitch_1
    const p0, 0x84c6

    return p0

    :pswitch_2
    const p0, 0x84c5

    return p0

    :pswitch_3
    const p0, 0x84c4

    return p0

    :pswitch_4
    const p0, 0x84c3

    return p0

    :pswitch_5
    const p0, 0x84c2

    return p0

    :pswitch_6
    const p0, 0x84c1

    return p0

    :pswitch_7
    const p0, 0x84c0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public sc(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->kW:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected tc(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->jW:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "uDiffuseMap"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/smengine/sa;->setInt(II)V

    :cond_0
    return-void
.end method

.method protected uc(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->jW:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/16 v0, 0x2a

    const-string v1, "uExtraTex5"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set extra texmap error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 v0, 0x29

    const-string v1, "uExtraTex4"

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x28

    const-string v1, "uExtraTex3"

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x27

    const-string v1, "uExtraTex2"

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_4
    const/16 v0, 0x26

    const-string v1, "uExtraTex1"

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 8
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/smengine/sa;->setInt(II)V

    goto :goto_1

    .line 9
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, " set extratex map location : -1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return-void
.end method

.method protected vc(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->jW:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    const-string v1, "uNormalMap"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/smengine/sa;->setInt(II)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "set normal map error"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected wc(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->jW:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    const-string v1, "uShadowMap"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result v0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/smengine/sa;->setInt(II)V

    :cond_0
    return-void
.end method

.method protected xc(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-nez v0, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "setShadowParam location unknown"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p1, 0x2c

    const-string v1, "uShadowOpacityFactor"

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x2b

    const-string v1, "uShadowLengthFactor"

    .line 4
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x25

    const-string v1, "uShadowRadius"

    .line 5
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x24

    const-string v1, "uShadowRange"

    .line 6
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x23

    const-string v1, "uShadowShortFeather"

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x22

    const-string v1, "uShadowShortStrength"

    .line 8
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x21

    const-string v1, "uShadowShortLength"

    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x20

    const-string v1, "uShadowShortRadius"

    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :pswitch_8
    const/16 p1, 0x1f

    const-string v1, "uShadowLongFeather"

    .line 11
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :pswitch_9
    const/16 p1, 0x1e

    const-string v1, "uShadowLongStrength"

    .line 12
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :pswitch_a
    const/16 p1, 0x1d

    const-string v1, "uShadowLongLength"

    .line 13
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :pswitch_b
    const/16 p1, 0x1c

    const-string v1, "uShadowLongRadius"

    .line 14
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p1

    :goto_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 15
    sget-object p1, Lcom/smartisanos/smengine/mymaterial/f;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShadowParam location == -1 , material = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/smengine/sa;->h(IF)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method protected yc(I)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->sc(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/a/k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShadowShaderFactor error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p1, 0x30

    const-string v1, "uShadowFactor4"

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x2f

    const-string v1, "uShadowFactor3"

    .line 4
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x2e

    const-string v1, "uShadowFactor2"

    .line 5
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x2d

    const-string v1, "uShadowFactor1"

    .line 6
    invoke-virtual {p0, p1, v1}, Lcom/smartisanos/smengine/mymaterial/f;->e(ILjava/lang/String;)I

    move-result p1

    :goto_0
    move v2, p1

    const/4 p1, -0x1

    if-ne v2, p1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v4, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v5, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v6, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual/range {v1 .. v6}, Lcom/smartisanos/smengine/sa;->a(IFFFF)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected projectionTexturesReady()Z
    .locals 3
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->XV:[Ljava/lang/String;
    const/4 v1, 0x0
    aget-object v0, v0, v1
    move-object v2, v0
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/IconIlluminationCompat;->isProjectionTexture(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :projection
    const/4 v0, 0x1
    return v0
    :projection
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/f;->jW:[Z
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/IconIlluminationCompat;->allProjectionLayersBound([Z)Z
    move-result v0
    invoke-static {v2, v0}, Lcom/smartisanos/launcher/theme/IconIlluminationCompat;->traceProjectionBinding(Ljava/lang/String;Z)V
    return v0
.end method
