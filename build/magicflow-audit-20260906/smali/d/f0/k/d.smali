.class final Ld/f0/k/d;
.super Ljava/lang/Object;
.source "DistinguishedNameParser.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[C


# direct methods
.method constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RFC2253"

    .line 2
    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld/f0/k/d;->a:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Ld/f0/k/d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Ld/f0/k/d;->b:I

    return-void
.end method

.method private a(I)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    .line 19
    iget v1, p0, Ld/f0/k/d;->b:I

    const-string v2, "Malformed DN: "

    if-ge v0, v1, :cond_6

    .line 20
    iget-object v1, p0, Ld/f0/k/d;->g:[C

    aget-char p1, v1, p1

    const/16 v1, 0x46

    const/16 v3, 0x66

    const/16 v4, 0x41

    const/16 v5, 0x39

    const/16 v6, 0x61

    const/16 v7, 0x30

    if-lt p1, v7, :cond_0

    if-gt p1, v5, :cond_0

    sub-int/2addr p1, v7

    goto :goto_0

    :cond_0
    if-lt p1, v6, :cond_1

    if-gt p1, v3, :cond_1

    add-int/lit8 p1, p1, -0x57

    goto :goto_0

    :cond_1
    if-lt p1, v4, :cond_5

    if-gt p1, v1, :cond_5

    add-int/lit8 p1, p1, -0x37

    .line 21
    :goto_0
    iget-object v8, p0, Ld/f0/k/d;->g:[C

    aget-char v0, v8, v0

    if-lt v0, v7, :cond_2

    if-gt v0, v5, :cond_2

    sub-int/2addr v0, v7

    goto :goto_1

    :cond_2
    if-lt v0, v6, :cond_3

    if-gt v0, v3, :cond_3

    add-int/lit8 v0, v0, -0x57

    goto :goto_1

    :cond_3
    if-lt v0, v4, :cond_4

    if-gt v0, v1, :cond_4

    add-int/lit8 v0, v0, -0x37

    :goto_1
    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    return p1

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/f0/k/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/f0/k/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/f0/k/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Ld/f0/k/d;->c:I

    iput v0, p0, Ld/f0/k/d;->d:I

    .line 2
    iput v0, p0, Ld/f0/k/d;->e:I

    .line 3
    :cond_0
    :goto_0
    iget v0, p0, Ld/f0/k/d;->c:I

    iget v1, p0, Ld/f0/k/d;->b:I

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ld/f0/k/d;->g:[C

    iget v2, p0, Ld/f0/k/d;->d:I

    iget v3, p0, Ld/f0/k/d;->e:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 5
    :cond_1
    iget-object v1, p0, Ld/f0/k/d;->g:[C

    aget-char v2, v1, v0

    const/16 v3, 0x2c

    const/16 v4, 0x2b

    const/16 v5, 0x3b

    const/16 v6, 0x20

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    const/16 v5, 0x5c

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_3

    .line 6
    iget v2, p0, Ld/f0/k/d;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ld/f0/k/d;->e:I

    aget-char v3, v1, v0

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 7
    iput v0, p0, Ld/f0/k/d;->c:I

    goto :goto_0

    .line 8
    :cond_2
    iget v0, p0, Ld/f0/k/d;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ld/f0/k/d;->e:I

    invoke-direct {p0}, Ld/f0/k/d;->b()C

    move-result v2

    aput-char v2, v1, v0

    .line 9
    iget v0, p0, Ld/f0/k/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/f0/k/d;->c:I

    goto :goto_0

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ld/f0/k/d;->g:[C

    iget v2, p0, Ld/f0/k/d;->d:I

    iget v3, p0, Ld/f0/k/d;->e:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 11
    :cond_4
    iget v2, p0, Ld/f0/k/d;->e:I

    iput v2, p0, Ld/f0/k/d;->f:I

    add-int/lit8 v0, v0, 0x1

    .line 12
    iput v0, p0, Ld/f0/k/d;->c:I

    add-int/lit8 v0, v2, 0x1

    .line 13
    iput v0, p0, Ld/f0/k/d;->e:I

    aput-char v6, v1, v2

    .line 14
    :goto_1
    iget v0, p0, Ld/f0/k/d;->c:I

    iget v1, p0, Ld/f0/k/d;->b:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Ld/f0/k/d;->g:[C

    aget-char v2, v1, v0

    if-ne v2, v6, :cond_5

    .line 15
    iget v2, p0, Ld/f0/k/d;->e:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Ld/f0/k/d;->e:I

    aput-char v6, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 16
    iput v0, p0, Ld/f0/k/d;->c:I

    goto :goto_1

    .line 17
    :cond_5
    iget v0, p0, Ld/f0/k/d;->c:I

    iget v1, p0, Ld/f0/k/d;->b:I

    if-eq v0, v1, :cond_6

    iget-object v1, p0, Ld/f0/k/d;->g:[C

    aget-char v2, v1, v0

    if-eq v2, v3, :cond_6

    aget-char v2, v1, v0

    if-eq v2, v4, :cond_6

    aget-char v0, v1, v0

    if-ne v0, v5, :cond_0

    .line 18
    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ld/f0/k/d;->g:[C

    iget v2, p0, Ld/f0/k/d;->d:I

    iget v3, p0, Ld/f0/k/d;->f:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private b()C
    .locals 3

    .line 1
    iget v0, p0, Ld/f0/k/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/f0/k/d;->c:I

    .line 2
    iget v0, p0, Ld/f0/k/d;->c:I

    iget v1, p0, Ld/f0/k/d;->b:I

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Ld/f0/k/d;->g:[C

    aget-char v0, v1, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 4
    invoke-direct {p0}, Ld/f0/k/d;->c()C

    move-result v0

    return v0

    .line 5
    :cond_0
    :pswitch_0
    iget-object v0, p0, Ld/f0/k/d;->g:[C

    iget v1, p0, Ld/f0/k/d;->c:I

    aget-char v0, v0, v1

    return v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld/f0/k/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private c()C
    .locals 9

    .line 1
    iget v0, p0, Ld/f0/k/d;->c:I

    invoke-direct {p0, v0}, Ld/f0/k/d;->a(I)I

    move-result v0

    .line 2
    iget v1, p0, Ld/f0/k/d;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ld/f0/k/d;->c:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    int-to-char v0, v0

    return v0

    :cond_0
    const/16 v3, 0xc0

    const/16 v4, 0x3f

    if-lt v0, v3, :cond_7

    const/16 v3, 0xf7

    if-gt v0, v3, :cond_7

    const/16 v3, 0xdf

    if-gt v0, v3, :cond_1

    and-int/lit8 v0, v0, 0x1f

    move v3, v2

    goto :goto_0

    :cond_1
    const/16 v3, 0xef

    if-gt v0, v3, :cond_2

    const/4 v3, 0x2

    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    and-int/lit8 v0, v0, 0x7

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_6

    .line 3
    iget v6, p0, Ld/f0/k/d;->c:I

    add-int/2addr v6, v2

    iput v6, p0, Ld/f0/k/d;->c:I

    .line 4
    iget v6, p0, Ld/f0/k/d;->c:I

    iget v7, p0, Ld/f0/k/d;->b:I

    if-eq v6, v7, :cond_5

    iget-object v7, p0, Ld/f0/k/d;->g:[C

    aget-char v7, v7, v6

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 5
    iput v6, p0, Ld/f0/k/d;->c:I

    .line 6
    iget v6, p0, Ld/f0/k/d;->c:I

    invoke-direct {p0, v6}, Ld/f0/k/d;->a(I)I

    move-result v6

    .line 7
    iget v7, p0, Ld/f0/k/d;->c:I

    add-int/2addr v7, v2

    iput v7, p0, Ld/f0/k/d;->c:I

    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v1, :cond_4

    return v4

    :cond_4
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return v4

    :cond_6
    int-to-char v0, v0

    return v0

    :cond_7
    return v4
.end method

.method private d()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Ld/f0/k/d;->c:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Ld/f0/k/d;->b:I

    const-string v3, "Unexpected end of DN: "

    if-ge v1, v2, :cond_7

    .line 2
    iput v0, p0, Ld/f0/k/d;->d:I

    add-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p0, Ld/f0/k/d;->c:I

    .line 4
    :goto_0
    iget v0, p0, Ld/f0/k/d;->c:I

    iget v1, p0, Ld/f0/k/d;->b:I

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Ld/f0/k/d;->g:[C

    aget-char v2, v1, v0

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_3

    aget-char v2, v1, v0

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_3

    aget-char v2, v1, v0

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    aget-char v2, v1, v0

    const/16 v4, 0x20

    if-ne v2, v4, :cond_1

    .line 6
    iput v0, p0, Ld/f0/k/d;->e:I

    add-int/lit8 v0, v0, 0x1

    .line 7
    iput v0, p0, Ld/f0/k/d;->c:I

    .line 8
    :goto_1
    iget v0, p0, Ld/f0/k/d;->c:I

    iget v1, p0, Ld/f0/k/d;->b:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Ld/f0/k/d;->g:[C

    aget-char v1, v1, v0

    if-ne v1, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/f0/k/d;->c:I

    goto :goto_1

    .line 9
    :cond_1
    aget-char v2, v1, v0

    const/16 v5, 0x41

    if-lt v2, v5, :cond_2

    aget-char v2, v1, v0

    const/16 v5, 0x46

    if-gt v2, v5, :cond_2

    .line 10
    aget-char v2, v1, v0

    add-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 11
    :cond_2
    iget v0, p0, Ld/f0/k/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/f0/k/d;->c:I

    goto :goto_0

    .line 12
    :cond_3
    :goto_2
    iget v0, p0, Ld/f0/k/d;->c:I

    iput v0, p0, Ld/f0/k/d;->e:I

    .line 13
    :cond_4
    iget v0, p0, Ld/f0/k/d;->e:I

    iget v1, p0, Ld/f0/k/d;->d:I

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_6

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_6

    .line 14
    div-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 15
    :goto_3
    array-length v4, v2

    if-ge v3, v4, :cond_5

    .line 16
    invoke-direct {p0, v1}, Ld/f0/k/d;->a(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 17
    :cond_5
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ld/f0/k/d;->g:[C

    iget v3, p0, Ld/f0/k/d;->d:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 18
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld/f0/k/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld/f0/k/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e()Ljava/lang/String;
    .locals 6

    .line 1
    :goto_0
    iget v0, p0, Ld/f0/k/d;->c:I

    iget v1, p0, Ld/f0/k/d;->b:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ld/f0/k/d;->g:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/f0/k/d;->c:I

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Ld/f0/k/d;->c:I

    iget v1, p0, Ld/f0/k/d;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    iput v0, p0, Ld/f0/k/d;->d:I

    add-int/lit8 v0, v0, 0x1

    .line 4
    iput v0, p0, Ld/f0/k/d;->c:I

    .line 5
    :goto_1
    iget v0, p0, Ld/f0/k/d;->c:I

    iget v1, p0, Ld/f0/k/d;->b:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ld/f0/k/d;->g:[C

    aget-char v4, v1, v0

    if-eq v4, v3, :cond_2

    aget-char v1, v1, v0

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/f0/k/d;->c:I

    goto :goto_1

    .line 6
    :cond_2
    iget v0, p0, Ld/f0/k/d;->c:I

    iget v1, p0, Ld/f0/k/d;->b:I

    const-string v4, "Unexpected end of DN: "

    if-ge v0, v1, :cond_b

    .line 7
    iput v0, p0, Ld/f0/k/d;->e:I

    .line 8
    iget-object v1, p0, Ld/f0/k/d;->g:[C

    aget-char v0, v1, v0

    if-ne v0, v2, :cond_5

    .line 9
    :goto_2
    iget v0, p0, Ld/f0/k/d;->c:I

    iget v1, p0, Ld/f0/k/d;->b:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ld/f0/k/d;->g:[C

    aget-char v5, v1, v0

    if-eq v5, v3, :cond_3

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/f0/k/d;->c:I

    goto :goto_2

    .line 10
    :cond_3
    iget-object v0, p0, Ld/f0/k/d;->g:[C

    iget v1, p0, Ld/f0/k/d;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_4

    iget v0, p0, Ld/f0/k/d;->b:I

    if-eq v1, v0, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld/f0/k/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_5
    :goto_3
    iget v0, p0, Ld/f0/k/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/f0/k/d;->c:I

    .line 13
    :goto_4
    iget v0, p0, Ld/f0/k/d;->c:I

    iget v1, p0, Ld/f0/k/d;->b:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Ld/f0/k/d;->g:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/f0/k/d;->c:I

    goto :goto_4

    .line 14
    :cond_6
    iget v0, p0, Ld/f0/k/d;->e:I

    iget v1, p0, Ld/f0/k/d;->d:I

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    if-le v0, v2, :cond_a

    iget-object v0, p0, Ld/f0/k/d;->g:[C

    add-int/lit8 v3, v1, 0x3

    aget-char v3, v0, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_a

    aget-char v3, v0, v1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_7

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_a

    :cond_7
    iget-object v0, p0, Ld/f0/k/d;->g:[C

    iget v1, p0, Ld/f0/k/d;->d:I

    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x49

    if-eq v3, v4, :cond_8

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_a

    :cond_8
    iget-object v0, p0, Ld/f0/k/d;->g:[C

    iget v1, p0, Ld/f0/k/d;->d:I

    add-int/lit8 v3, v1, 0x2

    aget-char v3, v0, v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_9

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_a

    .line 15
    :cond_9
    iget v0, p0, Ld/f0/k/d;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Ld/f0/k/d;->d:I

    .line 16
    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ld/f0/k/d;->g:[C

    iget v2, p0, Ld/f0/k/d;->d:I

    iget v3, p0, Ld/f0/k/d;->e:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 17
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld/f0/k/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Ld/f0/k/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/f0/k/d;->c:I

    .line 2
    iget v0, p0, Ld/f0/k/d;->c:I

    iput v0, p0, Ld/f0/k/d;->d:I

    .line 3
    iget v0, p0, Ld/f0/k/d;->d:I

    iput v0, p0, Ld/f0/k/d;->e:I

    .line 4
    :goto_0
    iget v0, p0, Ld/f0/k/d;->c:I

    iget v1, p0, Ld/f0/k/d;->b:I

    if-eq v0, v1, :cond_3

    .line 5
    iget-object v1, p0, Ld/f0/k/d;->g:[C

    aget-char v2, v1, v0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 6
    iput v0, p0, Ld/f0/k/d;->c:I

    .line 7
    :goto_1
    iget v0, p0, Ld/f0/k/d;->c:I

    iget v1, p0, Ld/f0/k/d;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ld/f0/k/d;->g:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/f0/k/d;->c:I

    goto :goto_1

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ld/f0/k/d;->g:[C

    iget v2, p0, Ld/f0/k/d;->d:I

    iget v3, p0, Ld/f0/k/d;->e:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 9
    :cond_1
    aget-char v2, v1, v0

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2

    .line 10
    iget v0, p0, Ld/f0/k/d;->e:I

    invoke-direct {p0}, Ld/f0/k/d;->b()C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_2

    .line 11
    :cond_2
    iget v2, p0, Ld/f0/k/d;->e:I

    aget-char v0, v1, v0

    aput-char v0, v1, v2

    .line 12
    :goto_2
    iget v0, p0, Ld/f0/k/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/f0/k/d;->c:I

    .line 13
    iget v0, p0, Ld/f0/k/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/f0/k/d;->e:I

    goto :goto_0

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ld/f0/k/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Ld/f0/k/d;->c:I

    .line 26
    iput v0, p0, Ld/f0/k/d;->d:I

    .line 27
    iput v0, p0, Ld/f0/k/d;->e:I

    .line 28
    iput v0, p0, Ld/f0/k/d;->f:I

    .line 29
    iget-object v0, p0, Ld/f0/k/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Ld/f0/k/d;->g:[C

    .line 30
    invoke-direct {p0}, Ld/f0/k/d;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 31
    :cond_0
    :goto_0
    iget v2, p0, Ld/f0/k/d;->c:I

    iget v3, p0, Ld/f0/k/d;->b:I

    if-ne v2, v3, :cond_1

    return-object v1

    .line 32
    :cond_1
    iget-object v3, p0, Ld/f0/k/d;->g:[C

    aget-char v2, v3, v2

    const/16 v3, 0x22

    const/16 v4, 0x3b

    const/16 v5, 0x2c

    const/16 v6, 0x2b

    if-eq v2, v3, :cond_4

    const/16 v3, 0x23

    if-eq v2, v3, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    .line 33
    invoke-direct {p0}, Ld/f0/k/d;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    goto :goto_1

    .line 34
    :cond_3
    invoke-direct {p0}, Ld/f0/k/d;->d()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 35
    :cond_4
    invoke-direct {p0}, Ld/f0/k/d;->f()Ljava/lang/String;

    move-result-object v2

    .line 36
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v2

    .line 37
    :cond_5
    iget v0, p0, Ld/f0/k/d;->c:I

    iget v2, p0, Ld/f0/k/d;->b:I

    if-lt v0, v2, :cond_6

    return-object v1

    .line 38
    :cond_6
    iget-object v2, p0, Ld/f0/k/d;->g:[C

    aget-char v3, v2, v0

    const-string v7, "Malformed DN: "

    if-eq v3, v5, :cond_9

    aget-char v3, v2, v0

    if-ne v3, v4, :cond_7

    goto :goto_2

    .line 39
    :cond_7
    aget-char v0, v2, v0

    if-ne v0, v6, :cond_8

    goto :goto_2

    .line 40
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/f0/k/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_9
    :goto_2
    iget v0, p0, Ld/f0/k/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/f0/k/d;->c:I

    .line 42
    invoke-direct {p0}, Ld/f0/k/d;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    goto :goto_0

    .line 43
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/f0/k/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
