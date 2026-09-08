.class public Lc/a/a/o/k/i/c;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceDecoder.java"

# interfaces
.implements Lc/a/a/o/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/k/i/c$b;,
        Lc/a/a/o/k/i/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/e<",
        "Lc/a/a/o/j/g;",
        "Lc/a/a/o/k/i/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Lc/a/a/o/k/i/c$b;

.field private static final h:Lc/a/a/o/k/i/c$a;


# instance fields
.field private final a:Lc/a/a/o/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/e<",
            "Lc/a/a/o/j/g;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/a/a/o/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/e<",
            "Ljava/io/InputStream;",
            "Lc/a/a/o/k/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lc/a/a/o/i/m/c;

.field private final d:Lc/a/a/o/k/i/c$b;

.field private final e:Lc/a/a/o/k/i/c$a;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/a/a/o/k/i/c$b;

    invoke-direct {v0}, Lc/a/a/o/k/i/c$b;-><init>()V

    sput-object v0, Lc/a/a/o/k/i/c;->g:Lc/a/a/o/k/i/c$b;

    .line 2
    new-instance v0, Lc/a/a/o/k/i/c$a;

    invoke-direct {v0}, Lc/a/a/o/k/i/c$a;-><init>()V

    sput-object v0, Lc/a/a/o/k/i/c;->h:Lc/a/a/o/k/i/c$a;

    return-void
.end method

