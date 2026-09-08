.class Lc/a/a/o/k/h/f;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/k/h/f$e;,
        Lc/a/a/o/k/h/f$b;,
        Lc/a/a/o/k/h/f$d;,
        Lc/a/a/o/k/h/f$c;
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/k/h/f$c;

.field private final b:Lc/a/a/m/a;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Lc/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/f<",
            "Lc/a/a/m/a;",
            "Lc/a/a/m/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lc/a/a/o/k/h/f$b;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/a/a/o/k/h/f$c;Lc/a/a/m/a;II)V
    .locals 1

    .line 1
    invoke-static {p1}, Lc/a/a/h;->a(Landroid/content/Context;)Lc/a/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/h;->b()Lc/a/a/o/i/m/c;

    move-result-object v0

    invoke-static {p1, p3, p4, p5, v0}, Lc/a/a/o/k/h/f;->a(Landroid/content/Context;Lc/a/a/m/a;IILc/a/a/o/i/m/c;)Lc/a/a/f;

    move-result-object p1

    const/4 p4, 0x0

    invoke-direct {p0, p2, p3, p4, p1}, Lc/a/a/o/k/h/f;-><init>(Lc/a/a/o/k/h/f$c;Lc/a/a/m/a;Landroid/os/Handler;Lc/a/a/f;)V

    return-void
.end method

