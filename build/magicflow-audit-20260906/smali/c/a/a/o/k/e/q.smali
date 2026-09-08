.class public Lc/a/a/o/k/e/q;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lc/a/a/o/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/e<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/k/e/f;

.field private b:Lc/a/a/o/i/m/c;

.field private c:Lc/a/a/o/a;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc/a/a/o/i/m/c;Lc/a/a/o/a;)V
    .locals 1

    .line 1
    sget-object v0, Lc/a/a/o/k/e/f;->c:Lc/a/a/o/k/e/f;

    invoke-direct {p0, v0, p1, p2}, Lc/a/a/o/k/e/q;-><init>(Lc/a/a/o/k/e/f;Lc/a/a/o/i/m/c;Lc/a/a/o/a;)V

    return-void
.end method

.method public constructor <init>(Lc/a/a/o/k/e/f;Lc/a/a/o/i/m/c;Lc/a/a/o/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/a/a/o/k/e/q;->a:Lc/a/a/o/k/e/f;

    .line 4
    iput-object p2, p0, Lc/a/a/o/k/e/q;->b:Lc/a/a/o/i/m/c;

    .line 5
    iput-object p3, p0, Lc/a/a/o/k/e/q;->c:Lc/a/a/o/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;II)Lc/a/a/o/i/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lc/a/a/o/i/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/a/a/o/k/e/q;->a:Lc/a/a/o/k/e/f;

    iget-object v2, p0, Lc/a/a/o/k/e/q;->b:Lc/a/a/o/i/m/c;

    iget-object v5, p0, Lc/a/a/o/k/e/q;->c:Lc/a/a/o/a;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lc/a/a/o/k/e/f;->a(Ljava/io/InputStream;Lc/a/a/o/i/m/c;IILc/a/a/o/a;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lc/a/a/o/k/e/q;->b:Lc/a/a/o/i/m/c;

    invoke-static {p1, p2}, Lc/a/a/o/k/e/c;->a(Landroid/graphics/Bitmap;Lc/a/a/o/i/m/c;)Lc/a/a/o/k/e/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lc/a/a/o/i/k;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lc/a/a/o/k/e/q;->a(Ljava/io/InputStream;II)Lc/a/a/o/i/k;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/e/q;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/a/o/k/e/q;->a:Lc/a/a/o/k/e/f;

    invoke-interface {v1}, Lc/a/a/o/k/e/a;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/a/o/k/e/q;->c:Lc/a/a/o/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/o/k/e/q;->d:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lc/a/a/o/k/e/q;->d:Ljava/lang/String;

    return-object v0
.end method
