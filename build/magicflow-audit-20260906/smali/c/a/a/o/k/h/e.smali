.class public Lc/a/a/o/k/h/e;
.super Ljava/lang/Object;
.source "GifDrawableTransformation.java"

# interfaces
.implements Lc/a/a/o/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/g<",
        "Lc/a/a/o/k/h/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/g<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/a/a/o/i/m/c;


# direct methods
.method public constructor <init>(Lc/a/a/o/g;Lc/a/a/o/i/m/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/g<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lc/a/a/o/i/m/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/o/k/h/e;->a:Lc/a/a/o/g;

    .line 3
    iput-object p2, p0, Lc/a/a/o/k/h/e;->b:Lc/a/a/o/i/m/c;

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/o/i/k;II)Lc/a/a/o/i/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "Lc/a/a/o/k/h/b;",
            ">;II)",
            "Lc/a/a/o/i/k<",
            "Lc/a/a/o/k/h/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lc/a/a/o/i/k;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/o/k/h/b;

    .line 2
    invoke-interface {p1}, Lc/a/a/o/i/k;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/o/k/h/b;

    invoke-virtual {v1}, Lc/a/a/o/k/h/b;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3
    new-instance v2, Lc/a/a/o/k/e/c;

    iget-object v3, p0, Lc/a/a/o/k/h/e;->b:Lc/a/a/o/i/m/c;

    invoke-direct {v2, v1, v3}, Lc/a/a/o/k/e/c;-><init>(Landroid/graphics/Bitmap;Lc/a/a/o/i/m/c;)V

    .line 4
    iget-object v3, p0, Lc/a/a/o/k/h/e;->a:Lc/a/a/o/g;

    invoke-interface {v3, v2, p2, p3}, Lc/a/a/o/g;->a(Lc/a/a/o/i/k;II)Lc/a/a/o/i/k;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Lc/a/a/o/i/k;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 7
    new-instance p1, Lc/a/a/o/k/h/d;

    new-instance p3, Lc/a/a/o/k/h/b;

    iget-object v1, p0, Lc/a/a/o/k/h/e;->a:Lc/a/a/o/g;

    invoke-direct {p3, v0, p2, v1}, Lc/a/a/o/k/h/b;-><init>(Lc/a/a/o/k/h/b;Landroid/graphics/Bitmap;Lc/a/a/o/g;)V

    invoke-direct {p1, p3}, Lc/a/a/o/k/h/d;-><init>(Lc/a/a/o/k/h/b;)V

    :cond_0
    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/h/e;->a:Lc/a/a/o/g;

    invoke-interface {v0}, Lc/a/a/o/g;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
