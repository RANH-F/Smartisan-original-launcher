.class public Lc/a/a/m/a;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/m/a$a;
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/String; = "a"

.field private static final p:Landroid/graphics/Bitmap$Config;


# instance fields
.field private a:[I

.field private b:Ljava/nio/ByteBuffer;

.field private final c:[B

.field private d:[S

.field private e:[B

.field private f:[B

.field private g:[B

.field private h:[I

.field private i:I

.field private j:Lc/a/a/m/c;

.field private k:Lc/a/a/m/a$a;

.field private l:Landroid/graphics/Bitmap;

.field private m:Z

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lc/a/a/m/a;->p:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lc/a/a/m/a$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lc/a/a/m/a;->c:[B

    .line 3
    iput-object p1, p0, Lc/a/a/m/a;->k:Lc/a/a/m/a$a;

    .line 4
    new-instance p1, Lc/a/a/m/c;

    invoke-direct {p1}, Lc/a/a/m/c;-><init>()V

    iput-object p1, p0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    return-void
.end method

.method private a(Lc/a/a/m/b;Lc/a/a/m/b;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 16
    iget-object v3, v0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    iget v12, v3, Lc/a/a/m/c;->f:I

    .line 17
    iget v13, v3, Lc/a/a/m/c;->g:I

    .line 18
    iget-object v14, v0, Lc/a/a/m/a;->h:[I

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v11, 0x2

    if-eqz v2, :cond_2

    .line 19
    iget v2, v2, Lc/a/a/m/b;->g:I

    if-lez v2, :cond_2

    if-ne v2, v11, :cond_1

    .line 20
    iget-boolean v2, v1, Lc/a/a/m/b;->f:Z

    if-nez v2, :cond_0

    .line 21
    iget v2, v3, Lc/a/a/m/c;->l:I

    goto :goto_0

    :cond_0
    move/from16 v2, v16

    .line 22
    :goto_0
    invoke-static {v14, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_1

    :cond_1
    if-ne v2, v15, :cond_2

    .line 23
    iget-object v4, v0, Lc/a/a/m/a;->l:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v14

    move v7, v12

    move v10, v12

    move v2, v11

    move v11, v13

    .line 24
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v11

    .line 25
    :goto_2
    invoke-direct/range {p0 .. p1}, Lc/a/a/m/a;->a(Lc/a/a/m/b;)V

    const/16 v3, 0x8

    const/4 v11, 0x1

    move v6, v3

    move v5, v11

    move/from16 v3, v16

    move v4, v3

    .line 26
    :goto_3
    iget v7, v1, Lc/a/a/m/b;->d:I

    if-ge v3, v7, :cond_b

    .line 27
    iget-boolean v8, v1, Lc/a/a/m/b;->e:Z

    if-eqz v8, :cond_7

    const/4 v8, 0x4

    if-lt v4, v7, :cond_6

    add-int/lit8 v5, v5, 0x1

    if-eq v5, v2, :cond_5

    if-eq v5, v15, :cond_4

    if-eq v5, v8, :cond_3

    goto :goto_4

    :cond_3
    move v6, v2

    move v4, v11

    goto :goto_4

    :cond_4
    move v4, v2

    move v6, v8

    goto :goto_4

    :cond_5
    move v4, v8

    :cond_6
    :goto_4
    add-int v7, v4, v6

    goto :goto_5

    :cond_7
    move v7, v4

    move v4, v3

    .line 28
    :goto_5
    iget v8, v1, Lc/a/a/m/b;->b:I

    add-int/2addr v4, v8

    .line 29
    iget-object v8, v0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    iget v9, v8, Lc/a/a/m/c;->g:I

    if-ge v4, v9, :cond_a

    .line 30
    iget v8, v8, Lc/a/a/m/c;->f:I

    mul-int/2addr v4, v8

    .line 31
    iget v9, v1, Lc/a/a/m/b;->a:I

    add-int/2addr v9, v4

    .line 32
    iget v10, v1, Lc/a/a/m/b;->c:I

    add-int/2addr v10, v9

    add-int v2, v4, v8

    if-ge v2, v10, :cond_8

    add-int v10, v4, v8

    .line 33
    :cond_8
    iget v2, v1, Lc/a/a/m/b;->c:I

    mul-int/2addr v2, v3

    :goto_6
    if-ge v9, v10, :cond_a

    .line 34
    iget-object v4, v0, Lc/a/a/m/a;->g:[B

    add-int/lit8 v8, v2, 0x1

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    .line 35
    iget-object v4, v0, Lc/a/a/m/a;->a:[I

    aget v2, v4, v2

    if-eqz v2, :cond_9

    .line 36
    aput v2, v14, v9

    :cond_9
    add-int/lit8 v9, v9, 0x1

    move v2, v8

    goto :goto_6

    :cond_a
    add-int/lit8 v3, v3, 0x1

    move v4, v7

    const/4 v2, 0x2

    goto :goto_3

    .line 37
    :cond_b
    iget-boolean v2, v0, Lc/a/a/m/a;->m:Z

    if-eqz v2, :cond_e

    iget v1, v1, Lc/a/a/m/b;->g:I

    if-eqz v1, :cond_c

    if-ne v1, v11, :cond_e

    .line 38
    :cond_c
    iget-object v1, v0, Lc/a/a/m/a;->l:Landroid/graphics/Bitmap;

    if-nez v1, :cond_d

    .line 39
    invoke-direct/range {p0 .. p0}, Lc/a/a/m/a;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lc/a/a/m/a;->l:Landroid/graphics/Bitmap;

    .line 40
    :cond_d
    iget-object v4, v0, Lc/a/a/m/a;->l:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v14

    move v7, v12

    move v10, v12

    move v11, v13

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 41
    :cond_e
    invoke-direct/range {p0 .. p0}, Lc/a/a/m/a;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, v14

    move v7, v12

    move v10, v12

    move v11, v13

    .line 42
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v1
.end method

.method private static a(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_0
    return-void
.end method

.method private a(Lc/a/a/m/b;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    .line 43
    iget-object v2, v0, Lc/a/a/m/a;->b:Ljava/nio/ByteBuffer;

    iget v3, v1, Lc/a/a/m/b;->j:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    if-nez v1, :cond_1

    .line 44
    iget-object v1, v0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    iget v2, v1, Lc/a/a/m/c;->f:I

    iget v1, v1, Lc/a/a/m/c;->g:I

    goto :goto_0

    :cond_1
    iget v2, v1, Lc/a/a/m/b;->c:I

    iget v1, v1, Lc/a/a/m/b;->d:I

    :goto_0
    mul-int/2addr v2, v1

    .line 45
    iget-object v1, v0, Lc/a/a/m/a;->g:[B

    if-eqz v1, :cond_2

    array-length v1, v1

    if-ge v1, v2, :cond_3

    .line 46
    :cond_2
    new-array v1, v2, [B

    iput-object v1, v0, Lc/a/a/m/a;->g:[B

    .line 47
    :cond_3
    iget-object v1, v0, Lc/a/a/m/a;->d:[S

    const/16 v3, 0x1000

    if-nez v1, :cond_4

    new-array v1, v3, [S

    .line 48
    iput-object v1, v0, Lc/a/a/m/a;->d:[S

    .line 49
    :cond_4
    iget-object v1, v0, Lc/a/a/m/a;->e:[B

    if-nez v1, :cond_5

    new-array v1, v3, [B

    .line 50
    iput-object v1, v0, Lc/a/a/m/a;->e:[B

    .line 51
    :cond_5
    iget-object v1, v0, Lc/a/a/m/a;->f:[B

    if-nez v1, :cond_6

    const/16 v1, 0x1001

    new-array v1, v1, [B

    .line 52
    iput-object v1, v0, Lc/a/a/m/a;->f:[B

    .line 53
    :cond_6
    invoke-direct/range {p0 .. p0}, Lc/a/a/m/a;->i()I

    move-result v1

    const/4 v4, 0x1

    shl-int v5, v4, v1

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v5, 0x2

    add-int/2addr v1, v4

    shl-int v8, v4, v1

    sub-int/2addr v8, v4

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v5, :cond_7

    .line 54
    iget-object v11, v0, Lc/a/a/m/a;->d:[S

    aput-short v9, v11, v10

    .line 55
    iget-object v11, v0, Lc/a/a/m/a;->e:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    const/4 v10, -0x1

    move/from16 v21, v1

    move/from16 v19, v7

    move/from16 v20, v8

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v22, v10

    :goto_2
    if-ge v11, v2, :cond_14

    const/4 v9, 0x3

    if-nez v12, :cond_9

    .line 56
    invoke-direct/range {p0 .. p0}, Lc/a/a/m/a;->j()I

    move-result v12

    if-gtz v12, :cond_8

    .line 57
    iput v9, v0, Lc/a/a/m/a;->n:I

    goto/16 :goto_a

    :cond_8
    const/4 v14, 0x0

    .line 58
    :cond_9
    iget-object v3, v0, Lc/a/a/m/a;->c:[B

    aget-byte v3, v3, v14

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v15

    add-int/2addr v13, v3

    add-int/lit8 v15, v15, 0x8

    add-int/2addr v14, v4

    add-int/2addr v12, v10

    move/from16 v23, v17

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v26, v16

    move/from16 v16, v11

    move/from16 v11, v19

    move/from16 v19, v18

    move/from16 v18, v26

    :goto_3
    if-lt v15, v3, :cond_13

    and-int v10, v13, v20

    shr-int/2addr v13, v3

    sub-int/2addr v15, v3

    if-ne v10, v5, :cond_a

    move v3, v1

    move v11, v7

    move/from16 v20, v8

    const/4 v4, -0x1

    :goto_4
    const/4 v10, -0x1

    goto :goto_3

    :cond_a
    if-le v10, v11, :cond_b

    .line 59
    iput v9, v0, Lc/a/a/m/a;->n:I

    goto :goto_5

    :cond_b
    if-ne v10, v6, :cond_c

    :goto_5
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v17, v23

    const/16 v3, 0x1000

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    goto/16 :goto_9

    :cond_c
    const/4 v9, -0x1

    if-ne v4, v9, :cond_d

    .line 60
    iget-object v4, v0, Lc/a/a/m/a;->f:[B

    add-int/lit8 v21, v19, 0x1

    iget-object v9, v0, Lc/a/a/m/a;->e:[B

    aget-byte v9, v9, v10

    aput-byte v9, v4, v19

    move v4, v10

    move/from16 v23, v4

    move/from16 v19, v21

    const/4 v9, 0x3

    goto :goto_4

    :cond_d
    if-lt v10, v11, :cond_e

    .line 61
    iget-object v9, v0, Lc/a/a/m/a;->f:[B

    add-int/lit8 v21, v19, 0x1

    move/from16 v24, v1

    move/from16 v1, v23

    int-to-byte v1, v1

    aput-byte v1, v9, v19

    move v1, v4

    move/from16 v19, v21

    goto :goto_6

    :cond_e
    move/from16 v24, v1

    move v1, v10

    :goto_6
    if-lt v1, v5, :cond_f

    .line 62
    iget-object v9, v0, Lc/a/a/m/a;->f:[B

    add-int/lit8 v21, v19, 0x1

    move/from16 v23, v5

    iget-object v5, v0, Lc/a/a/m/a;->e:[B

    aget-byte v5, v5, v1

    aput-byte v5, v9, v19

    .line 63
    iget-object v5, v0, Lc/a/a/m/a;->d:[S

    aget-short v1, v5, v1

    move/from16 v19, v21

    move/from16 v5, v23

    goto :goto_6

    :cond_f
    move/from16 v23, v5

    .line 64
    iget-object v5, v0, Lc/a/a/m/a;->e:[B

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    .line 65
    iget-object v9, v0, Lc/a/a/m/a;->f:[B

    add-int/lit8 v21, v19, 0x1

    move/from16 v25, v6

    int-to-byte v6, v1

    aput-byte v6, v9, v19

    const/16 v9, 0x1000

    if-ge v11, v9, :cond_10

    .line 66
    iget-object v9, v0, Lc/a/a/m/a;->d:[S

    int-to-short v4, v4

    aput-short v4, v9, v11

    .line 67
    aput-byte v6, v5, v11

    add-int/lit8 v11, v11, 0x1

    and-int v4, v11, v20

    const/16 v5, 0x1000

    if-nez v4, :cond_11

    if-ge v11, v5, :cond_11

    add-int/lit8 v3, v3, 0x1

    add-int v20, v20, v11

    goto :goto_7

    :cond_10
    move v5, v9

    :cond_11
    :goto_7
    move/from16 v19, v21

    :goto_8
    if-lez v19, :cond_12

    add-int/lit8 v19, v19, -0x1

    .line 68
    iget-object v4, v0, Lc/a/a/m/a;->g:[B

    add-int/lit8 v6, v18, 0x1

    iget-object v9, v0, Lc/a/a/m/a;->f:[B

    aget-byte v9, v9, v19

    aput-byte v9, v4, v18

    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v6

    goto :goto_8

    :cond_12
    move v4, v10

    move/from16 v5, v23

    move/from16 v6, v25

    const/4 v9, 0x3

    const/4 v10, -0x1

    move/from16 v23, v1

    move/from16 v1, v24

    goto/16 :goto_3

    :cond_13
    move/from16 v24, v1

    move/from16 v1, v23

    move/from16 v17, v1

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v1, v24

    const/16 v3, 0x1000

    const/4 v4, 0x1

    const/4 v9, 0x0

    :goto_9
    move/from16 v26, v19

    move/from16 v19, v11

    move/from16 v11, v16

    move/from16 v16, v18

    move/from16 v18, v26

    goto/16 :goto_2

    :cond_14
    :goto_a
    move/from16 v1, v16

    :goto_b
    if-ge v1, v2, :cond_15

    .line 69
    iget-object v3, v0, Lc/a/a/m/a;->g:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method

.method private h()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lc/a/a/m/a;->k:Lc/a/a/m/a$a;

    iget-object v1, p0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    iget v2, v1, Lc/a/a/m/c;->f:I

    iget v1, v1, Lc/a/a/m/c;->g:I

    sget-object v3, Lc/a/a/m/a;->p:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v2, v1, v3}, Lc/a/a/m/a$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    iget v1, v0, Lc/a/a/m/c;->f:I

    iget v0, v0, Lc/a/a/m/c;->g:I

    sget-object v2, Lc/a/a/m/a;->p:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lc/a/a/m/a;->a(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private i()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/a/a/m/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lc/a/a/m/a;->n:I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j()I
    .locals 5

    .line 1
    invoke-direct {p0}, Lc/a/a/m/a;->i()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    :goto_0
    if-ge v1, v0, :cond_0

    sub-int v2, v0, v1

    .line 2
    :try_start_0
    iget-object v3, p0, Lc/a/a/m/a;->b:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lc/a/a/m/a;->c:[B

    invoke-virtual {v3, v4, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v2, Lc/a/a/m/a;->o:Ljava/lang/String;

    const-string v3, "Error Reading Block"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lc/a/a/m/a;->n:I

    :cond_0
    return v1
.end method


# virtual methods
.method public a(I)I
    .locals 2

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    iget v1, v0, Lc/a/a/m/c;->c:I

    if-ge p1, v1, :cond_0

    .line 3
    iget-object v0, v0, Lc/a/a/m/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/m/b;

    iget p1, p1, Lc/a/a/m/b;->i:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public a()V
    .locals 2

    .line 1
    iget v0, p0, Lc/a/a/m/a;->i:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    iget v1, v1, Lc/a/a/m/c;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lc/a/a/m/a;->i:I

    return-void
.end method

.method public a(Lc/a/a/m/c;[B)V
    .locals 2

    .line 4
    iput-object p1, p0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lc/a/a/m/a;->n:I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lc/a/a/m/a;->i:I

    .line 7
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lc/a/a/m/a;->b:Ljava/nio/ByteBuffer;

    .line 8
    iget-object p2, p0, Lc/a/a/m/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 9
    iget-object p2, p0, Lc/a/a/m/a;->b:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    iput-boolean v0, p0, Lc/a/a/m/a;->m:Z

    .line 11
    iget-object p2, p1, Lc/a/a/m/c;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/m/b;

    .line 12
    iget v0, v0, Lc/a/a/m/b;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lc/a/a/m/a;->m:Z

    .line 14
    :cond_1
    iget p2, p1, Lc/a/a/m/c;->f:I

    iget p1, p1, Lc/a/a/m/c;->g:I

    mul-int v0, p2, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lc/a/a/m/a;->g:[B

    mul-int/2addr p2, p1

    .line 15
    new-array p1, p2, [I

    iput-object p1, p0, Lc/a/a/m/a;->h:[I

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    .line 2
    iput-object v0, p0, Lc/a/a/m/a;->g:[B

    .line 3
    iput-object v0, p0, Lc/a/a/m/a;->h:[I

    .line 4
    iget-object v1, p0, Lc/a/a/m/a;->l:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lc/a/a/m/a;->k:Lc/a/a/m/a$a;

    invoke-interface {v2, v1}, Lc/a/a/m/a$a;->a(Landroid/graphics/Bitmap;)V

    .line 6
    :cond_0
    iput-object v0, p0, Lc/a/a/m/a;->l:Landroid/graphics/Bitmap;

    .line 7
    iput-object v0, p0, Lc/a/a/m/a;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lc/a/a/m/a;->i:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    iget v0, v0, Lc/a/a/m/c;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    iget v0, v0, Lc/a/a/m/c;->m:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    iget v0, v0, Lc/a/a/m/c;->c:I

    if-lez v0, :cond_1

    iget v0, p0, Lc/a/a/m/a;->i:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lc/a/a/m/a;->a(I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized g()Landroid/graphics/Bitmap;
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    iget v0, v0, Lc/a/a/m/c;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lc/a/a/m/a;->i:I

    if-gez v0, :cond_2

    .line 2
    :cond_0
    sget-object v0, Lc/a/a/m/a;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lc/a/a/m/a;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to decode frame, frameCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    iget v4, v4, Lc/a/a/m/c;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " framePointer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lc/a/a/m/a;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    iput v2, p0, Lc/a/a/m/a;->n:I

    .line 5
    :cond_2
    iget v0, p0, Lc/a/a/m/a;->n:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b

    iget v0, p0, Lc/a/a/m/a;->n:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lc/a/a/m/a;->n:I

    .line 7
    iget-object v4, p0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    iget-object v4, v4, Lc/a/a/m/c;->e:Ljava/util/List;

    iget v5, p0, Lc/a/a/m/a;->i:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/a/a/m/b;

    .line 8
    iget v5, p0, Lc/a/a/m/a;->i:I

    sub-int/2addr v5, v2

    if-ltz v5, :cond_4

    .line 9
    iget-object v6, p0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    iget-object v6, v6, Lc/a/a/m/c;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/a/a/m/b;

    goto :goto_0

    :cond_4
    move-object v5, v3

    .line 10
    :goto_0
    iget-object v6, v4, Lc/a/a/m/b;->k:[I

    if-nez v6, :cond_5

    .line 11
    iget-object v6, p0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    iget-object v6, v6, Lc/a/a/m/c;->a:[I

    iput-object v6, p0, Lc/a/a/m/a;->a:[I

    goto :goto_1

    .line 12
    :cond_5
    iget-object v6, v4, Lc/a/a/m/b;->k:[I

    iput-object v6, p0, Lc/a/a/m/a;->a:[I

    .line 13
    iget-object v6, p0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    iget v6, v6, Lc/a/a/m/c;->j:I

    iget v7, v4, Lc/a/a/m/b;->h:I

    if-ne v6, v7, :cond_6

    .line 14
    iget-object v6, p0, Lc/a/a/m/a;->j:Lc/a/a/m/c;

    iput v0, v6, Lc/a/a/m/c;->l:I

    .line 15
    :cond_6
    :goto_1
    iget-boolean v6, v4, Lc/a/a/m/b;->f:Z

    if-eqz v6, :cond_7

    .line 16
    iget-object v6, p0, Lc/a/a/m/a;->a:[I

    iget v7, v4, Lc/a/a/m/b;->h:I

    aget v6, v6, v7

    .line 17
    iget-object v7, p0, Lc/a/a/m/a;->a:[I

    iget v8, v4, Lc/a/a/m/b;->h:I

    aput v0, v7, v8

    move v0, v6

    .line 18
    :cond_7
    iget-object v6, p0, Lc/a/a/m/a;->a:[I

    if-nez v6, :cond_9

    .line 19
    sget-object v0, Lc/a/a/m/a;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    sget-object v0, Lc/a/a/m/a;->o:Ljava/lang/String;

    const-string v1, "No Valid Color Table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_8
    iput v2, p0, Lc/a/a/m/a;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    return-object v3

    .line 23
    :cond_9
    :try_start_1
    invoke-direct {p0, v4, v5}, Lc/a/a/m/a;->a(Lc/a/a/m/b;Lc/a/a/m/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 24
    iget-boolean v2, v4, Lc/a/a/m/b;->f:Z

    if-eqz v2, :cond_a

    .line 25
    iget-object v2, p0, Lc/a/a/m/a;->a:[I

    iget v3, v4, Lc/a/a/m/b;->h:I

    aput v0, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :cond_a
    monitor-exit p0

    return-object v1

    .line 27
    :cond_b
    :goto_2
    :try_start_2
    sget-object v0, Lc/a/a/m/a;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 28
    sget-object v0, Lc/a/a/m/a;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode frame, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lc/a/a/m/a;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :cond_c
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
