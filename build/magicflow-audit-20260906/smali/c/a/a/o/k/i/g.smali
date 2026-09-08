.class public Lc/a/a/o/k/i/g;
.super Ljava/lang/Object;
.source "ImageVideoGifDrawableLoadProvider.java"

# interfaces
.implements Lc/a/a/q/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/q/b<",
        "Lc/a/a/o/j/g;",
        "Lc/a/a/o/k/i/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/e<",
            "Ljava/io/File;",
            "Lc/a/a/o/k/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/a/a/o/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/e<",
            "Lc/a/a/o/j/g;",
            "Lc/a/a/o/k/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lc/a/a/o/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/f<",
            "Lc/a/a/o/k/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lc/a/a/o/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/b<",
            "Lc/a/a/o/j/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/a/a/q/b;Lc/a/a/q/b;Lc/a/a/o/i/m/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/q/b<",
            "Lc/a/a/o/j/g;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lc/a/a/q/b<",
            "Ljava/io/InputStream;",
            "Lc/a/a/o/k/h/b;",
            ">;",
            "Lc/a/a/o/i/m/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/a/a/o/k/i/c;

    invoke-interface {p1}, Lc/a/a/q/b;->f()Lc/a/a/o/e;

    move-result-object v1

    invoke-interface {p2}, Lc/a/a/q/b;->f()Lc/a/a/o/e;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lc/a/a/o/k/i/c;-><init>(Lc/a/a/o/e;Lc/a/a/o/e;Lc/a/a/o/i/m/c;)V

    .line 3
    new-instance p3, Lc/a/a/o/k/g/c;

    new-instance v1, Lc/a/a/o/k/i/e;

    invoke-direct {v1, v0}, Lc/a/a/o/k/i/e;-><init>(Lc/a/a/o/e;)V

    invoke-direct {p3, v1}, Lc/a/a/o/k/g/c;-><init>(Lc/a/a/o/e;)V

    iput-object p3, p0, Lc/a/a/o/k/i/g;->a:Lc/a/a/o/e;

    .line 4
    iput-object v0, p0, Lc/a/a/o/k/i/g;->b:Lc/a/a/o/e;

    .line 5
    new-instance p3, Lc/a/a/o/k/i/d;

    invoke-interface {p1}, Lc/a/a/q/b;->e()Lc/a/a/o/f;

    move-result-object v0

    invoke-interface {p2}, Lc/a/a/q/b;->e()Lc/a/a/o/f;

    move-result-object p2

    invoke-direct {p3, v0, p2}, Lc/a/a/o/k/i/d;-><init>(Lc/a/a/o/f;Lc/a/a/o/f;)V

    iput-object p3, p0, Lc/a/a/o/k/i/g;->c:Lc/a/a/o/f;

    .line 6
    invoke-interface {p1}, Lc/a/a/q/b;->b()Lc/a/a/o/b;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/o/k/i/g;->d:Lc/a/a/o/b;

    return-void
.end method


# virtual methods
.method public a()Lc/a/a/o/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/e<",
            "Ljava/io/File;",
            "Lc/a/a/o/k/i/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/i/g;->a:Lc/a/a/o/e;

    return-object v0
.end method

.method public b()Lc/a/a/o/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/b<",
            "Lc/a/a/o/j/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/i/g;->d:Lc/a/a/o/b;

    return-object v0
.end method

.method public e()Lc/a/a/o/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/f<",
            "Lc/a/a/o/k/i/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/i/g;->c:Lc/a/a/o/f;

    return-object v0
.end method

.method public f()Lc/a/a/o/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/e<",
            "Lc/a/a/o/j/g;",
            "Lc/a/a/o/k/i/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/i/g;->b:Lc/a/a/o/e;

    return-object v0
.end method
