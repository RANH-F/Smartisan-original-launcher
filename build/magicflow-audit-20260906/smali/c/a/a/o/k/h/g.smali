.class Lc/a/a/o/k/h/g;
.super Ljava/lang/Object;
.source "GifFrameModelLoader.java"

# interfaces
.implements Lc/a/a/o/j/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/k/h/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/j/l<",
        "Lc/a/a/m/a;",
        "Lc/a/a/m/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/m/a;II)Lc/a/a/o/h/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/m/a;",
            "II)",
            "Lc/a/a/o/h/c<",
            "Lc/a/a/m/a;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p2, Lc/a/a/o/k/h/g$a;

    invoke-direct {p2, p1}, Lc/a/a/o/k/h/g$a;-><init>(Lc/a/a/m/a;)V

    return-object p2
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lc/a/a/o/h/c;
    .locals 0

    .line 1
    check-cast p1, Lc/a/a/m/a;

    invoke-virtual {p0, p1, p2, p3}, Lc/a/a/o/k/h/g;->a(Lc/a/a/m/a;II)Lc/a/a/o/h/c;

    move-result-object p1

    return-object p1
.end method
