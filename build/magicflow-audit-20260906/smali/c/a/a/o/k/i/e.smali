.class public Lc/a/a/o/k/i/e;
.super Ljava/lang/Object;
.source "GifBitmapWrapperStreamResourceDecoder.java"

# interfaces
.implements Lc/a/a/o/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/e<",
        "Ljava/io/InputStream;",
        "Lc/a/a/o/k/i/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/e<",
            "Lc/a/a/o/j/g;",
            "Lc/a/a/o/k/i/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/a/a/o/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/e<",
            "Lc/a/a/o/j/g;",
            "Lc/a/a/o/k/i/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/o/k/i/e;->a:Lc/a/a/o/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;II)Lc/a/a/o/i/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lc/a/a/o/i/k<",
            "Lc/a/a/o/k/i/a;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/a/a/o/k/i/e;->a:Lc/a/a/o/e;

    new-instance v1, Lc/a/a/o/j/g;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lc/a/a/o/j/g;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1, p2, p3}, Lc/a/a/o/e;->a(Ljava/lang/Object;II)Lc/a/a/o/i/k;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lc/a/a/o/i/k;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lc/a/a/o/k/i/e;->a(Ljava/io/InputStream;II)Lc/a/a/o/i/k;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/k/i/e;->a:Lc/a/a/o/e;

    invoke-interface {v0}, Lc/a/a/o/e;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
