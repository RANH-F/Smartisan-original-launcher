.class Lc/a/a/o/j/k$a;
.super Lc/a/a/t/e;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a/a/o/j/k;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/t/e<",
        "Lc/a/a/o/j/k$b<",
        "TA;>;TB;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lc/a/a/o/j/k;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lc/a/a/t/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Lc/a/a/o/j/k$b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/j/k$b<",
            "TA;>;TB;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lc/a/a/o/j/k$b;->a()V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lc/a/a/o/j/k$b;

    invoke-virtual {p0, p1, p2}, Lc/a/a/o/j/k$a;->a(Lc/a/a/o/j/k$b;Ljava/lang/Object;)V

    return-void
.end method
