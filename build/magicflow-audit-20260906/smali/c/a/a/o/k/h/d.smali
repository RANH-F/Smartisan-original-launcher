.class public Lc/a/a/o/k/h/d;
.super Lc/a/a/o/k/f/a;
.source "GifDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/o/k/f/a<",
        "Lc/a/a/o/k/h/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/a/a/o/k/h/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/a/a/o/k/f/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/f/a;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lc/a/a/o/k/h/b;

    invoke-virtual {v0}, Lc/a/a/o/k/h/b;->stop()V

    .line 2
    iget-object v0, p0, Lc/a/a/o/k/f/a;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lc/a/a/o/k/h/b;

    invoke-virtual {v0}, Lc/a/a/o/k/h/b;->f()V

    return-void
.end method

.method public b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/f/a;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lc/a/a/o/k/h/b;

    invoke-virtual {v0}, Lc/a/a/o/k/h/b;->b()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lc/a/a/o/k/f/a;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lc/a/a/o/k/h/b;

    invoke-virtual {v1}, Lc/a/a/o/k/h/b;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/t/h;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
