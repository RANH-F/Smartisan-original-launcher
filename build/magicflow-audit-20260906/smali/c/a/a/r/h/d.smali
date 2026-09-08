.class public Lc/a/a/r/h/d;
.super Lc/a/a/r/h/e;
.source "GlideDrawableImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/r/h/e<",
        "Lc/a/a/o/k/f/b;",
        ">;"
    }
.end annotation


# instance fields
.field private d:I

.field private e:Lc/a/a/o/k/f/b;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lc/a/a/r/h/d;-><init>(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc/a/a/r/h/e;-><init>(Landroid/widget/ImageView;)V

    .line 3
    iput p2, p0, Lc/a/a/r/h/d;->d:I

    return-void
.end method


# virtual methods
.method protected a(Lc/a/a/o/k/f/b;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/a/a/r/h/k;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lc/a/a/o/k/f/b;

    invoke-virtual {p0, p1}, Lc/a/a/r/h/d;->a(Lc/a/a/o/k/f/b;)V

    return-void
.end method

.method public onResourceReady(Lc/a/a/o/k/f/b;Lc/a/a/r/g/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/k/f/b;",
            "Lc/a/a/r/g/c<",
            "-",
            "Lc/a/a/o/k/f/b;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lc/a/a/o/k/f/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/a/a/r/h/k;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lc/a/a/r/h/k;->a:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    .line 5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    .line 6
    new-instance v0, Lc/a/a/r/h/i;

    iget-object v1, p0, Lc/a/a/r/h/k;->a:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lc/a/a/r/h/i;-><init>(Lc/a/a/o/k/f/b;I)V

    move-object p1, v0

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Lc/a/a/r/h/e;->onResourceReady(Ljava/lang/Object;Lc/a/a/r/g/c;)V

    .line 8
    iput-object p1, p0, Lc/a/a/r/h/d;->e:Lc/a/a/o/k/f/b;

    .line 9
    iget p2, p0, Lc/a/a/r/h/d;->d:I

    invoke-virtual {p1, p2}, Lc/a/a/o/k/f/b;->b(I)V

    .line 10
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lc/a/a/r/g/c;)V
    .locals 0

    .line 1
    check-cast p1, Lc/a/a/o/k/f/b;

    invoke-virtual {p0, p1, p2}, Lc/a/a/r/h/d;->onResourceReady(Lc/a/a/o/k/f/b;Lc/a/a/r/g/c;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/r/h/d;->e:Lc/a/a/o/k/f/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/r/h/d;->e:Lc/a/a/o/k/f/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    return-void
.end method
