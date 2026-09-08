.class Lc/a/a/n/b;
.super Ljava/lang/Object;
.source "LZWEncoder.java"


# instance fields
.field private a:I

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:[I

.field l:[I

.field m:I

.field n:I

.field o:Z

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:[I

.field v:I

.field w:[B


# direct methods
.method constructor <init>(II[BI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 2
    iput v0, p0, Lc/a/a/n/b;->h:I

    const/16 v0, 0x1000

    .line 3
    iput v0, p0, Lc/a/a/n/b;->j:I

    const/16 v0, 0x138b

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lc/a/a/n/b;->k:[I

    new-array v1, v0, [I

    .line 5
    iput-object v1, p0, Lc/a/a/n/b;->l:[I

    .line 6
    iput v0, p0, Lc/a/a/n/b;->m:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lc/a/a/n/b;->n:I

    .line 8
    iput-boolean v0, p0, Lc/a/a/n/b;->o:Z

    .line 9
    iput v0, p0, Lc/a/a/n/b;->s:I

    .line 10
    iput v0, p0, Lc/a/a/n/b;->t:I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_0

    iput-object v0, p0, Lc/a/a/n/b;->u:[I

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 12
    iput-object v0, p0, Lc/a/a/n/b;->w:[B

    .line 13
    iput p1, p0, Lc/a/a/n/b;->a:I

    .line 14
    iput p2, p0, Lc/a/a/n/b;->b:I

    .line 15
    iput-object p3, p0, Lc/a/a/n/b;->c:[B

    const/4 p1, 0x2

    .line 16
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lc/a/a/n/b;->d:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method private a()I
    .locals 3

    .line 36
    iget v0, p0, Lc/a/a/n/b;->e:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 37
    iput v0, p0, Lc/a/a/n/b;->e:I

    .line 38
    iget-object v0, p0, Lc/a/a/n/b;->c:[B

    iget v1, p0, Lc/a/a/n/b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc/a/a/n/b;->f:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method final a(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    return p1
.end method

.method a(BLjava/io/OutputStream;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/a/a/n/b;->w:[B

    iget v1, p0, Lc/a/a/n/b;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc/a/a/n/b;->v:I

    aput-byte p1, v0, v1

    .line 2
    iget p1, p0, Lc/a/a/n/b;->v:I

    const/16 v0, 0xfe

    if-lt p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lc/a/a/n/b;->c(Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method

.method a(ILjava/io/OutputStream;)V
    .locals 9

    .line 8
    iput p1, p0, Lc/a/a/n/b;->p:I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lc/a/a/n/b;->o:Z

    .line 10
    iget v1, p0, Lc/a/a/n/b;->p:I

    iput v1, p0, Lc/a/a/n/b;->g:I

    .line 11
    iget v1, p0, Lc/a/a/n/b;->g:I

    invoke-virtual {p0, v1}, Lc/a/a/n/b;->a(I)I

    move-result v1

    iput v1, p0, Lc/a/a/n/b;->i:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    shl-int p1, v1, p1

    .line 12
    iput p1, p0, Lc/a/a/n/b;->q:I

    .line 13
    iget p1, p0, Lc/a/a/n/b;->q:I

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lc/a/a/n/b;->r:I

    add-int/lit8 p1, p1, 0x2

    .line 14
    iput p1, p0, Lc/a/a/n/b;->n:I

    .line 15
    iput v0, p0, Lc/a/a/n/b;->v:I

    .line 16
    invoke-direct {p0}, Lc/a/a/n/b;->a()I

    move-result p1

    .line 17
    iget v2, p0, Lc/a/a/n/b;->m:I

    :goto_0
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, v0, 0x8

    .line 18
    iget v2, p0, Lc/a/a/n/b;->m:I

    .line 19
    invoke-virtual {p0, v2}, Lc/a/a/n/b;->b(I)V

    .line 20
    iget v3, p0, Lc/a/a/n/b;->q:I

    invoke-virtual {p0, v3, p2}, Lc/a/a/n/b;->b(ILjava/io/OutputStream;)V

    .line 21
    :goto_1
    invoke-direct {p0}, Lc/a/a/n/b;->a()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 22
    iget v4, p0, Lc/a/a/n/b;->h:I

    shl-int v4, v3, v4

    add-int/2addr v4, p1

    shl-int v5, v3, v0

    xor-int/2addr v5, p1

    .line 23
    iget-object v6, p0, Lc/a/a/n/b;->k:[I

    aget v7, v6, v5

    if-ne v7, v4, :cond_1

    .line 24
    iget-object p1, p0, Lc/a/a/n/b;->l:[I

    aget p1, p1, v5

    goto :goto_1

    .line 25
    :cond_1
    aget v6, v6, v5

    if-ltz v6, :cond_5

    sub-int v6, v2, v5

    if-nez v5, :cond_2

    move v6, v1

    :cond_2
    sub-int/2addr v5, v6

    if-gez v5, :cond_3

    add-int/2addr v5, v2

    .line 26
    :cond_3
    iget-object v7, p0, Lc/a/a/n/b;->k:[I

    aget v8, v7, v5

    if-ne v8, v4, :cond_4

    .line 27
    iget-object p1, p0, Lc/a/a/n/b;->l:[I

    aget p1, p1, v5

    goto :goto_1

    .line 28
    :cond_4
    aget v7, v7, v5

    if-gez v7, :cond_2

    .line 29
    :cond_5
    invoke-virtual {p0, p1, p2}, Lc/a/a/n/b;->b(ILjava/io/OutputStream;)V

    .line 30
    iget p1, p0, Lc/a/a/n/b;->n:I

    iget v6, p0, Lc/a/a/n/b;->j:I

    if-ge p1, v6, :cond_6

    .line 31
    iget-object v6, p0, Lc/a/a/n/b;->l:[I

    add-int/lit8 v7, p1, 0x1

    iput v7, p0, Lc/a/a/n/b;->n:I

    aput p1, v6, v5

    .line 32
    iget-object p1, p0, Lc/a/a/n/b;->k:[I

    aput v4, p1, v5

    goto :goto_2

    .line 33
    :cond_6
    invoke-virtual {p0, p2}, Lc/a/a/n/b;->a(Ljava/io/OutputStream;)V

    :goto_2
    move p1, v3

    goto :goto_1

    .line 34
    :cond_7
    invoke-virtual {p0, p1, p2}, Lc/a/a/n/b;->b(ILjava/io/OutputStream;)V

    .line 35
    iget p1, p0, Lc/a/a/n/b;->r:I

    invoke-virtual {p0, p1, p2}, Lc/a/a/n/b;->b(ILjava/io/OutputStream;)V

    return-void
.end method

.method a(Ljava/io/OutputStream;)V
    .locals 2

    .line 4
    iget v0, p0, Lc/a/a/n/b;->m:I

    invoke-virtual {p0, v0}, Lc/a/a/n/b;->b(I)V

    .line 5
    iget v0, p0, Lc/a/a/n/b;->q:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lc/a/a/n/b;->n:I

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lc/a/a/n/b;->o:Z

    .line 7
    invoke-virtual {p0, v0, p1}, Lc/a/a/n/b;->b(ILjava/io/OutputStream;)V

    return-void
.end method

.method b(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1
    iget-object v1, p0, Lc/a/a/n/b;->k:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(ILjava/io/OutputStream;)V
    .locals 3

    .line 7
    iget v0, p0, Lc/a/a/n/b;->s:I

    iget-object v1, p0, Lc/a/a/n/b;->u:[I

    iget v2, p0, Lc/a/a/n/b;->t:I

    aget v1, v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lc/a/a/n/b;->s:I

    if-lez v2, :cond_0

    .line 8
    iget v0, p0, Lc/a/a/n/b;->s:I

    shl-int v1, p1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lc/a/a/n/b;->s:I

    goto :goto_0

    .line 9
    :cond_0
    iput p1, p0, Lc/a/a/n/b;->s:I

    .line 10
    :goto_0
    iget v0, p0, Lc/a/a/n/b;->t:I

    iget v1, p0, Lc/a/a/n/b;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lc/a/a/n/b;->t:I

    .line 11
    :goto_1
    iget v0, p0, Lc/a/a/n/b;->t:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 12
    iget v0, p0, Lc/a/a/n/b;->s:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lc/a/a/n/b;->a(BLjava/io/OutputStream;)V

    .line 13
    iget v0, p0, Lc/a/a/n/b;->s:I

    shr-int/2addr v0, v1

    iput v0, p0, Lc/a/a/n/b;->s:I

    .line 14
    iget v0, p0, Lc/a/a/n/b;->t:I

    sub-int/2addr v0, v1

    iput v0, p0, Lc/a/a/n/b;->t:I

    goto :goto_1

    .line 15
    :cond_1
    iget v0, p0, Lc/a/a/n/b;->n:I

    iget v2, p0, Lc/a/a/n/b;->i:I

    if-gt v0, v2, :cond_2

    iget-boolean v0, p0, Lc/a/a/n/b;->o:Z

    if-eqz v0, :cond_5

    .line 16
    :cond_2
    iget-boolean v0, p0, Lc/a/a/n/b;->o:Z

    if-eqz v0, :cond_3

    .line 17
    iget v0, p0, Lc/a/a/n/b;->p:I

    iput v0, p0, Lc/a/a/n/b;->g:I

    invoke-virtual {p0, v0}, Lc/a/a/n/b;->a(I)I

    move-result v0

    iput v0, p0, Lc/a/a/n/b;->i:I

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lc/a/a/n/b;->o:Z

    goto :goto_2

    .line 19
    :cond_3
    iget v0, p0, Lc/a/a/n/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/a/a/n/b;->g:I

    .line 20
    iget v0, p0, Lc/a/a/n/b;->g:I

    iget v2, p0, Lc/a/a/n/b;->h:I

    if-ne v0, v2, :cond_4

    .line 21
    iget v0, p0, Lc/a/a/n/b;->j:I

    iput v0, p0, Lc/a/a/n/b;->i:I

    goto :goto_2

    .line 22
    :cond_4
    invoke-virtual {p0, v0}, Lc/a/a/n/b;->a(I)I

    move-result v0

    iput v0, p0, Lc/a/a/n/b;->i:I

    .line 23
    :cond_5
    :goto_2
    iget v0, p0, Lc/a/a/n/b;->r:I

    if-ne p1, v0, :cond_7

    .line 24
    :goto_3
    iget p1, p0, Lc/a/a/n/b;->t:I

    if-lez p1, :cond_6

    .line 25
    iget p1, p0, Lc/a/a/n/b;->s:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1, p2}, Lc/a/a/n/b;->a(BLjava/io/OutputStream;)V

    .line 26
    iget p1, p0, Lc/a/a/n/b;->s:I

    shr-int/2addr p1, v1

    iput p1, p0, Lc/a/a/n/b;->s:I

    .line 27
    iget p1, p0, Lc/a/a/n/b;->t:I

    sub-int/2addr p1, v1

    iput p1, p0, Lc/a/a/n/b;->t:I

    goto :goto_3

    .line 28
    :cond_6
    invoke-virtual {p0, p2}, Lc/a/a/n/b;->c(Ljava/io/OutputStream;)V

    :cond_7
    return-void
.end method

.method b(Ljava/io/OutputStream;)V
    .locals 2

    .line 2
    iget v0, p0, Lc/a/a/n/b;->d:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 3
    iget v0, p0, Lc/a/a/n/b;->a:I

    iget v1, p0, Lc/a/a/n/b;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Lc/a/a/n/b;->e:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lc/a/a/n/b;->f:I

    .line 5
    iget v1, p0, Lc/a/a/n/b;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p1}, Lc/a/a/n/b;->a(ILjava/io/OutputStream;)V

    .line 6
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method c(Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    iget v0, p0, Lc/a/a/n/b;->v:I

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 3
    iget-object v0, p0, Lc/a/a/n/b;->w:[B

    iget v1, p0, Lc/a/a/n/b;->v:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iput v2, p0, Lc/a/a/n/b;->v:I

    :cond_0
    return-void
.end method
