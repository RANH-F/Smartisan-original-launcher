.class public Lc/a/a/o/k/i/a;
.super Ljava/lang/Object;
.source "GifBitmapWrapper.java"


# instance fields
.field private final a:Lc/a/a/o/i/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/i/k<",
            "Lc/a/a/o/k/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/a/a/o/i/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/i/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/a/a/o/i/k;Lc/a/a/o/i/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lc/a/a/o/i/k<",
            "Lc/a/a/o/k/h/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only contain either a bitmap resource or a gif resource, not both"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must contain either a bitmap resource or a gif resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_3
    :goto_1
    iput-object p1, p0, Lc/a/a/o/k/i/a;->b:Lc/a/a/o/i/k;

    .line 5
    iput-object p2, p0, Lc/a/a/o/k/i/a;->a:Lc/a/a/o/i/k;

    return-void
.end method


# virtual methods
.method public a()Lc/a/a/o/i/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/i/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/i/a;->b:Lc/a/a/o/i/k;

    return-object v0
.end method

.method public b()Lc/a/a/o/i/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/i/k<",
            "Lc/a/a/o/k/h/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/i/a;->a:Lc/a/a/o/i/k;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/i/a;->b:Lc/a/a/o/i/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lc/a/a/o/i/k;->b()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/a/a/o/k/i/a;->a:Lc/a/a/o/i/k;

    invoke-interface {v0}, Lc/a/a/o/i/k;->b()I

    move-result v0

    return v0
.end method
