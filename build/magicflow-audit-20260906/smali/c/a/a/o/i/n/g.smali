.class public Lc/a/a/o/i/n/g;
.super Lc/a/a/t/e;
.source "LruResourceCache.java"

# interfaces
.implements Lc/a/a/o/i/n/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/t/e<",
        "Lc/a/a/o/c;",
        "Lc/a/a/o/i/k<",
        "*>;>;",
        "Lc/a/a/o/i/n/h;"
    }
.end annotation


# instance fields
.field private d:Lc/a/a/o/i/n/h$a;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/a/a/t/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Lc/a/a/o/i/k;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "*>;)I"
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Lc/a/a/o/i/k;->b()I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Lc/a/a/o/c;)Lc/a/a/o/i/k;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lc/a/a/t/e;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/o/i/k;

    return-object p1
.end method

.method public bridge synthetic a(Lc/a/a/o/c;Lc/a/a/o/i/k;)Lc/a/a/o/i/k;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lc/a/a/t/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/o/i/k;

    return-object p1
.end method

.method public a(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lc/a/a/t/e;->a()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lc/a/a/t/e;->b()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lc/a/a/t/e;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lc/a/a/o/i/n/h$a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lc/a/a/o/i/n/g;->d:Lc/a/a/o/i/n/h$a;

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lc/a/a/o/c;

    check-cast p2, Lc/a/a/o/i/k;

    invoke-virtual {p0, p1, p2}, Lc/a/a/o/i/n/g;->b(Lc/a/a/o/c;Lc/a/a/o/i/k;)V

    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lc/a/a/o/i/k;

    invoke-virtual {p0, p1}, Lc/a/a/o/i/n/g;->a(Lc/a/a/o/i/k;)I

    move-result p1

    return p1
.end method

.method protected b(Lc/a/a/o/c;Lc/a/a/o/i/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/c;",
            "Lc/a/a/o/i/k<",
            "*>;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lc/a/a/o/i/n/g;->d:Lc/a/a/o/i/n/h$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lc/a/a/o/i/n/h$a;->a(Lc/a/a/o/i/k;)V

    :cond_0
    return-void
.end method
