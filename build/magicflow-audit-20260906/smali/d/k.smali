.class public final Ld/k;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/k$a;
    }
.end annotation


# static fields
.field private static final e:[Ld/h;

.field public static final f:Ld/k;

.field public static final g:Ld/k;


# instance fields
.field final a:Z

.field final b:Z

.field final c:[Ljava/lang/String;

.field final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0xf

    new-array v0, v0, [Ld/h;

    .line 1
    sget-object v1, Ld/h;->m:Ld/h;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ld/h;->o:Ld/h;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Ld/h;->n:Ld/h;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Ld/h;->p:Ld/h;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Ld/h;->r:Ld/h;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Ld/h;->q:Ld/h;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Ld/h;->i:Ld/h;

    const/4 v7, 0x6

    aput-object v1, v0, v7

    sget-object v1, Ld/h;->k:Ld/h;

    const/4 v7, 0x7

    aput-object v1, v0, v7

    sget-object v1, Ld/h;->j:Ld/h;

    const/16 v7, 0x8

    aput-object v1, v0, v7

    sget-object v1, Ld/h;->l:Ld/h;

    const/16 v7, 0x9

    aput-object v1, v0, v7

    sget-object v1, Ld/h;->g:Ld/h;

    const/16 v7, 0xa

    aput-object v1, v0, v7

    sget-object v1, Ld/h;->h:Ld/h;

    const/16 v7, 0xb

    aput-object v1, v0, v7

    sget-object v1, Ld/h;->e:Ld/h;

    const/16 v7, 0xc

    aput-object v1, v0, v7

    sget-object v1, Ld/h;->f:Ld/h;

    const/16 v7, 0xd

    aput-object v1, v0, v7

    sget-object v1, Ld/h;->d:Ld/h;

    const/16 v7, 0xe

    aput-object v1, v0, v7

    sput-object v0, Ld/k;->e:[Ld/h;

    .line 2
    new-instance v0, Ld/k$a;

    invoke-direct {v0, v3}, Ld/k$a;-><init>(Z)V

    sget-object v1, Ld/k;->e:[Ld/h;

    .line 3
    invoke-virtual {v0, v1}, Ld/k$a;->a([Ld/h;)Ld/k$a;

    new-array v1, v6, [Ld/d0;

    sget-object v6, Ld/d0;->b:Ld/d0;

    aput-object v6, v1, v2

    sget-object v6, Ld/d0;->c:Ld/d0;

    aput-object v6, v1, v3

    sget-object v6, Ld/d0;->d:Ld/d0;

    aput-object v6, v1, v4

    sget-object v4, Ld/d0;->e:Ld/d0;

    aput-object v4, v1, v5

    .line 4
    invoke-virtual {v0, v1}, Ld/k$a;->a([Ld/d0;)Ld/k$a;

    .line 5
    invoke-virtual {v0, v3}, Ld/k$a;->a(Z)Ld/k$a;

    .line 6
    invoke-virtual {v0}, Ld/k$a;->a()Ld/k;

    move-result-object v0

    sput-object v0, Ld/k;->f:Ld/k;

    .line 7
    new-instance v0, Ld/k$a;

    sget-object v1, Ld/k;->f:Ld/k;

    invoke-direct {v0, v1}, Ld/k$a;-><init>(Ld/k;)V

    new-array v1, v3, [Ld/d0;

    sget-object v4, Ld/d0;->e:Ld/d0;

    aput-object v4, v1, v2

    .line 8
    invoke-virtual {v0, v1}, Ld/k$a;->a([Ld/d0;)Ld/k$a;

    .line 9
    invoke-virtual {v0, v3}, Ld/k$a;->a(Z)Ld/k$a;

    .line 10
    invoke-virtual {v0}, Ld/k$a;->a()Ld/k;

    .line 11
    new-instance v0, Ld/k$a;

    invoke-direct {v0, v2}, Ld/k$a;-><init>(Z)V

    invoke-virtual {v0}, Ld/k$a;->a()Ld/k;

    move-result-object v0

    sput-object v0, Ld/k;->g:Ld/k;

    return-void
.end method

.method constructor <init>(Ld/k$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean v0, p1, Ld/k$a;->a:Z

    iput-boolean v0, p0, Ld/k;->a:Z

    .line 3
    iget-object v0, p1, Ld/k$a;->b:[Ljava/lang/String;

    iput-object v0, p0, Ld/k;->c:[Ljava/lang/String;

    .line 4
    iget-object v0, p1, Ld/k$a;->c:[Ljava/lang/String;

    iput-object v0, p0, Ld/k;->d:[Ljava/lang/String;

    .line 5
    iget-boolean p1, p1, Ld/k$a;->d:Z

    iput-boolean p1, p0, Ld/k;->b:Z

    return-void
.end method

.method private b(Ljavax/net/ssl/SSLSocket;Z)Ld/k;
    .locals 4

    .line 2
    iget-object v0, p0, Ld/k;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Ld/h;->b:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ld/k;->c:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ld/f0/c;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Ld/k;->d:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6
    sget-object v1, Ld/f0/c;->p:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ld/k;->d:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Ld/f0/c;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 8
    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    .line 9
    sget-object v2, Ld/h;->b:Ljava/util/Comparator;

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, p1, v3}, Ld/f0/c;->a(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    if-eq v2, p2, :cond_2

    .line 10
    aget-object p1, p1, v2

    invoke-static {v0, p1}, Ld/f0/c;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_2
    new-instance p1, Ld/k$a;

    invoke-direct {p1, p0}, Ld/k$a;-><init>(Ld/k;)V

    .line 12
    invoke-virtual {p1, v0}, Ld/k$a;->a([Ljava/lang/String;)Ld/k$a;

    .line 13
    invoke-virtual {p1, v1}, Ld/k$a;->b([Ljava/lang/String;)Ld/k$a;

    .line 14
    invoke-virtual {p1}, Ld/k$a;->a()Ld/k;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/k;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ld/h;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method a(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Ld/k;->b(Ljavax/net/ssl/SSLSocket;Z)Ld/k;

    move-result-object p2

    .line 3
    iget-object v0, p2, Ld/k;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p2, p2, Ld/k;->c:[Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    .line 7
    iget-boolean v0, p0, Ld/k;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    iget-object v0, p0, Ld/k;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v2, Ld/f0/c;->p:Ljava/util/Comparator;

    .line 9
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v2, v0, v3}, Ld/f0/c;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 11
    :cond_1
    iget-object v0, p0, Ld/k;->c:[Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v2, Ld/h;->b:Ljava/util/Comparator;

    .line 12
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {v2, v0, p1}, Ld/f0/c;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld/k;->a:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld/k;->b:Z

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld/d0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/k;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ld/d0;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Ld/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Ld/k;

    .line 3
    iget-boolean v2, p0, Ld/k;->a:Z

    iget-boolean v3, p1, Ld/k;->a:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    .line 4
    iget-object v2, p0, Ld/k;->c:[Ljava/lang/String;

    iget-object v3, p1, Ld/k;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Ld/k;->d:[Ljava/lang/String;

    iget-object v3, p1, Ld/k;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget-boolean v2, p0, Ld/k;->b:Z

    iget-boolean p1, p1, Ld/k;->b:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Ld/k;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20f

    .line 2
    iget-object v1, p0, Ld/k;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Ld/k;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Ld/k;->b:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Ld/k;->a:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Ld/k;->c:[Ljava/lang/String;

    const-string v1, "[all enabled]"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ld/k;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Ld/k;->d:[Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ld/k;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ld/k;->b:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
