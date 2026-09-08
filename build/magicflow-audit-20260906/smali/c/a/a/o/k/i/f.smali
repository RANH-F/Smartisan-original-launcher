.class public Lc/a/a/o/k/i/f;
.super Ljava/lang/Object;
.source "GifBitmapWrapperTransformation.java"

# interfaces
.implements Lc/a/a/o/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/g<",
        "Lc/a/a/o/k/i/a;",
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

.field private final b:Lc/a/a/o/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/g<",
            "Lc/a/a/o/k/h/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc/a/a/o/g;Lc/a/a/o/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/g<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lc/a/a/o/g<",
            "Lc/a/a/o/k/h/b;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/a/a/o/k/i/f;->a:Lc/a/a/o/g;

    .line 4
    iput-object p2, p0, Lc/a/a/o/k/i/f;->b:Lc/a/a/o/g;

    return-void
.end method

.method public constructor <init>(Lc/a/a/o/i/m/c;Lc/a/a/o/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/m/c;",
            "Lc/a/a/o/g<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/a/a/o/k/h/e;

    invoke-direct {v0, p2, p1}, Lc/a/a/o/k/h/e;-><init>(Lc/a/a/o/g;Lc/a/a/o/i/m/c;)V

    invoke-direct {p0, p2, v0}, Lc/a/a/o/k/i/f;-><init>(Lc/a/a/o/g;Lc/a/a/o/g;)V

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/o/i/k;II)Lc/a/a/o/i/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "Lc/a/a/o/k/i/a;",
            ">;II)",
            "Lc/a/a/o/i/k<",
            "Lc/a/a/o/k/i/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lc/a/a/o/i/k;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/o/k/i/a;

    invoke-virtual {v0}, Lc/a/a/o/k/i/a;->a()Lc/a/a/o/i/k;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lc/a/a/o/i/k;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/o/k/i/a;

    invoke-virtual {v1}, Lc/a/a/o/k/i/a;->b()Lc/a/a/o/i/k;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lc/a/a/o/k/i/f;->a:Lc/a/a/o/g;

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v2, v0, p2, p3}, Lc/a/a/o/g;->a(Lc/a/a/o/i/k;II)Lc/a/a/o/i/k;

    move-result-object p2

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 6
    new-instance p3, Lc/a/a/o/k/i/a;

    invoke-interface {p1}, Lc/a/a/o/i/k;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/o/k/i/a;

    invoke-virtual {p1}, Lc/a/a/o/k/i/a;->b()Lc/a/a/o/i/k;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lc/a/a/o/k/i/a;-><init>(Lc/a/a/o/i/k;Lc/a/a/o/i/k;)V

    .line 7
    new-instance p1, Lc/a/a/o/k/i/b;

    invoke-direct {p1, p3}, Lc/a/a/o/k/i/b;-><init>(Lc/a/a/o/k/i/a;)V

    return-object p1

    :cond_0
    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, Lc/a/a/o/k/i/f;->b:Lc/a/a/o/g;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, v1, p2, p3}, Lc/a/a/o/g;->a(Lc/a/a/o/i/k;II)Lc/a/a/o/i/k;

    move-result-object p2

    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 11
    new-instance p3, Lc/a/a/o/k/i/a;

    invoke-interface {p1}, Lc/a/a/o/i/k;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/o/k/i/a;

    invoke-virtual {p1}, Lc/a/a/o/k/i/a;->a()Lc/a/a/o/i/k;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lc/a/a/o/k/i/a;-><init>(Lc/a/a/o/i/k;Lc/a/a/o/i/k;)V

    .line 12
    new-instance p1, Lc/a/a/o/k/i/b;

    invoke-direct {p1, p3}, Lc/a/a/o/k/i/b;-><init>(Lc/a/a/o/k/i/a;)V

    :cond_1
    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/i/f;->a:Lc/a/a/o/g;

    invoke-interface {v0}, Lc/a/a/o/g;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
