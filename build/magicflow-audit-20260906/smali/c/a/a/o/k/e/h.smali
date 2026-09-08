.class public Lc/a/a/o/k/e/h;
.super Ljava/lang/Object;
.source "FileDescriptorBitmapDecoder.java"

# interfaces
.implements Lc/a/a/o/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/e<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/k/e/s;

.field private final b:Lc/a/a/o/i/m/c;

.field private c:Lc/a/a/o/a;


# direct methods
.method public constructor <init>(Lc/a/a/o/i/m/c;Lc/a/a/o/a;)V
    .locals 1

    .line 1
    new-instance v0, Lc/a/a/o/k/e/s;

    invoke-direct {v0}, Lc/a/a/o/k/e/s;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lc/a/a/o/k/e/h;-><init>(Lc/a/a/o/k/e/s;Lc/a/a/o/i/m/c;Lc/a/a/o/a;)V

    return-void
.end method

.method public constructor <init>(Lc/a/a/o/k/e/s;Lc/a/a/o/i/m/c;Lc/a/a/o/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/a/a/o/k/e/h;->a:Lc/a/a/o/k/e/s;

    .line 4
    iput-object p2, p0, Lc/a/a/o/k/e/h;->b:Lc/a/a/o/i/m/c;

    .line 5
    iput-object p3, p0, Lc/a/a/o/k/e/h;->c:Lc/a/a/o/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;II)Lc/a/a/o/i/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "II)",
            "Lc/a/a/o/i/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/a/a/o/k/e/h;->a:Lc/a/a/o/k/e/s;

    iget-object v2, p0, Lc/a/a/o/k/e/h;->b:Lc/a/a/o/i/m/c;

    iget-object v5, p0, Lc/a/a/o/k/e/h;->c:Lc/a/a/o/a;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lc/a/a/o/k/e/s;->a(Landroid/os/ParcelFileDescriptor;Lc/a/a/o/i/m/c;IILc/a/a/o/a;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lc/a/a/o/k/e/h;->b:Lc/a/a/o/i/m/c;

    invoke-static {p1, p2}, Lc/a/a/o/k/e/c;->a(Landroid/graphics/Bitmap;Lc/a/a/o/i/m/c;)Lc/a/a/o/k/e/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lc/a/a/o/i/k;
    .locals 0

    .line 1
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2, p3}, Lc/a/a/o/k/e/h;->a(Landroid/os/ParcelFileDescriptor;II)Lc/a/a/o/i/k;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method
