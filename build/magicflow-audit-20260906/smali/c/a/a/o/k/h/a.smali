.class Lc/a/a/o/k/h/a;
.super Ljava/lang/Object;
.source "GifBitmapProvider.java"

# interfaces
.implements Lc/a/a/m/a$a;


# instance fields
.field private final a:Lc/a/a/o/i/m/c;


# direct methods
.method public constructor <init>(Lc/a/a/o/i/m/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/o/k/h/a;->a:Lc/a/a/o/i/m/c;

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/h/a;->a:Lc/a/a/o/i/m/c;

    invoke-interface {v0, p1, p2, p3}, Lc/a/a/o/i/m/c;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/a/a/o/k/h/a;->a:Lc/a/a/o/i/m/c;

    invoke-interface {v0, p1}, Lc/a/a/o/i/m/c;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
