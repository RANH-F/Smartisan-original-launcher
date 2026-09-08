.class public Lc/a/a/o/j/t/a;
.super Ljava/lang/Object;
.source "HttpUrlGlideUrlLoader.java"

# interfaces
.implements Lc/a/a/o/j/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/j/t/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/o/j/l<",
        "Lc/a/a/o/j/d;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/j/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/j/k<",
            "Lc/a/a/o/j/d;",
            "Lc/a/a/o/j/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/a/a/o/j/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/j/k<",
            "Lc/a/a/o/j/d;",
            "Lc/a/a/o/j/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/o/j/t/a;->a:Lc/a/a/o/j/k;

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/o/j/d;II)Lc/a/a/o/h/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/j/d;",
            "II)",
            "Lc/a/a/o/h/c<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lc/a/a/o/j/t/a;->a:Lc/a/a/o/j/k;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p2, p1, p3, p3}, Lc/a/a/o/j/k;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/a/a/o/j/d;

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lc/a/a/o/j/t/a;->a:Lc/a/a/o/j/k;

    invoke-virtual {p2, p1, p3, p3, p1}, Lc/a/a/o/j/k;->a(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 5
    :cond_1
    :goto_0
    new-instance p2, Lc/a/a/o/h/f;

    invoke-direct {p2, p1}, Lc/a/a/o/h/f;-><init>(Lc/a/a/o/j/d;)V

    return-object p2
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lc/a/a/o/h/c;
    .locals 0

    .line 1
    check-cast p1, Lc/a/a/o/j/d;

    invoke-virtual {p0, p1, p2, p3}, Lc/a/a/o/j/t/a;->a(Lc/a/a/o/j/d;II)Lc/a/a/o/h/c;

    move-result-object p1

    return-object p1
.end method
