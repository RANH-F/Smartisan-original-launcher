.class public final Ld/y;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/y$a;
    }
.end annotation


# instance fields
.field final a:Ld/s;

.field final b:Ljava/lang/String;

.field final c:Ld/r;

.field final d:Ld/z;

.field final e:Ljava/lang/Object;

.field private volatile f:Ld/d;


# direct methods
.method constructor <init>(Ld/y$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ld/y$a;->a:Ld/s;

    iput-object v0, p0, Ld/y;->a:Ld/s;

    .line 3
    iget-object v0, p1, Ld/y$a;->b:Ljava/lang/String;

    iput-object v0, p0, Ld/y;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Ld/y$a;->c:Ld/r$a;

    invoke-virtual {v0}, Ld/r$a;->a()Ld/r;

    move-result-object v0

    iput-object v0, p0, Ld/y;->c:Ld/r;

    .line 5
    iget-object v0, p1, Ld/y$a;->d:Ld/z;

    iput-object v0, p0, Ld/y;->d:Ld/z;

    .line 6
    iget-object p1, p1, Ld/y$a;->e:Ljava/lang/Object;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, p0, Ld/y;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ld/z;
    .locals 1

    .line 2
    iget-object v0, p0, Ld/y;->d:Ld/z;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/y;->c:Ld/r;

    invoke-virtual {v0, p1}, Ld/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ld/d;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/y;->f:Ld/d;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ld/y;->c:Ld/r;

    invoke-static {v0}, Ld/d;->a(Ld/r;)Ld/d;

    move-result-object v0

    iput-object v0, p0, Ld/y;->f:Ld/d;

    :goto_0
    return-object v0
.end method

.method public c()Ld/r;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/y;->c:Ld/r;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld/y;->a:Ld/s;

    invoke-virtual {v0}, Ld/s;->h()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ld/y$a;
    .locals 1

    .line 1
    new-instance v0, Ld/y$a;

    invoke-direct {v0, p0}, Ld/y$a;-><init>(Ld/y;)V

    return-object v0
.end method

.method public g()Ld/s;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/y;->a:Ld/s;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/y;->a:Ld/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/y;->e:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
