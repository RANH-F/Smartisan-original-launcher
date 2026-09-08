.class public Lc/a/a/o/k/j/a;
.super Ljava/lang/Object;
.source "GifBitmapWrapperDrawableTranscoder.java"

# interfaces
.implements Lc/a/a/o/k/j/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/k/j/c<",
        "Lc/a/a/o/k/i/a;",
        "Lc/a/a/o/k/f/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/k/j/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/k/j/c<",
            "Landroid/graphics/Bitmap;",
            "Lc/a/a/o/k/e/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/a/a/o/k/j/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/k/j/c<",
            "Landroid/graphics/Bitmap;",
            "Lc/a/a/o/k/e/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/o/k/j/a;->a:Lc/a/a/o/k/j/c;

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/o/i/k;)Lc/a/a/o/i/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "Lc/a/a/o/k/i/a;",
            ">;)",
            "Lc/a/a/o/i/k<",
            "Lc/a/a/o/k/f/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lc/a/a/o/i/k;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/o/k/i/a;

    .line 2
    invoke-virtual {p1}, Lc/a/a/o/k/i/a;->a()Lc/a/a/o/i/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lc/a/a/o/k/j/a;->a:Lc/a/a/o/k/j/c;

    invoke-interface {p1, v0}, Lc/a/a/o/k/j/c;->a(Lc/a/a/o/i/k;)Lc/a/a/o/i/k;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lc/a/a/o/k/i/a;->b()Lc/a/a/o/i/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method
