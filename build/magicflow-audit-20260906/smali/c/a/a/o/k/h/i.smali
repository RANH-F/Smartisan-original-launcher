.class public Lc/a/a/o/k/h/i;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"

# interfaces
.implements Lc/a/a/o/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/k/h/i$b;,
        Lc/a/a/o/k/h/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/e<",
        "Ljava/io/InputStream;",
        "Lc/a/a/o/k/h/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Lc/a/a/o/k/h/i$b;

.field private static final g:Lc/a/a/o/k/h/i$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lc/a/a/o/k/h/i$b;

.field private final c:Lc/a/a/o/i/m/c;

.field private final d:Lc/a/a/o/k/h/i$a;

.field private final e:Lc/a/a/o/k/h/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/a/a/o/k/h/i$b;

    invoke-direct {v0}, Lc/a/a/o/k/h/i$b;-><init>()V

    sput-object v0, Lc/a/a/o/k/h/i;->f:Lc/a/a/o/k/h/i$b;

    .line 2
    new-instance v0, Lc/a/a/o/k/h/i$a;

    invoke-direct {v0}, Lc/a/a/o/k/h/i$a;-><init>()V

    sput-object v0, Lc/a/a/o/k/h/i;->g:Lc/a/a/o/k/h/i$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/a/a/o/i/m/c;)V
    .locals 2

    .line 1
    sget-object v0, Lc/a/a/o/k/h/i;->f:Lc/a/a/o/k/h/i$b;

    sget-object v1, Lc/a/a/o/k/h/i;->g:Lc/a/a/o/k/h/i$a;

    invoke-direct {p0, p1, p2, v0, v1}, Lc/a/a/o/k/h/i;-><init>(Landroid/content/Context;Lc/a/a/o/i/m/c;Lc/a/a/o/k/h/i$b;Lc/a/a/o/k/h/i$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lc/a/a/o/i/m/c;Lc/a/a/o/k/h/i$b;Lc/a/a/o/k/h/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/a/a/o/k/h/i;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lc/a/a/o/k/h/i;->c:Lc/a/a/o/i/m/c;

    .line 5
    iput-object p4, p0, Lc/a/a/o/k/h/i;->d:Lc/a/a/o/k/h/i$a;

    .line 6
    new-instance p1, Lc/a/a/o/k/h/a;

    invoke-direct {p1, p2}, Lc/a/a/o/k/h/a;-><init>(Lc/a/a/o/i/m/c;)V

    iput-object p1, p0, Lc/a/a/o/k/h/i;->e:Lc/a/a/o/k/h/a;

    .line 7
    iput-object p3, p0, Lc/a/a/o/k/h/i;->b:Lc/a/a/o/k/h/i$b;

    return-void
.end method

.method private a(Lc/a/a/m/a;Lc/a/a/m/c;[B)Landroid/graphics/Bitmap;
    .locals 0

    .line 16
    invoke-virtual {p1, p2, p3}, Lc/a/a/m/a;->a(Lc/a/a/m/c;[B)V

    .line 17
    invoke-virtual {p1}, Lc/a/a/m/a;->a()V

    .line 18
    invoke-virtual {p1}, Lc/a/a/m/a;->g()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private a([BIILc/a/a/m/d;Lc/a/a/m/a;)Lc/a/a/o/k/h/d;
    .locals 10

    .line 10
    invoke-virtual {p4}, Lc/a/a/m/d;->b()Lc/a/a/m/c;

    move-result-object v7

    .line 11
    invoke-virtual {v7}, Lc/a/a/m/c;->a()I

    move-result p4

    const/4 v0, 0x0

    if-lez p4, :cond_2

    invoke-virtual {v7}, Lc/a/a/m/c;->b()I

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p5, v7, p1}, Lc/a/a/o/k/h/i;->a(Lc/a/a/m/a;Lc/a/a/m/c;[B)Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_1

    return-object v0

    .line 13
    :cond_1
    invoke-static {}, Lc/a/a/o/k/d;->a()Lc/a/a/o/k/d;

    move-result-object v4

    .line 14
    new-instance p4, Lc/a/a/o/k/h/b;

    iget-object v1, p0, Lc/a/a/o/k/h/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lc/a/a/o/k/h/i;->e:Lc/a/a/o/k/h/a;

    iget-object v3, p0, Lc/a/a/o/k/h/i;->c:Lc/a/a/o/i/m/c;

    move-object v0, p4

    move v5, p2

    move v6, p3

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lc/a/a/o/k/h/b;-><init>(Landroid/content/Context;Lc/a/a/m/a$a;Lc/a/a/o/i/m/c;Lc/a/a/o/g;IILc/a/a/m/c;[BLandroid/graphics/Bitmap;)V

    .line 15
    new-instance p1, Lc/a/a/o/k/h/d;

    invoke-direct {p1, p4}, Lc/a/a/o/k/h/d;-><init>(Lc/a/a/o/k/h/b;)V

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4

    .line 19
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    new-array v1, v1, [B

    .line 20
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "GifResourceDecoder"

    const-string v2, "Error reading data from stream"

    .line 23
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lc/a/a/o/i/k;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lc/a/a/o/k/h/i;->a(Ljava/io/InputStream;II)Lc/a/a/o/k/h/d;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/InputStream;II)Lc/a/a/o/k/h/d;
    .locals 7

    .line 2
    invoke-static {p1}, Lc/a/a/o/k/h/i;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 3
    iget-object p1, p0, Lc/a/a/o/k/h/i;->b:Lc/a/a/o/k/h/i$b;

    invoke-virtual {p1, v1}, Lc/a/a/o/k/h/i$b;->a([B)Lc/a/a/m/d;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lc/a/a/o/k/h/i;->d:Lc/a/a/o/k/h/i$a;

    iget-object v2, p0, Lc/a/a/o/k/h/i;->e:Lc/a/a/o/k/h/a;

    invoke-virtual {v0, v2}, Lc/a/a/o/k/h/i$a;->a(Lc/a/a/m/a$a;)Lc/a/a/m/a;

    move-result-object v6

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, v6

    .line 5
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lc/a/a/o/k/h/i;->a([BIILc/a/a/m/d;Lc/a/a/m/a;)Lc/a/a/o/k/h/d;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p3, p0, Lc/a/a/o/k/h/i;->b:Lc/a/a/o/k/h/i$b;

    invoke-virtual {p3, p1}, Lc/a/a/o/k/h/i$b;->a(Lc/a/a/m/d;)V

    .line 7
    iget-object p1, p0, Lc/a/a/o/k/h/i;->d:Lc/a/a/o/k/h/i$a;

    invoke-virtual {p1, v6}, Lc/a/a/o/k/h/i$a;->a(Lc/a/a/m/a;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 8
    iget-object p3, p0, Lc/a/a/o/k/h/i;->b:Lc/a/a/o/k/h/i$b;

    invoke-virtual {p3, p1}, Lc/a/a/o/k/h/i$b;->a(Lc/a/a/m/d;)V

    .line 9
    iget-object p1, p0, Lc/a/a/o/k/h/i;->d:Lc/a/a/o/k/h/i$a;

    invoke-virtual {p1, v6}, Lc/a/a/o/k/h/i$a;->a(Lc/a/a/m/a;)V

    throw p2
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
