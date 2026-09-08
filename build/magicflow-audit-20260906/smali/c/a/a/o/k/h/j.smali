.class public Lc/a/a/o/k/h/j;
.super Ljava/lang/Object;
.source "GifResourceEncoder.java"

# interfaces
.implements Lc/a/a/o/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/k/h/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/f<",
        "Lc/a/a/o/k/h/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Lc/a/a/o/k/h/j$a;


# instance fields
.field private final a:Lc/a/a/m/a$a;

.field private final b:Lc/a/a/o/i/m/c;

.field private final c:Lc/a/a/o/k/h/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/a/a/o/k/h/j$a;

    invoke-direct {v0}, Lc/a/a/o/k/h/j$a;-><init>()V

    sput-object v0, Lc/a/a/o/k/h/j;->d:Lc/a/a/o/k/h/j$a;

    return-void
.end method

.method public constructor <init>(Lc/a/a/o/i/m/c;)V
    .locals 1

    .line 1
    sget-object v0, Lc/a/a/o/k/h/j;->d:Lc/a/a/o/k/h/j$a;

    invoke-direct {p0, p1, v0}, Lc/a/a/o/k/h/j;-><init>(Lc/a/a/o/i/m/c;Lc/a/a/o/k/h/j$a;)V

    return-void
.end method

