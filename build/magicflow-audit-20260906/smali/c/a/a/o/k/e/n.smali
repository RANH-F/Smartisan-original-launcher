.class public Lc/a/a/o/k/e/n;
.super Ljava/lang/Object;
.source "ImageVideoDataLoadProvider.java"

# interfaces
.implements Lc/a/a/q/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/q/b<",
        "Lc/a/a/o/j/g;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/k/e/m;

.field private final b:Lc/a/a/o/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/e<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lc/a/a/o/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/f<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lc/a/a/o/j/h;


# direct methods
.method public constructor <init>(Lc/a/a/q/b;Lc/a/a/q/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/q/b<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lc/a/a/q/b<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lc/a/a/q/b;->e()Lc/a/a/o/f;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/o/k/e/n;->c:Lc/a/a/o/f;

    .line 3
    new-instance v0, Lc/a/a/o/j/h;

    invoke-interface {p1}, Lc/a/a/q/b;->b()Lc/a/a/o/b;

    move-result-object v1

    invoke-interface {p2}, Lc/a/a/q/b;->b()Lc/a/a/o/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/a/a/o/j/h;-><init>(Lc/a/a/o/b;Lc/a/a/o/b;)V

    iput-object v0, p0, Lc/a/a/o/k/e/n;->d:Lc/a/a/o/j/h;

    .line 4
    invoke-interface {p1}, Lc/a/a/q/b;->a()Lc/a/a/o/e;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/o/k/e/n;->b:Lc/a/a/o/e;

    .line 5
    new-instance v0, Lc/a/a/o/k/e/m;

    invoke-interface {p1}, Lc/a/a/q/b;->f()Lc/a/a/o/e;

    move-result-object p1

    invoke-interface {p2}, Lc/a/a/q/b;->f()Lc/a/a/o/e;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lc/a/a/o/k/e/m;-><init>(Lc/a/a/o/e;Lc/a/a/o/e;)V

    iput-object v0, p0, Lc/a/a/o/k/e/n;->a:Lc/a/a/o/k/e/m;

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
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/e/n;->b:Lc/a/a/o/e;

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
    iget-object v0, p0, Lc/a/a/o/k/e/n;->d:Lc/a/a/o/j/h;

    return-object v0
.end method

.method public e()Lc/a/a/o/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/f<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/e/n;->c:Lc/a/a/o/f;

    return-object v0
.end method

.method public f()Lc/a/a/o/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/e<",
            "Lc/a/a/o/j/g;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/e/n;->a:Lc/a/a/o/k/e/m;

    return-object v0
.end method
