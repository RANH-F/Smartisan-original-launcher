.class Lc/a/a/o/k/h/h;
.super Ljava/lang/Object;
.source "GifFrameResourceDecoder.java"

# interfaces
.implements Lc/a/a/o/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/e<",
        "Lc/a/a/m/a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/i/m/c;


# direct methods
.method public constructor <init>(Lc/a/a/o/i/m/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/o/k/h/h;->a:Lc/a/a/o/i/m/c;

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/m/a;II)Lc/a/a/o/i/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/m/a;",
            "II)",
            "Lc/a/a/o/i/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lc/a/a/m/a;->g()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lc/a/a/o/k/h/h;->a:Lc/a/a/o/i/m/c;

    invoke-static {p1, p2}, Lc/a/a/o/k/e/c;->a(Landroid/graphics/Bitmap;Lc/a/a/o/i/m/c;)Lc/a/a/o/k/e/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lc/a/a/o/i/k;
    .locals 0

    .line 1
    check-cast p1, Lc/a/a/m/a;

    invoke-virtual {p0, p1, p2, p3}, Lc/a/a/o/k/h/h;->a(Lc/a/a/m/a;II)Lc/a/a/o/i/k;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "GifFrameResourceDecoder.com.bumptech.glide.load.resource.gif"

    return-object v0
.end method
