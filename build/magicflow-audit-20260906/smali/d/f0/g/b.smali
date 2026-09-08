.class public final Ld/f0/g/b;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Ld/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/f0/g/b$a;
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Ld/f0/g/b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ld/t$a;)Ld/a0;
    .locals 11

    .line 1
    check-cast p1, Ld/f0/g/g;

    .line 2
    invoke-virtual {p1}, Ld/f0/g/g;->h()Ld/f0/g/c;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ld/f0/g/g;->i()Ld/f0/f/g;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Ld/f0/g/g;->f()Ld/i;

    move-result-object v2

    check-cast v2, Ld/f0/f/c;

    .line 5
    invoke-virtual {p1}, Ld/f0/g/g;->d()Ld/y;

    move-result-object v3

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 7
    invoke-virtual {p1}, Ld/f0/g/g;->g()Ld/p;

    move-result-object v6

    invoke-virtual {p1}, Ld/f0/g/g;->e()Ld/e;

    move-result-object v7

    invoke-virtual {v6, v7}, Ld/p;->d(Ld/e;)V

    .line 8
    invoke-interface {v0, v3}, Ld/f0/g/c;->a(Ld/y;)V

    .line 9
    invoke-virtual {p1}, Ld/f0/g/g;->g()Ld/p;

    move-result-object v6

    invoke-virtual {p1}, Ld/f0/g/g;->e()Ld/e;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ld/p;->a(Ld/e;Ld/y;)V

    .line 10
    invoke-virtual {v3}, Ld/y;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ld/f0/g/f;->b(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ld/y;->a()Ld/z;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "Expect"

    .line 11
    invoke-virtual {v3, v6}, Ld/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "100-continue"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 12
    invoke-interface {v0}, Ld/f0/g/c;->b()V

    .line 13
    invoke-virtual {p1}, Ld/f0/g/g;->g()Ld/p;

    move-result-object v6

    invoke-virtual {p1}, Ld/f0/g/g;->e()Ld/e;

    move-result-object v7

    invoke-virtual {v6, v7}, Ld/p;->f(Ld/e;)V

    const/4 v6, 0x1

    .line 14
    invoke-interface {v0, v6}, Ld/f0/g/c;->a(Z)Ld/a0$a;

    move-result-object v7

    :cond_0
    if-nez v7, :cond_1

    .line 15
    invoke-virtual {p1}, Ld/f0/g/g;->g()Ld/p;

    move-result-object v2

    invoke-virtual {p1}, Ld/f0/g/g;->e()Ld/e;

    move-result-object v6

    invoke-virtual {v2, v6}, Ld/p;->c(Ld/e;)V

    .line 16
    invoke-virtual {v3}, Ld/y;->a()Ld/z;

    move-result-object v2

    invoke-virtual {v2}, Ld/z;->a()J

    move-result-wide v8

    .line 17
    new-instance v2, Ld/f0/g/b$a;

    .line 18
    invoke-interface {v0, v3, v8, v9}, Ld/f0/g/c;->a(Ld/y;J)Le/r;

    move-result-object v6

    invoke-direct {v2, v6}, Ld/f0/g/b$a;-><init>(Le/r;)V

    .line 19
    invoke-static {v2}, Le/l;->a(Le/r;)Le/d;

    move-result-object v6

    .line 20
    invoke-virtual {v3}, Ld/y;->a()Ld/z;

    move-result-object v8

    invoke-virtual {v8, v6}, Ld/z;->a(Le/d;)V

    .line 21
    invoke-interface {v6}, Le/r;->close()V

    .line 22
    invoke-virtual {p1}, Ld/f0/g/g;->g()Ld/p;

    move-result-object v6

    .line 23
    invoke-virtual {p1}, Ld/f0/g/g;->e()Ld/e;

    move-result-object v8

    iget-wide v9, v2, Ld/f0/g/b$a;->b:J

    invoke-virtual {v6, v8, v9, v10}, Ld/p;->a(Ld/e;J)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v2}, Ld/f0/f/c;->d()Z

    move-result v2

    if-nez v2, :cond_2

    .line 25
    invoke-virtual {v1}, Ld/f0/f/g;->e()V

    .line 26
    :cond_2
    :goto_0
    invoke-interface {v0}, Ld/f0/g/c;->a()V

    if-nez v7, :cond_3

    .line 27
    invoke-virtual {p1}, Ld/f0/g/g;->g()Ld/p;

    move-result-object v2

    invoke-virtual {p1}, Ld/f0/g/g;->e()Ld/e;

    move-result-object v6

    invoke-virtual {v2, v6}, Ld/p;->f(Ld/e;)V

    const/4 v2, 0x0

    .line 28
    invoke-interface {v0, v2}, Ld/f0/g/c;->a(Z)Ld/a0$a;

    move-result-object v7

    .line 29
    :cond_3
    invoke-virtual {v7, v3}, Ld/a0$a;->a(Ld/y;)Ld/a0$a;

    .line 30
    invoke-virtual {v1}, Ld/f0/f/g;->c()Ld/f0/f/c;

    move-result-object v2

    invoke-virtual {v2}, Ld/f0/f/c;->c()Ld/q;

    move-result-object v2

    invoke-virtual {v7, v2}, Ld/a0$a;->a(Ld/q;)Ld/a0$a;

    .line 31
    invoke-virtual {v7, v4, v5}, Ld/a0$a;->b(J)Ld/a0$a;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ld/a0$a;->a(J)Ld/a0$a;

    .line 33
    invoke-virtual {v7}, Ld/a0$a;->a()Ld/a0;

    move-result-object v2

    .line 34
    invoke-virtual {p1}, Ld/f0/g/g;->g()Ld/p;

    move-result-object v3

    .line 35
    invoke-virtual {p1}, Ld/f0/g/g;->e()Ld/e;

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Ld/p;->a(Ld/e;Ld/a0;)V

    .line 36
    invoke-virtual {v2}, Ld/a0;->l()I

    move-result p1

    .line 37
    iget-boolean v3, p0, Ld/f0/g/b;->a:Z

    if-eqz v3, :cond_4

    const/16 v3, 0x65

    if-ne p1, v3, :cond_4

    .line 38
    invoke-virtual {v2}, Ld/a0;->p()Ld/a0$a;

    move-result-object v0

    sget-object v2, Ld/f0/c;->c:Ld/b0;

    .line 39
    invoke-virtual {v0, v2}, Ld/a0$a;->a(Ld/b0;)Ld/a0$a;

    .line 40
    invoke-virtual {v0}, Ld/a0$a;->a()Ld/a0;

    move-result-object v0

    goto :goto_1

    .line 41
    :cond_4
    invoke-virtual {v2}, Ld/a0;->p()Ld/a0$a;

    move-result-object v3

    .line 42
    invoke-interface {v0, v2}, Ld/f0/g/c;->a(Ld/a0;)Ld/b0;

    move-result-object v0

    invoke-virtual {v3, v0}, Ld/a0$a;->a(Ld/b0;)Ld/a0$a;

    .line 43
    invoke-virtual {v3}, Ld/a0$a;->a()Ld/a0;

    move-result-object v0

    .line 44
    :goto_1
    invoke-virtual {v0}, Ld/a0;->s()Ld/y;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Ld/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "close"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 45
    invoke-virtual {v0, v3}, Ld/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 46
    :cond_5
    invoke-virtual {v1}, Ld/f0/f/g;->e()V

    :cond_6
    const/16 v1, 0xcc

    if-eq p1, v1, :cond_7

    const/16 v1, 0xcd

    if-ne p1, v1, :cond_8

    .line 47
    :cond_7
    invoke-virtual {v0}, Ld/a0;->j()Ld/b0;

    move-result-object v1

    invoke-virtual {v1}, Ld/b0;->k()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_9

    :cond_8
    return-object v0

    .line 48
    :cond_9
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " had non-zero Content-Length: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ld/a0;->j()Ld/b0;

    move-result-object p1

    invoke-virtual {p1}, Ld/b0;->k()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
