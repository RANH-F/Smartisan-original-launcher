.class public Lc/a/a/o/k/e/g;
.super Ljava/lang/Object;
.source "FileDescriptorBitmapDataLoadProvider.java"

# interfaces
.implements Lc/a/a/q/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/q/b<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/e<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/a/a/o/k/e/h;

.field private final c:Lc/a/a/o/k/e/b;

.field private final d:Lc/a/a/o/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/b<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/a/a/o/i/m/c;Lc/a/a/o/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/a/a/o/k/g/c;

    new-instance v1, Lc/a/a/o/k/e/q;

    invoke-direct {v1, p1, p2}, Lc/a/a/o/k/e/q;-><init>(Lc/a/a/o/i/m/c;Lc/a/a/o/a;)V

    invoke-direct {v0, v1}, Lc/a/a/o/k/g/c;-><init>(Lc/a/a/o/e;)V

    iput-object v0, p0, Lc/a/a/o/k/e/g;->a:Lc/a/a/o/e;

    .line 3
    new-instance v0, Lc/a/a/o/k/e/h;

    invoke-direct {v0, p1, p2}, Lc/a/a/o/k/e/h;-><init>(Lc/a/a/o/i/m/c;Lc/a/a/o/a;)V

    iput-object v0, p0, Lc/a/a/o/k/e/g;->b:Lc/a/a/o/k/e/h;

    .line 4
    new-instance p1, Lc/a/a/o/k/e/b;

    invoke-direct {p1}, Lc/a/a/o/k/e/b;-><init>()V

    iput-object p1, p0, Lc/a/a/o/k/e/g;->c:Lc/a/a/o/k/e/b;

    .line 5
    invoke-static {}, Lc/a/a/o/k/a;->a()Lc/a/a/o/b;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/o/k/e/g;->d:Lc/a/a/o/b;

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
    iget-object v0, p0, Lc/a/a/o/k/e/g;->a:Lc/a/a/o/e;

    return-object v0
.end method

.method public b()Lc/a/a/o/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/b<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/e/g;->d:Lc/a/a/o/b;

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
    iget-object v0, p0, Lc/a/a/o/k/e/g;->c:Lc/a/a/o/k/e/b;

    return-object v0
.end method

.method public f()Lc/a/a/o/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/e<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/e/g;->b:Lc/a/a/o/k/e/h;

    return-object v0
.end method
