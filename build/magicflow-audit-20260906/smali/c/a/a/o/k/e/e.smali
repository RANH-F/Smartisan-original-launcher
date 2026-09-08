.class public Lc/a/a/o/k/e/e;
.super Lc/a/a/o/k/e/d;
.source "CenterCrop.java"


# direct methods
.method public constructor <init>(Lc/a/a/o/i/m/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/a/a/o/k/e/d;-><init>(Lc/a/a/o/i/m/c;)V

    return-void
.end method


# virtual methods
.method protected a(Lc/a/a/o/i/m/c;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-interface {p1, p3, p4, v0}, Lc/a/a/o/i/m/c;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    invoke-static {v0, p2, p3, p4}, Lc/a/a/o/k/e/r;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    .line 3
    invoke-interface {p1, v0}, Lc/a/a/o/i/m/c;->a(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object p2
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "CenterCrop.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method
