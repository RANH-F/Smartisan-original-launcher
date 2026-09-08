.class public Lc/a/a/o/j/k;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/j/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/t/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/t/e<",
            "Lc/a/a/o/j/k$b<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/a/a/o/j/k$a;

    invoke-direct {v0, p0, p1}, Lc/a/a/o/j/k$a;-><init>(Lc/a/a/o/j/k;I)V

    iput-object v0, p0, Lc/a/a/o/j/k;->a:Lc/a/a/t/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lc/a/a/o/j/k$b;->a(Ljava/lang/Object;II)Lc/a/a/o/j/k$b;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lc/a/a/o/j/k;->a:Lc/a/a/t/e;

    invoke-virtual {p2, p1}, Lc/a/a/t/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lc/a/a/o/j/k$b;->a()V

    return-object p2
.end method

.method public a(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    .line 4
    invoke-static {p1, p2, p3}, Lc/a/a/o/j/k$b;->a(Ljava/lang/Object;II)Lc/a/a/o/j/k$b;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lc/a/a/o/j/k;->a:Lc/a/a/t/e;

    invoke-virtual {p2, p1, p4}, Lc/a/a/t/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
