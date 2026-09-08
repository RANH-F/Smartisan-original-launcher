.class public Lc/a/a/q/e;
.super Ljava/lang/Object;
.source "FixedLoadProvider.java"

# interfaces
.implements Lc/a/a/q/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/a/a/q/f<",
        "TA;TT;TZ;TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/o/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/j/l<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field private final b:Lc/a/a/o/k/j/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/k/j/c<",
            "TZ;TR;>;"
        }
    .end annotation
.end field

.field private final c:Lc/a/a/q/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/q/b<",
            "TT;TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/a/a/o/j/l;Lc/a/a/o/k/j/c;Lc/a/a/q/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/j/l<",
            "TA;TT;>;",
            "Lc/a/a/o/k/j/c<",
            "TZ;TR;>;",
            "Lc/a/a/q/b<",
            "TT;TZ;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 2
    iput-object p1, p0, Lc/a/a/q/e;->a:Lc/a/a/o/j/l;

    if-eqz p2, :cond_1

    .line 3
    iput-object p2, p0, Lc/a/a/q/e;->b:Lc/a/a/o/k/j/c;

    if-eqz p3, :cond_0

    .line 4
    iput-object p3, p0, Lc/a/a/q/e;->c:Lc/a/a/q/b;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "DataLoadProvider must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Transcoder must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ModelLoader must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lc/a/a/o/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/e<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/q/e;->c:Lc/a/a/q/b;

    invoke-interface {v0}, Lc/a/a/q/b;->a()Lc/a/a/o/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lc/a/a/o/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/q/e;->c:Lc/a/a/q/b;

    invoke-interface {v0}, Lc/a/a/q/b;->b()Lc/a/a/o/b;

    move-result-object v0

    return-object v0
.end method

.method public c()Lc/a/a/o/k/j/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/k/j/c<",
            "TZ;TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/q/e;->b:Lc/a/a/o/k/j/c;

    return-object v0
.end method

.method public d()Lc/a/a/o/j/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/j/l<",
            "TA;TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/q/e;->a:Lc/a/a/o/j/l;

    return-object v0
.end method

.method public e()Lc/a/a/o/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/f<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/q/e;->c:Lc/a/a/q/b;

    invoke-interface {v0}, Lc/a/a/q/b;->e()Lc/a/a/o/f;

    move-result-object v0

    return-object v0
.end method

.method public f()Lc/a/a/o/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/o/e<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/q/e;->c:Lc/a/a/q/b;

    invoke-interface {v0}, Lc/a/a/q/b;->f()Lc/a/a/o/e;

    move-result-object v0

    return-object v0
.end method