.method public constructor <init>(Lc/a/a/o/e;Lc/a/a/o/e;Lc/a/a/o/i/m/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/e<",
            "Lc/a/a/o/j/g;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lc/a/a/o/e<",
            "Ljava/io/InputStream;",
            "Lc/a/a/o/k/h/b;",
            ">;",
            "Lc/a/a/o/i/m/c;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v4, Lc/a/a/o/k/i/c;->g:Lc/a/a/o/k/i/c$b;

    sget-object v5, Lc/a/a/o/k/i/c;->h:Lc/a/a/o/k/i/c$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lc/a/a/o/k/i/c;-><init>(Lc/a/a/o/e;Lc/a/a/o/e;Lc/a/a/o/i/m/c;Lc/a/a/o/k/i/c$b;Lc/a/a/o/k/i/c$a;)V

    return-void
.end method

.method constructor <init>(Lc/a/a/o/e;Lc/a/a/o/e;Lc/a/a/o/i/m/c;Lc/a/a/o/k/i/c$b;Lc/a/a/o/k/i/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/e<",
            "Lc/a/a/o/j/g;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lc/a/a/o/e<",
            "Ljava/io/InputStream;",
            "Lc/a/a/o/k/h/b;",
            ">;",
            "Lc/a/a/o/i/m/c;",
            "Lc/a/a/o/k/i/c$b;",
            "Lc/a/a/o/k/i/c$a;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/a/a/o/k/i/c;->a:Lc/a/a/o/e;

    .line 4
    iput-object p2, p0, Lc/a/a/o/k/i/c;->b:Lc/a/a/o/e;

    .line 5
    iput-object p3, p0, Lc/a/a/o/k/i/c;->c:Lc/a/a/o/i/m/c;

    .line 6
    iput-object p4, p0, Lc/a/a/o/k/i/c;->d:Lc/a/a/o/k/i/c$b;

    .line 7
    iput-object p5, p0, Lc/a/a/o/k/i/c;->e:Lc/a/a/o/k/i/c$a;

    return-void
.end method

.method private a(Lc/a/a/o/j/g;II[B)Lc/a/a/o/k/i/a;
    .locals 1

    .line 8
    invoke-virtual {p1}, Lc/a/a/o/j/g;->b()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lc/a/a/o/k/i/c;->b(Lc/a/a/o/j/g;II[B)Lc/a/a/o/k/i/a;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lc/a/a/o/k/i/c;->b(Lc/a/a/o/j/g;II)Lc/a/a/o/k/i/a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(Ljava/io/InputStream;II)Lc/a/a/o/k/i/a;
    .locals 2

    .line 11
    iget-object v0, p0, Lc/a/a/o/k/i/c;->b:Lc/a/a/o/e;

    invoke-interface {v0, p1, p2, p3}, Lc/a/a/o/e;->a(Ljava/lang/Object;II)Lc/a/a/o/i/k;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 12
    invoke-interface {p1}, Lc/a/a/o/i/k;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/a/a/o/k/h/b;

    .line 13
    invoke-virtual {p3}, Lc/a/a/o/k/h/b;->d()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 14
    new-instance p3, Lc/a/a/o/k/i/a;

    invoke-direct {p3, p2, p1}, Lc/a/a/o/k/i/a;-><init>(Lc/a/a/o/i/k;Lc/a/a/o/i/k;)V

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Lc/a/a/o/k/e/c;

    invoke-virtual {p3}, Lc/a/a/o/k/h/b;->c()Landroid/graphics/Bitmap;

    move-result-object p3

    iget-object v0, p0, Lc/a/a/o/k/i/c;->c:Lc/a/a/o/i/m/c;

    invoke-direct {p1, p3, v0}, Lc/a/a/o/k/e/c;-><init>(Landroid/graphics/Bitmap;Lc/a/a/o/i/m/c;)V

    .line 16
    new-instance p3, Lc/a/a/o/k/i/a;

    invoke-direct {p3, p1, p2}, Lc/a/a/o/k/i/a;-><init>(Lc/a/a/o/i/k;Lc/a/a/o/i/k;)V

    goto :goto_0

    :cond_1
    move-object p3, p2

    :goto_0
    return-object p3
.end method

.method private b(Lc/a/a/o/j/g;II)Lc/a/a/o/k/i/a;
    .locals 1

    .line 9
    iget-object v0, p0, Lc/a/a/o/k/i/c;->a:Lc/a/a/o/e;

    invoke-interface {v0, p1, p2, p3}, Lc/a/a/o/e;->a(Ljava/lang/Object;II)Lc/a/a/o/i/k;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 10
    new-instance p3, Lc/a/a/o/k/i/a;

    invoke-direct {p3, p1, p2}, Lc/a/a/o/k/i/a;-><init>(Lc/a/a/o/i/k;Lc/a/a/o/i/k;)V

    move-object p2, p3

    :cond_0
    return-object p2
.end method

.method private b(Lc/a/a/o/j/g;II[B)Lc/a/a/o/k/i/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/i/c;->e:Lc/a/a/o/k/i/c$a;

    invoke-virtual {p1}, Lc/a/a/o/j/g;->b()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lc/a/a/o/k/i/c$a;->a(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object p4

    const/16 v0, 0x800

    .line 2
    invoke-virtual {p4, v0}, Ljava/io/InputStream;->mark(I)V

    .line 3
    iget-object v0, p0, Lc/a/a/o/k/i/c;->d:Lc/a/a/o/k/i/c$b;

    invoke-virtual {v0, p4}, Lc/a/a/o/k/i/c$b;->a(Ljava/io/InputStream;)Lc/a/a/o/k/e/l$a;

    move-result-object v0

    .line 4
    invoke-virtual {p4}, Ljava/io/InputStream;->reset()V

    .line 5
    sget-object v1, Lc/a/a/o/k/e/l$a;->b:Lc/a/a/o/k/e/l$a;

    if-ne v0, v1, :cond_0

    .line 6
    invoke-direct {p0, p4, p2, p3}, Lc/a/a/o/k/i/c;->a(Ljava/io/InputStream;II)Lc/a/a/o/k/i/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lc/a/a/o/j/g;

    invoke-virtual {p1}, Lc/a/a/o/j/g;->a()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-direct {v0, p4, p1}, Lc/a/a/o/j/g;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    .line 8
    invoke-direct {p0, v0, p2, p3}, Lc/a/a/o/k/i/c;->b(Lc/a/a/o/j/g;II)Lc/a/a/o/k/i/a;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lc/a/a/o/j/g;II)Lc/a/a/o/i/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/j/g;",
            "II)",
            "Lc/a/a/o/i/k<",
            "Lc/a/a/o/k/i/a;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lc/a/a/t/a;->b()Lc/a/a/t/a;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lc/a/a/t/a;->a()[B

    move-result-object v1

    .line 4
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v1}, Lc/a/a/o/k/i/c;->a(Lc/a/a/o/j/g;II[B)Lc/a/a/o/k/i/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0, v1}, Lc/a/a/t/a;->a([B)Z

    if-eqz p1, :cond_0

    .line 6
    new-instance p2, Lc/a/a/o/k/i/b;

    invoke-direct {p2, p1}, Lc/a/a/o/k/i/b;-><init>(Lc/a/a/o/k/i/a;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {v0, v1}, Lc/a/a/t/a;->a([B)Z

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lc/a/a/o/i/k;
    .locals 0

    .line 1
    check-cast p1, Lc/a/a/o/j/g;

    invoke-virtual {p0, p1, p2, p3}, Lc/a/a/o/k/i/c;->a(Lc/a/a/o/j/g;II)Lc/a/a/o/i/k;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/i/c;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/a/a/o/k/i/c;->b:Lc/a/a/o/e;

    invoke-interface {v1}, Lc/a/a/o/e;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/a/o/k/i/c;->a:Lc/a/a/o/e;

    invoke-interface {v1}, Lc/a/a/o/e;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/o/k/i/c;->f:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lc/a/a/o/k/i/c;->f:Ljava/lang/String;

    return-object v0
.end method
