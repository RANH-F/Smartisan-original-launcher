.class Lc/a/a/o/k/h/f$b;
.super Lc/a/a/r/h/g;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/k/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/r/h/g<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:I

.field private final c:J

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/a/a/r/h/g;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/o/k/h/f$b;->a:Landroid/os/Handler;

    .line 3
    iput p2, p0, Lc/a/a/o/k/h/f$b;->b:I

    .line 4
    iput-wide p3, p0, Lc/a/a/o/k/h/f$b;->c:J

    return-void
.end method

.method static synthetic a(Lc/a/a/o/k/h/f$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/a/a/o/k/h/f$b;->b:I

    return p0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lc/a/a/r/g/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lc/a/a/r/g/c<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lc/a/a/o/k/h/f$b;->d:Landroid/graphics/Bitmap;

    .line 3
    iget-object p1, p0, Lc/a/a/o/k/h/f$b;->a:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lc/a/a/o/k/h/f$b;->a:Landroid/os/Handler;

    iget-wide v0, p0, Lc/a/a/o/k/h/f$b;->c:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/h/f$b;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lc/a/a/r/g/c;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lc/a/a/o/k/h/f$b;->a(Landroid/graphics/Bitmap;Lc/a/a/r/g/c;)V

    return-void
.end method
