.class public final Ld/a0;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a0$a;
    }
.end annotation


# instance fields
.field final a:Ld/y;

.field final b:Ld/w;

.field final c:I

.field final d:Ljava/lang/String;

.field final e:Ld/q;

.field final f:Ld/r;

.field final g:Ld/b0;

.field final h:Ld/a0;

.field final i:Ld/a0;

.field final j:Ld/a0;

.field final k:J

.field final l:J

.field private volatile m:Ld/d;


# direct methods
.method constructor <init>(Ld/a0$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ld/a0$a;->a:Ld/y;

    iput-object v0, p0, Ld/a0;->a:Ld/y;

    .line 3
    iget-object v0, p1, Ld/a0$a;->b:Ld/w;

    iput-object v0, p0, Ld/a0;->b:Ld/w;

    .line 4
    iget v0, p1, Ld/a0$a;->c:I

    iput v0, p0, Ld/a0;->c:I

    .line 5
    iget-object v0, p1, Ld/a0$a;->d:Ljava/lang/String;

    iput-object v0, p0, Ld/a0;->d:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Ld/a0$a;->e:Ld/q;

    iput-object v0, p0, Ld/a0;->e:Ld/q;

    .line 7
    iget-object v0, p1, Ld/a0$a;->f:Ld/r$a;

    invoke-virtual {v0}, Ld/r$a;->a()Ld/r;

    move-result-object v0

    iput-object v0, p0, Ld/a0;->f:Ld/r;

    .line 8
    iget-object v0, p1, Ld/a0$a;->g:Ld/b0;

    iput-object v0, p0, Ld/a0;->g:Ld/b0;

    .line 9
    iget-object v0, p1, Ld/a0$a;->h:Ld/a0;

    iput-object v0, p0, Ld/a0;->h:Ld/a0;

    .line 10
    iget-object v0, p1, Ld/a0$a;->i:Ld/a0;

    iput-object v0, p0, Ld/a0;->i:Ld/a0;

    .line 11
    iget-object v0, p1, Ld/a0$a;->j:Ld/a0;

    iput-object v0, p0, Ld/a0;->j:Ld/a0;

    .line 12
    iget-wide v0, p1, Ld/a0$a;->k:J

    iput-wide v0, p0, Ld/a0;->k:J

    .line 13
    iget-wide v0, p1, Ld/a0$a;->l:J

    iput-wide v0, p0, Ld/a0;->l:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a0;->f:Ld/r;

    invoke-virtual {v0, p1}, Ld/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Ld/a0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/a0;->g:Ld/b0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ld/b0;->close()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()Ld/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a0;->g:Ld/b0;

    return-object v0
.end method

.method public k()Ld/d;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a0;->m:Ld/d;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ld/a0;->f:Ld/r;

    invoke-static {v0}, Ld/d;->a(Ld/r;)Ld/d;

    move-result-object v0

    iput-object v0, p0, Ld/a0;->m:Ld/d;

    :goto_0
    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Ld/a0;->c:I

    return v0
.end method

.method public m()Ld/q;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a0;->e:Ld/q;

    return-object v0
.end method

.method public n()Ld/r;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a0;->f:Ld/r;

    return-object v0
.end method

.method public o()Z
    .locals 2

    .line 1
    iget v0, p0, Ld/a0;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Ld/a0$a;
    .locals 1

    .line 1
    new-instance v0, Ld/a0$a;

    invoke-direct {v0, p0}, Ld/a0$a;-><init>(Ld/a0;)V

    return-object v0
.end method

.method public q()Ld/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a0;->j:Ld/a0;

    return-object v0
.end method

.method public r()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ld/a0;->l:J

    return-wide v0
.end method

.method public s()Ld/y;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a0;->a:Ld/y;

    return-object v0
.end method

.method public t()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ld/a0;->k:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/a0;->b:Ld/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ld/a0;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/a0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/a0;->a:Ld/y;

    .line 2
    invoke-virtual {v1}, Ld/y;->g()Ld/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
