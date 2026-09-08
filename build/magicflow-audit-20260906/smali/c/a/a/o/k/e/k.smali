.class public Lc/a/a/o/k/e/k;
.super Lc/a/a/o/k/f/a;
.source "GlideBitmapDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/o/k/f/a<",
        "Lc/a/a/o/k/e/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lc/a/a/o/i/m/c;


# direct methods
.method public constructor <init>(Lc/a/a/o/k/e/j;Lc/a/a/o/i/m/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/a/a/o/k/f/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iput-object p2, p0, Lc/a/a/o/k/e/k;->b:Lc/a/a/o/i/m/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/e/k;->b:Lc/a/a/o/i/m/c;

    iget-object v1, p0, Lc/a/a/o/k/f/a;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lc/a/a/o/k/e/j;

    invoke-virtual {v1}, Lc/a/a/o/k/e/j;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/a/a/o/i/m/c;->a(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/f/a;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lc/a/a/o/k/e/j;

    invoke-virtual {v0}, Lc/a/a/o/k/e/j;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/t/h;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
