.class public Lc/a/a/n/a;
.super Ljava/lang/Object;
.source "AnimatedGifEncoder.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Integer;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Ljava/io/OutputStream;

.field private i:Landroid/graphics/Bitmap;

.field private j:[B

.field private k:[B

.field private l:I

.field private m:[B

.field private n:[Z

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/a/a/n/a;->c:Ljava/lang/Integer;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lc/a/a/n/a;->e:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lc/a/a/n/a;->f:I

    .line 5
    iput-boolean v1, p0, Lc/a/a/n/a;->g:Z

    const/16 v2, 0x100

    new-array v2, v2, [Z

    .line 6
    iput-object v2, p0, Lc/a/a/n/a;->n:[Z

    const/4 v2, 0x7

    .line 7
    iput v2, p0, Lc/a/a/n/a;->o:I

    .line 8
    iput v0, p0, Lc/a/a/n/a;->p:I

    .line 9
    iput-boolean v1, p0, Lc/a/a/n/a;->q:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lc/a/a/n/a;->r:Z

    .line 11
    iput-boolean v1, p0, Lc/a/a/n/a;->s:Z

    const/16 v0, 0xa

    .line 12
    iput v0, p0, Lc/a/a/n/a;->t:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 45
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(I)I
    .locals 9

    .line 21
    iget-object v0, p0, Lc/a/a/n/a;->m:[B

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 22
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 24
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/high16 v2, 0x1000000

    .line 25
    iget-object v3, p0, Lc/a/a/n/a;->m:[B

    array-length v3, v3

    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    :goto_0
    if-ge v4, v3, :cond_2

    .line 26
    iget-object v6, p0, Lc/a/a/n/a;->m:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v6, v4

    and-int/lit16 v4, v4, 0xff

    sub-int v4, v0, v4

    add-int/lit8 v8, v7, 0x1

    .line 27
    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    sub-int v7, v1, v7

    .line 28
    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    sub-int v6, p1, v6

    mul-int/2addr v4, v4

    mul-int/2addr v7, v7

    add-int/2addr v4, v7

    mul-int/2addr v6, v6

    add-int/2addr v4, v6

    .line 29
    div-int/lit8 v6, v8, 0x3

    .line 30
    iget-object v7, p0, Lc/a/a/n/a;->n:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_1

    if-ge v4, v5, :cond_1

    move v5, v4

    move v2, v6

    :cond_1
    add-int/lit8 v4, v8, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lc/a/a/n/a;->j:[B

    array-length v1, v0

    .line 2
    div-int/lit8 v2, v1, 0x3

    .line 3
    new-array v3, v2, [B

    iput-object v3, p0, Lc/a/a/n/a;->k:[B

    .line 4
    new-instance v3, Lc/a/a/n/c;

    iget v4, p0, Lc/a/a/n/a;->t:I

    invoke-direct {v3, v0, v1, v4}, Lc/a/a/n/c;-><init>([BII)V

    .line 5
    invoke-virtual {v3}, Lc/a/a/n/c;->d()[B

    move-result-object v0

    iput-object v0, p0, Lc/a/a/n/a;->m:[B

    const/4 v0, 0x0

    move v1, v0

    .line 6
    :goto_0
    iget-object v4, p0, Lc/a/a/n/a;->m:[B

    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 7
    aget-byte v5, v4, v1

    add-int/lit8 v6, v1, 0x2

    .line 8
    aget-byte v7, v4, v6

    aput-byte v7, v4, v1

    .line 9
    aput-byte v5, v4, v6

    .line 10
    iget-object v4, p0, Lc/a/a/n/a;->n:[Z

    div-int/lit8 v5, v1, 0x3

    aput-boolean v0, v4, v5

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    move v1, v0

    move v4, v1

    :goto_1
    if-ge v1, v2, :cond_1

    .line 11
    iget-object v5, p0, Lc/a/a/n/a;->j:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v8, v7, 0x1

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v4, v6, v5}, Lc/a/a/n/c;->b(III)I

    move-result v4

    .line 12
    iget-object v5, p0, Lc/a/a/n/a;->n:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 13
    iget-object v5, p0, Lc/a/a/n/a;->k:[B

    int-to-byte v4, v4

    aput-byte v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    move v4, v8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lc/a/a/n/a;->j:[B

    const/16 v1, 0x8

    .line 15
    iput v1, p0, Lc/a/a/n/a;->l:I

    const/4 v1, 0x7

    .line 16
    iput v1, p0, Lc/a/a/n/a;->o:I

    .line 17
    iget-object v1, p0, Lc/a/a/n/a;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lc/a/a/n/a;->b(I)I

    move-result v0

    iput v0, p0, Lc/a/a/n/a;->d:I

    goto :goto_2

    .line 19
    :cond_2
    iget-boolean v1, p0, Lc/a/a/n/a;->u:Z

    if-eqz v1, :cond_3

    .line 20
    invoke-direct {p0, v0}, Lc/a/a/n/a;->b(I)I

    move-result v0

    iput v0, p0, Lc/a/a/n/a;->d:I

    :cond_3
    :goto_2
    return-void
.end method

.method private c()V
    .locals 11

    .line 1
    iget-object v0, p0, Lc/a/a/n/a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 2
    iget-object v0, p0, Lc/a/a/n/a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 3
    iget v0, p0, Lc/a/a/n/a;->a:I

    if-ne v7, v0, :cond_0

    iget v0, p0, Lc/a/a/n/a;->b:I

    if-eq v8, v0, :cond_1

    .line 4
    :cond_0
    iget v0, p0, Lc/a/a/n/a;->a:I

    iget v1, p0, Lc/a/a/n/a;->b:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 7
    iput-object v0, p0, Lc/a/a/n/a;->i:Landroid/graphics/Bitmap;

    :cond_1
    mul-int v0, v7, v8

    .line 8
    new-array v0, v0, [I

    .line 9
    iget-object v1, p0, Lc/a/a/n/a;->i:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 10
    array-length v1, v0

    const/4 v2, 0x3

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lc/a/a/n/a;->j:[B

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lc/a/a/n/a;->u:Z

    .line 12
    array-length v3, v0

    move v4, v1

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v3, :cond_3

    aget v7, v0, v4

    if-nez v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 13
    :cond_2
    iget-object v8, p0, Lc/a/a/n/a;->j:[B

    add-int/lit8 v9, v6, 0x1

    and-int/lit16 v10, v7, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v6

    add-int/lit8 v6, v9, 0x1

    shr-int/lit8 v10, v7, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    .line 14
    aput-byte v10, v8, v9

    add-int/lit8 v9, v6, 0x1

    shr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 15
    aput-byte v7, v8, v6

    add-int/lit8 v4, v4, 0x1

    move v6, v9

    goto :goto_0

    :cond_3
    mul-int/lit8 v5, v5, 0x64

    int-to-double v3, v5

    .line 16
    array-length v0, v0

    int-to-double v5, v0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_4

    const/4 v1, 0x1

    .line 17
    :cond_4
    iput-boolean v1, p0, Lc/a/a/n/a;->u:Z

    const-string v0, "AnimatedGifEncoder"

    .line 18
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got pixels for frame with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "% transparent pixels"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private c(I)V
    .locals 2

    .line 20
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 21
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0xf9

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 3
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 4
    iget-object v0, p0, Lc/a/a/n/a;->c:Ljava/lang/Integer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc/a/a/n/a;->u:Z

    if-nez v0, :cond_0

    move v0, v2

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v3, v1

    .line 5
    :goto_0
    iget v4, p0, Lc/a/a/n/a;->p:I

    if-ltz v4, :cond_1

    and-int/lit8 v3, v4, 0x7

    :cond_1
    shl-int/lit8 v1, v3, 0x2

    .line 6
    iget-object v3, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    or-int/2addr v1, v2

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write(I)V

    .line 7
    iget v0, p0, Lc/a/a/n/a;->f:I

    invoke-direct {p0, v0}, Lc/a/a/n/a;->c(I)V

    .line 8
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    iget v1, p0, Lc/a/a/n/a;->d:I

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 9
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lc/a/a/n/a;->c(I)V

    .line 3
    invoke-direct {p0, v0}, Lc/a/a/n/a;->c(I)V

    .line 4
    iget v1, p0, Lc/a/a/n/a;->a:I

    invoke-direct {p0, v1}, Lc/a/a/n/a;->c(I)V

    .line 5
    iget v1, p0, Lc/a/a/n/a;->b:I

    invoke-direct {p0, v1}, Lc/a/a/n/a;->c(I)V

    .line 6
    iget-boolean v1, p0, Lc/a/a/n/a;->r:Z

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    iget v1, p0, Lc/a/a/n/a;->o:I

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget v0, p0, Lc/a/a/n/a;->a:I

    invoke-direct {p0, v0}, Lc/a/a/n/a;->c(I)V

    .line 2
    iget v0, p0, Lc/a/a/n/a;->b:I

    invoke-direct {p0, v0}, Lc/a/a/n/a;->c(I)V

    .line 3
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    iget v1, p0, Lc/a/a/n/a;->o:I

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 4
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 5
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 3
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const-string v0, "NETSCAPE2.0"

    .line 4
    invoke-direct {p0, v0}, Lc/a/a/n/a;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 6
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 7
    iget v0, p0, Lc/a/a/n/a;->e:I

    invoke-direct {p0, v0}, Lc/a/a/n/a;->c(I)V

    .line 8
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    iget-object v1, p0, Lc/a/a/n/a;->m:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2
    iget-object v0, p0, Lc/a/a/n/a;->m:[B

    array-length v0, v0

    rsub-int v0, v0, 0x300

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private i()V
    .locals 5

    .line 1
    new-instance v0, Lc/a/a/n/b;

    iget v1, p0, Lc/a/a/n/a;->a:I

    iget v2, p0, Lc/a/a/n/a;->b:I

    iget-object v3, p0, Lc/a/a/n/a;->k:[B

    iget v4, p0, Lc/a/a/n/a;->l:I

    invoke-direct {v0, v1, v2, v3, v4}, Lc/a/a/n/b;-><init>(II[BI)V

    .line 2
    iget-object v1, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lc/a/a/n/b;->b(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lc/a/a/n/a;->f:I

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 33
    iget-boolean v0, p0, Lc/a/a/n/a;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/a/a/n/a;->r:Z

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    iput p1, p0, Lc/a/a/n/a;->a:I

    .line 35
    iput p2, p0, Lc/a/a/n/a;->b:I

    .line 36
    iget p1, p0, Lc/a/a/n/a;->a:I

    const/4 p2, 0x1

    if-ge p1, p2, :cond_1

    const/16 p1, 0x140

    .line 37
    iput p1, p0, Lc/a/a/n/a;->a:I

    .line 38
    :cond_1
    iget p1, p0, Lc/a/a/n/a;->b:I

    if-ge p1, p2, :cond_2

    const/16 p1, 0xf0

    .line 39
    iput p1, p0, Lc/a/a/n/a;->b:I

    .line 40
    :cond_2
    iput-boolean p2, p0, Lc/a/a/n/a;->s:Z

    return-void
.end method

.method public a()Z
    .locals 4

    .line 19
    iget-boolean v0, p0, Lc/a/a/n/a;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 20
    :cond_0
    iput-boolean v1, p0, Lc/a/a/n/a;->g:Z

    const/4 v0, 0x1

    .line 21
    :try_start_0
    iget-object v2, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 22
    iget-object v2, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 23
    iget-boolean v2, p0, Lc/a/a/n/a;->q:Z

    if-eqz v2, :cond_1

    .line 24
    iget-object v2, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v2, v0

    goto :goto_0

    :catch_0
    move v2, v1

    .line 25
    :goto_0
    iput v1, p0, Lc/a/a/n/a;->d:I

    const/4 v3, 0x0

    .line 26
    iput-object v3, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    .line 27
    iput-object v3, p0, Lc/a/a/n/a;->i:Landroid/graphics/Bitmap;

    .line 28
    iput-object v3, p0, Lc/a/a/n/a;->j:[B

    .line 29
    iput-object v3, p0, Lc/a/a/n/a;->k:[B

    .line 30
    iput-object v3, p0, Lc/a/a/n/a;->m:[B

    .line 31
    iput-boolean v1, p0, Lc/a/a/n/a;->q:Z

    .line 32
    iput-boolean v0, p0, Lc/a/a/n/a;->r:Z

    return v2
.end method

.method public a(Landroid/graphics/Bitmap;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2
    iget-boolean v1, p0, Lc/a/a/n/a;->g:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lc/a/a/n/a;->s:Z

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lc/a/a/n/a;->a(II)V

    .line 5
    :cond_1
    iput-object p1, p0, Lc/a/a/n/a;->i:Landroid/graphics/Bitmap;

    .line 6
    invoke-direct {p0}, Lc/a/a/n/a;->c()V

    .line 7
    invoke-direct {p0}, Lc/a/a/n/a;->b()V

    .line 8
    iget-boolean p1, p0, Lc/a/a/n/a;->r:Z

    if-eqz p1, :cond_2

    .line 9
    invoke-direct {p0}, Lc/a/a/n/a;->f()V

    .line 10
    invoke-direct {p0}, Lc/a/a/n/a;->h()V

    .line 11
    iget p1, p0, Lc/a/a/n/a;->e:I

    if-ltz p1, :cond_2

    .line 12
    invoke-direct {p0}, Lc/a/a/n/a;->g()V

    .line 13
    :cond_2
    invoke-direct {p0}, Lc/a/a/n/a;->d()V

    .line 14
    invoke-direct {p0}, Lc/a/a/n/a;->e()V

    .line 15
    iget-boolean p1, p0, Lc/a/a/n/a;->r:Z

    if-nez p1, :cond_3

    .line 16
    invoke-direct {p0}, Lc/a/a/n/a;->h()V

    .line 17
    :cond_3
    invoke-direct {p0}, Lc/a/a/n/a;->i()V

    .line 18
    iput-boolean v0, p0, Lc/a/a/n/a;->r:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :catch_0
    :cond_4
    :goto_0
    return v0
.end method

.method public a(Ljava/io/OutputStream;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 41
    iput-boolean v0, p0, Lc/a/a/n/a;->q:Z

    .line 42
    iput-object p1, p0, Lc/a/a/n/a;->h:Ljava/io/OutputStream;

    :try_start_0
    const-string p1, "GIF89a"

    .line 43
    invoke-direct {p0, p1}, Lc/a/a/n/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 44
    :catch_0
    iput-boolean v0, p0, Lc/a/a/n/a;->g:Z

    return v0
.end method