.method constructor <init>(Lc/a/a/o/i/m/c;Lc/a/a/o/k/h/j$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/a/a/o/k/h/j;->b:Lc/a/a/o/i/m/c;

    .line 4
    new-instance v0, Lc/a/a/o/k/h/a;

    invoke-direct {v0, p1}, Lc/a/a/o/k/h/a;-><init>(Lc/a/a/o/i/m/c;)V

    iput-object v0, p0, Lc/a/a/o/k/h/j;->a:Lc/a/a/m/a$a;

    .line 5
    iput-object p2, p0, Lc/a/a/o/k/h/j;->c:Lc/a/a/o/k/h/j$a;

    return-void
.end method

.method private a([B)Lc/a/a/m/a;
    .locals 3

    .line 26
    iget-object v0, p0, Lc/a/a/o/k/h/j;->c:Lc/a/a/o/k/h/j$a;

    invoke-virtual {v0}, Lc/a/a/o/k/h/j$a;->b()Lc/a/a/m/d;

    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lc/a/a/m/d;->a([B)Lc/a/a/m/d;

    .line 28
    invoke-virtual {v0}, Lc/a/a/m/d;->b()Lc/a/a/m/c;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lc/a/a/o/k/h/j;->c:Lc/a/a/o/k/h/j$a;

    iget-object v2, p0, Lc/a/a/o/k/h/j;->a:Lc/a/a/m/a$a;

    invoke-virtual {v1, v2}, Lc/a/a/o/k/h/j$a;->a(Lc/a/a/m/a$a;)Lc/a/a/m/a;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v0, p1}, Lc/a/a/m/a;->a(Lc/a/a/m/c;[B)V

    .line 31
    invoke-virtual {v1}, Lc/a/a/m/a;->a()V

    return-object v1
.end method

.method private a(Landroid/graphics/Bitmap;Lc/a/a/o/g;Lc/a/a/o/k/h/b;)Lc/a/a/o/i/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lc/a/a/o/g<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lc/a/a/o/k/h/b;",
            ")",
            "Lc/a/a/o/i/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lc/a/a/o/k/h/j;->c:Lc/a/a/o/k/h/j$a;

    iget-object v1, p0, Lc/a/a/o/k/h/j;->b:Lc/a/a/o/i/m/c;

    invoke-virtual {v0, p1, v1}, Lc/a/a/o/k/h/j$a;->a(Landroid/graphics/Bitmap;Lc/a/a/o/i/m/c;)Lc/a/a/o/i/k;

    move-result-object p1

    .line 33
    invoke-virtual {p3}, Lc/a/a/o/k/h/b;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Lc/a/a/o/k/h/b;->getIntrinsicHeight()I

    move-result p3

    invoke-interface {p2, p1, v0, p3}, Lc/a/a/o/g;->a(Lc/a/a/o/i/k;II)Lc/a/a/o/i/k;

    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 35
    invoke-interface {p1}, Lc/a/a/o/i/k;->a()V

    :cond_0
    return-object p2
.end method

.method private a([BLjava/io/OutputStream;)Z
    .locals 1

    .line 23
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    const-string v0, "GifEncoder"

    .line 24
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Failed to write data to output stream in GifResourceEncoder"

    .line 25
    invoke-static {v0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Lc/a/a/o/i/k;Ljava/io/OutputStream;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "Lc/a/a/o/k/h/b;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .line 2
    invoke-static {}, Lc/a/a/t/d;->a()J

    move-result-wide v0

    .line 3
    invoke-interface {p1}, Lc/a/a/o/i/k;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/o/k/h/b;

    .line 4
    invoke-virtual {p1}, Lc/a/a/o/k/h/b;->e()Lc/a/a/o/g;

    move-result-object v2

    .line 5
    instance-of v3, v2, Lc/a/a/o/k/d;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p1}, Lc/a/a/o/k/h/b;->b()[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lc/a/a/o/k/h/j;->a([BLjava/io/OutputStream;)Z

    move-result p1

    return p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lc/a/a/o/k/h/b;->b()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lc/a/a/o/k/h/j;->a([B)Lc/a/a/m/a;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lc/a/a/o/k/h/j;->c:Lc/a/a/o/k/h/j$a;

    invoke-virtual {v4}, Lc/a/a/o/k/h/j$a;->a()Lc/a/a/n/a;

    move-result-object v4

    .line 9
    invoke-virtual {v4, p2}, Lc/a/a/n/a;->a(Ljava/io/OutputStream;)Z

    move-result p2

    const/4 v5, 0x0

    if-nez p2, :cond_1

    return v5

    :cond_1
    move p2, v5

    .line 10
    :goto_0
    invoke-virtual {v3}, Lc/a/a/m/a;->d()I

    move-result v6

    if-ge p2, v6, :cond_3

    .line 11
    invoke-virtual {v3}, Lc/a/a/m/a;->g()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 12
    invoke-direct {p0, v6, v2, p1}, Lc/a/a/o/k/h/j;->a(Landroid/graphics/Bitmap;Lc/a/a/o/g;Lc/a/a/o/k/h/b;)Lc/a/a/o/i/k;

    move-result-object v6

    .line 13
    :try_start_0
    invoke-interface {v6}, Lc/a/a/o/i/k;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Lc/a/a/n/a;->a(Landroid/graphics/Bitmap;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_2

    .line 14
    invoke-interface {v6}, Lc/a/a/o/i/k;->a()V

    return v5

    .line 15
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lc/a/a/m/a;->c()I

    move-result v7

    .line 16
    invoke-virtual {v3, v7}, Lc/a/a/m/a;->a(I)I

    move-result v7

    .line 17
    invoke-virtual {v4, v7}, Lc/a/a/n/a;->a(I)V

    .line 18
    invoke-virtual {v3}, Lc/a/a/m/a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-interface {v6}, Lc/a/a/o/i/k;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v6}, Lc/a/a/o/i/k;->a()V

    throw p1

    .line 20
    :cond_3
    invoke-virtual {v4}, Lc/a/a/n/a;->a()Z

    move-result p2

    const/4 v2, 0x2

    const-string v4, "GifEncoder"

    .line 21
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoded gif with "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lc/a/a/m/a;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " frames and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/a/a/o/k/h/b;->b()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lc/a/a/t/d;->a(J)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p2
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 0

    .line 1
    check-cast p1, Lc/a/a/o/i/k;

    invoke-virtual {p0, p1, p2}, Lc/a/a/o/k/h/j;->a(Lc/a/a/o/i/k;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
