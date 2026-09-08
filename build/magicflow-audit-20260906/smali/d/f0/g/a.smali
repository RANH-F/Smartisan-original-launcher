.class public final Ld/f0/g/a;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Ld/t;


# instance fields
.field private final a:Ld/m;


# direct methods
.method public constructor <init>(Ld/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/f0/g/a;->a:Ld/m;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld/l;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const-string v3, "; "

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/l;

    .line 41
    invoke-virtual {v3}, Ld/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ld/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ld/t$a;)Ld/a0;
    .locals 10

    .line 1
    invoke-interface {p1}, Ld/t$a;->d()Ld/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ld/y;->f()Ld/y$a;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ld/y;->a()Ld/z;

    move-result-object v2

    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Ld/z;->b()Ld/u;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 5
    invoke-virtual {v7}, Ld/u;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Ld/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Ld/y$a;

    .line 6
    :cond_0
    invoke-virtual {v2}, Ld/z;->a()J

    move-result-wide v7

    cmp-long v2, v7, v4

    const-string v9, "Transfer-Encoding"

    if-eqz v2, :cond_1

    .line 7
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Ld/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Ld/y$a;

    .line 8
    invoke-virtual {v1, v9}, Ld/y$a;->a(Ljava/lang/String;)Ld/y$a;

    goto :goto_0

    :cond_1
    const-string v2, "chunked"

    .line 9
    invoke-virtual {v1, v9, v2}, Ld/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Ld/y$a;

    .line 10
    invoke-virtual {v1, v6}, Ld/y$a;->a(Ljava/lang/String;)Ld/y$a;

    :cond_2
    :goto_0
    const-string v2, "Host"

    .line 11
    invoke-virtual {v0, v2}, Ld/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    .line 12
    invoke-virtual {v0}, Ld/y;->g()Ld/s;

    move-result-object v7

    invoke-static {v7, v8}, Ld/f0/c;->a(Ld/s;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ld/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Ld/y$a;

    :cond_3
    const-string v2, "Connection"

    .line 13
    invoke-virtual {v0, v2}, Ld/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "Keep-Alive"

    .line 14
    invoke-virtual {v1, v2, v7}, Ld/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Ld/y$a;

    :cond_4
    const-string v2, "Accept-Encoding"

    .line 15
    invoke-virtual {v0, v2}, Ld/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "gzip"

    if-nez v7, :cond_5

    const-string v7, "Range"

    invoke-virtual {v0, v7}, Ld/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v8, 0x1

    .line 16
    invoke-virtual {v1, v2, v9}, Ld/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Ld/y$a;

    .line 17
    :cond_5
    iget-object v2, p0, Ld/f0/g/a;->a:Ld/m;

    invoke-virtual {v0}, Ld/y;->g()Ld/s;

    move-result-object v7

    invoke-interface {v2, v7}, Ld/m;->a(Ld/s;)Ljava/util/List;

    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 19
    invoke-direct {p0, v2}, Ld/f0/g/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "Cookie"

    invoke-virtual {v1, v7, v2}, Ld/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Ld/y$a;

    :cond_6
    const-string v2, "User-Agent"

    .line 20
    invoke-virtual {v0, v2}, Ld/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    .line 21
    invoke-static {}, Ld/f0/d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ld/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Ld/y$a;

    .line 22
    :cond_7
    invoke-virtual {v1}, Ld/y$a;->a()Ld/y;

    move-result-object v1

    invoke-interface {p1, v1}, Ld/t$a;->a(Ld/y;)Ld/a0;

    move-result-object p1

    .line 23
    iget-object v1, p0, Ld/f0/g/a;->a:Ld/m;

    invoke-virtual {v0}, Ld/y;->g()Ld/s;

    move-result-object v2

    invoke-virtual {p1}, Ld/a0;->n()Ld/r;

    move-result-object v7

    invoke-static {v1, v2, v7}, Ld/f0/g/e;->a(Ld/m;Ld/s;Ld/r;)V

    .line 24
    invoke-virtual {p1}, Ld/a0;->p()Ld/a0$a;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Ld/a0$a;->a(Ld/y;)Ld/a0$a;

    if-eqz v8, :cond_8

    const-string v0, "Content-Encoding"

    .line 26
    invoke-virtual {p1, v0}, Ld/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 27
    invoke-static {p1}, Ld/f0/g/e;->b(Ld/a0;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 28
    new-instance v2, Le/j;

    invoke-virtual {p1}, Ld/a0;->j()Ld/b0;

    move-result-object v7

    invoke-virtual {v7}, Ld/b0;->m()Le/e;

    move-result-object v7

    invoke-direct {v2, v7}, Le/j;-><init>(Le/s;)V

    .line 29
    invoke-virtual {p1}, Ld/a0;->n()Ld/r;

    move-result-object v7

    invoke-virtual {v7}, Ld/r;->a()Ld/r$a;

    move-result-object v7

    .line 30
    invoke-virtual {v7, v0}, Ld/r$a;->b(Ljava/lang/String;)Ld/r$a;

    .line 31
    invoke-virtual {v7, v6}, Ld/r$a;->b(Ljava/lang/String;)Ld/r$a;

    .line 32
    invoke-virtual {v7}, Ld/r$a;->a()Ld/r;

    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Ld/a0$a;->a(Ld/r;)Ld/a0$a;

    .line 34
    invoke-virtual {p1, v3}, Ld/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v0, Ld/f0/g/h;

    invoke-static {v2}, Le/l;->a(Le/s;)Le/e;

    move-result-object v2

    invoke-direct {v0, p1, v4, v5, v2}, Ld/f0/g/h;-><init>(Ljava/lang/String;JLe/e;)V

    invoke-virtual {v1, v0}, Ld/a0$a;->a(Ld/b0;)Ld/a0$a;

    .line 36
    :cond_8
    invoke-virtual {v1}, Ld/a0$a;->a()Ld/a0;

    move-result-object p1

    return-object p1
.end method
