.class Lc/a/a/o/k/i/c$b;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/k/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lc/a/a/o/k/e/l$a;
    .locals 1

    .line 1
    new-instance v0, Lc/a/a/o/k/e/l;

    invoke-direct {v0, p1}, Lc/a/a/o/k/e/l;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lc/a/a/o/k/e/l;->b()Lc/a/a/o/k/e/l$a;

    move-result-object p1

    return-object p1
.end method