.method constructor <init>(Lc/a/a/o/k/h/f$c;Lc/a/a/m/a;Landroid/os/Handler;Lc/a/a/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/k/h/f$c;",
            "Lc/a/a/m/a;",
            "Landroid/os/Handler;",
            "Lc/a/a/f<",
            "Lc/a/a/m/a;",
            "Lc/a/a/m/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lc/a/a/o/k/h/f;->d:Z

    .line 4
    iput-boolean v0, p0, Lc/a/a/o/k/h/f;->e:Z

    if-nez p3, :cond_0

    .line 5
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lc/a/a/o/k/h/f$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lc/a/a/o/k/h/f$d;-><init>(Lc/a/a/o/k/h/f;Lc/a/a/o/k/h/f$a;)V

    invoke-direct {p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 6
    :cond_0
    iput-object p1, p0, Lc/a/a/o/k/h/f;->a:Lc/a/a/o/k/h/f$c;

    .line 7
    iput-object p2, p0, Lc/a/a/o/k/h/f;->b:Lc/a/a/m/a;

    .line 8
    iput-object p3, p0, Lc/a/a/o/k/h/f;->c:Landroid/os/Handler;

    .line 9
    iput-object p4, p0, Lc/a/a/o/k/h/f;->f:Lc/a/a/f;

    return-void
.end method

.method private static a(Landroid/content/Context;Lc/a/a/m/a;IILc/a/a/o/i/m/c;)Lc/a/a/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/a/a/m/a;",
            "II",
            "Lc/a/a/o/i/m/c;",
            ")",
            "Lc/a/a/f<",
            "Lc/a/a/m/a;",
            "Lc/a/a/m/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Lc/a/a/o/k/h/h;

    invoke-direct {v0, p4}, Lc/a/a/o/k/h/h;-><init>(Lc/a/a/o/i/m/c;)V

    .line 17
    new-instance p4, Lc/a/a/o/k/h/g;

    invoke-direct {p4}, Lc/a/a/o/k/h/g;-><init>()V

    .line 18
    invoke-static {}, Lc/a/a/o/k/a;->a()Lc/a/a/o/b;

    move-result-object v1

    .line 19
    invoke-static {p0}, Lc/a/a/h;->b(Landroid/content/Context;)Lc/a/a/k;

    move-result-object p0

    const-class v2, Lc/a/a/m/a;

    invoke-virtual {p0, p4, v2}, Lc/a/a/k;->a(Lc/a/a/o/j/l;Ljava/lang/Class;)Lc/a/a/k$c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lc/a/a/k$c;->a(Ljava/lang/Object;)Lc/a/a/k$c$a;

    move-result-object p0

    const-class p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lc/a/a/k$c$a;->a(Ljava/lang/Class;)Lc/a/a/g;

    move-result-object p0

    invoke-virtual {p0, v1}, Lc/a/a/f;->a(Lc/a/a/o/b;)Lc/a/a/f;

    invoke-virtual {p0, v0}, Lc/a/a/f;->a(Lc/a/a/o/e;)Lc/a/a/f;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lc/a/a/f;->a(Z)Lc/a/a/f;

    sget-object p1, Lc/a/a/o/i/b;->d:Lc/a/a/o/i/b;

    invoke-virtual {p0, p1}, Lc/a/a/f;->a(Lc/a/a/o/i/b;)Lc/a/a/f;

    invoke-virtual {p0, p2, p3}, Lc/a/a/f;->a(II)Lc/a/a/f;

    return-object p0
.end method

.method private e()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lc/a/a/o/k/h/f;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lc/a/a/o/k/h/f;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/a/a/o/k/h/f;->e:Z

    .line 3
    iget-object v0, p0, Lc/a/a/o/k/h/f;->b:Lc/a/a/m/a;

    invoke-virtual {v0}, Lc/a/a/m/a;->a()V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lc/a/a/o/k/h/f;->b:Lc/a/a/m/a;

    invoke-virtual {v2}, Lc/a/a/m/a;->f()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 5
    new-instance v2, Lc/a/a/o/k/h/f$b;

    iget-object v3, p0, Lc/a/a/o/k/h/f;->c:Landroid/os/Handler;

    iget-object v4, p0, Lc/a/a/o/k/h/f;->b:Lc/a/a/m/a;

    invoke-virtual {v4}, Lc/a/a/m/a;->c()I

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Lc/a/a/o/k/h/f$b;-><init>(Landroid/os/Handler;IJ)V

    .line 6
    iget-object v0, p0, Lc/a/a/o/k/h/f;->f:Lc/a/a/f;

    new-instance v1, Lc/a/a/o/k/h/f$e;

    invoke-direct {v1}, Lc/a/a/o/k/h/f$e;-><init>()V

    invoke-virtual {v0, v1}, Lc/a/a/f;->a(Lc/a/a/o/c;)Lc/a/a/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lc/a/a/f;->a(Lc/a/a/r/h/j;)Lc/a/a/r/h/j;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lc/a/a/o/k/h/f;->d()V

    .line 4
    iget-object v0, p0, Lc/a/a/o/k/h/f;->g:Lc/a/a/o/k/h/f$b;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lc/a/a/h;->a(Lc/a/a/r/h/j;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lc/a/a/o/k/h/f;->g:Lc/a/a/o/k/h/f$b;

    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lc/a/a/o/k/h/f;->h:Z

    return-void
.end method

.method public a(Lc/a/a/o/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/g<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/h/f;->f:Lc/a/a/f;

    const/4 v1, 0x1

    new-array v1, v1, [Lc/a/a/o/g;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lc/a/a/f;->a([Lc/a/a/o/g;)Lc/a/a/f;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/o/k/h/f;->f:Lc/a/a/f;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Transformation must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lc/a/a/o/k/h/f$b;)V
    .locals 3

    .line 8
    iget-boolean v0, p0, Lc/a/a/o/k/h/f;->h:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lc/a/a/o/k/h/f;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lc/a/a/o/k/h/f;->g:Lc/a/a/o/k/h/f$b;

    .line 11
    iput-object p1, p0, Lc/a/a/o/k/h/f;->g:Lc/a/a/o/k/h/f$b;

    .line 12
    iget-object v2, p0, Lc/a/a/o/k/h/f;->a:Lc/a/a/o/k/h/f$c;

    invoke-static {p1}, Lc/a/a/o/k/h/f$b;->a(Lc/a/a/o/k/h/f$b;)I

    move-result p1

    invoke-interface {v2, p1}, Lc/a/a/o/k/h/f$c;->a(I)V

    if-eqz v0, :cond_1

    .line 13
    iget-object p1, p0, Lc/a/a/o/k/h/f;->c:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lc/a/a/o/k/h/f;->e:Z

    .line 15
    invoke-direct {p0}, Lc/a/a/o/k/h/f;->e()V

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/h/f;->g:Lc/a/a/o/k/h/f$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/a/a/o/k/h/f$b;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/a/a/o/k/h/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/a/a/o/k/h/f;->d:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lc/a/a/o/k/h/f;->h:Z

    .line 4
    invoke-direct {p0}, Lc/a/a/o/k/h/f;->e()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/a/a/o/k/h/f;->d:Z

    return-void
.end method
