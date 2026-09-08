.class public Lc/a/a/q/a;
.super Ljava/lang/Object;
.source "ChildLoadProvider.java"

# interfaces
.implements Lc/a/a/q/f;
.implements Ljava/lang/Cloneable;


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
        "TA;TT;TZ;TR;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/q/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/q/f<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private b:Lc/a/a/o/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/e<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation
.end field

.field private c:Lc/a/a/o/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/e<",
            "TT;TZ;>;"
        }
    .end annotation
.end field

.field private d:Lc/a/a/o/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/f<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private e:Lc/a/a/o/k/j/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/k/j/c<",
            "TZ;TR;>;"
        }
    .end annotation
.end field

.field private f:Lc/a/a/o/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/a/a/q/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/q/f<",
            "TA;TT;TZ;TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/q/a;->a:Lc/a/a/q/f;

    return-void
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

    .line 3
    iget-object v0, p0, Lc/a/a/q/a;->b:Lc/a/a/o/e;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/a/a/q/a;->a:Lc/a/a/q/f;

    invoke-interface {v0}, Lc/a/a/q/b;->a()Lc/a/a/o/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lc/a/a/o/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lc/a/a/q/a;->f:Lc/a/a/o/b;

    return-void
.end method

.method public a(Lc/a/a/o/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/e<",
            "TT;TZ;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/a/a/q/a;->c:Lc/a/a/o/e;

    return-void
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
    iget-object v0, p0, Lc/a/a/q/a;->f:Lc/a/a/o/b;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/a/a/q/a;->a:Lc/a/a/q/f;

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
    iget-object v0, p0, Lc/a/a/q/a;->e:Lc/a/a/o/k/j/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/a/a/q/a;->a:Lc/a/a/q/f;

    invoke-interface {v0}, Lc/a/a/q/f;->c()Lc/a/a/o/k/j/c;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lc/a/a/q/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/q/a<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/q/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/a/a/q/a;->clone()Lc/a/a/q/a;

    move-result-object v0

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
    iget-object v0, p0, Lc/a/a/q/a;->a:Lc/a/a/q/f;

    invoke-interface {v0}, Lc/a/a/q/f;->d()Lc/a/a/o/j/l;

    move-result-object v0

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
    iget-object v0, p0, Lc/a/a/q/a;->d:Lc/a/a/o/f;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/a/a/q/a;->a:Lc/a/a/q/f;

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
    iget-object v0, p0, Lc/a/a/q/a;->c:Lc/a/a/o/e;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/a/a/q/a;->a:Lc/a/a/q/f;

    invoke-interface {v0}, Lc/a/a/q/b;->f()Lc/a/a/o/e;

    move-result-object v0

    return-object v0
.end method
