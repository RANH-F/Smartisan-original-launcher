.class public final Ld/f0/i/i;
.super Ljava/lang/Object;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/f0/i/i$c;,
        Ld/f0/i/i$a;,
        Ld/f0/i/i$b;
    }
.end annotation


# instance fields
.field a:J

.field b:J

.field final c:I

.field final d:Ld/f0/i/g;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/f0/i/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Ld/f0/i/i$b;

.field final h:Ld/f0/i/i$a;

.field final i:Ld/f0/i/i$c;

.field final j:Ld/f0/i/i$c;

.field k:Ld/f0/i/b;


# direct methods
.method constructor <init>(ILd/f0/i/g;ZZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ld/f0/i/g;",
            "ZZ",
            "Ljava/util/List<",
            "Ld/f0/i/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Ld/f0/i/i;->a:J

    .line 3
    new-instance v0, Ld/f0/i/i$c;

    invoke-direct {v0, p0}, Ld/f0/i/i$c;-><init>(Ld/f0/i/i;)V

    iput-object v0, p0, Ld/f0/i/i;->i:Ld/f0/i/i$c;

    .line 4
    new-instance v0, Ld/f0/i/i$c;

    invoke-direct {v0, p0}, Ld/f0/i/i$c;-><init>(Ld/f0/i/i;)V

    iput-object v0, p0, Ld/f0/i/i;->j:Ld/f0/i/i$c;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ld/f0/i/i;->k:Ld/f0/i/b;

    if-eqz p2, :cond_1

    if-eqz p5, :cond_0

    .line 6
    iput p1, p0, Ld/f0/i/i;->c:I

    .line 7
    iput-object p2, p0, Ld/f0/i/i;->d:Ld/f0/i/g;

    .line 8
    iget-object p1, p2, Ld/f0/i/g;->n:Ld/f0/i/n;

    .line 9
    invoke-virtual {p1}, Ld/f0/i/n;->c()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Ld/f0/i/i;->b:J

    .line 10
    new-instance p1, Ld/f0/i/i$b;

    iget-object p2, p2, Ld/f0/i/g;->m:Ld/f0/i/n;

    invoke-virtual {p2}, Ld/f0/i/n;->c()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p1, p0, v0, v1}, Ld/f0/i/i$b;-><init>(Ld/f0/i/i;J)V

    iput-object p1, p0, Ld/f0/i/i;->g:Ld/f0/i/i$b;

    .line 11
    new-instance p1, Ld/f0/i/i$a;

    invoke-direct {p1, p0}, Ld/f0/i/i$a;-><init>(Ld/f0/i/i;)V

    iput-object p1, p0, Ld/f0/i/i;->h:Ld/f0/i/i$a;

    .line 12
    iget-object p1, p0, Ld/f0/i/i;->g:Ld/f0/i/i$b;

    iput-boolean p4, p1, Ld/f0/i/i$b;->e:Z

    .line 13
    iget-object p1, p0, Ld/f0/i/i;->h:Ld/f0/i/i$a;

    iput-boolean p3, p1, Ld/f0/i/i$a;->c:Z

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "requestHeaders == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connection == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Ld/f0/i/b;)Z
    .locals 2

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Ld/f0/i/i;->k:Ld/f0/i/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9
    monitor-exit p0

    return v1

    .line 10
    :cond_0
    iget-object v0, p0, Ld/f0/i/i;->g:Ld/f0/i/i$b;

    iget-boolean v0, v0, Ld/f0/i/i$b;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/f0/i/i;->h:Ld/f0/i/i$a;

    iget-boolean v0, v0, Ld/f0/i/i$a;->c:Z

    if-eqz v0, :cond_1

    .line 11
    monitor-exit p0

    return v1

    .line 12
    :cond_1
    iput-object p1, p0, Ld/f0/i/i;->k:Ld/f0/i/b;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object p1, p0, Ld/f0/i/i;->d:Ld/f0/i/g;

    iget v0, p0, Ld/f0/i/i;->c:I

    invoke-virtual {p1, v0}, Ld/f0/i/g;->d(I)Ld/f0/i/i;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method a()V
    .locals 2

    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Ld/f0/i/i;->g:Ld/f0/i/i$b;

    iget-boolean v0, v0, Ld/f0/i/i$b;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/f0/i/i;->g:Ld/f0/i/i$b;

    iget-boolean v0, v0, Ld/f0/i/i$b;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/f0/i/i;->h:Ld/f0/i/i$a;

    iget-boolean v0, v0, Ld/f0/i/i$a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/f0/i/i;->h:Ld/f0/i/i$a;

    iget-boolean v0, v0, Ld/f0/i/i$a;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0}, Ld/f0/i/i;->g()Z

    move-result v1

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 22
    sget-object v0, Ld/f0/i/b;->g:Ld/f0/i/b;

    invoke-virtual {p0, v0}, Ld/f0/i/i;->a(Ld/f0/i/b;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 23
    iget-object v0, p0, Ld/f0/i/i;->d:Ld/f0/i/g;

    iget v1, p0, Ld/f0/i/i;->c:I

    invoke-virtual {v0, v1}, Ld/f0/i/g;->d(I)Ld/f0/i/i;

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(J)V
    .locals 2

    .line 25
    iget-wide v0, p0, Ld/f0/i/i;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ld/f0/i/i;->b:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public a(Ld/f0/i/b;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ld/f0/i/i;->d(Ld/f0/i/b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ld/f0/i/i;->d:Ld/f0/i/g;

    iget v1, p0, Ld/f0/i/i;->c:I

    invoke-virtual {v0, v1, p1}, Ld/f0/i/g;->b(ILd/f0/i/b;)V

    return-void
.end method

.method a(Le/e;I)V
    .locals 3

    .line 17
    iget-object v0, p0, Ld/f0/i/i;->g:Ld/f0/i/i$b;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Ld/f0/i/i$b;->a(Le/e;J)V

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld/f0/i/c;",
            ">;)V"
        }
    .end annotation

    .line 3
    monitor-enter p0

    const/4 v0, 0x1

    .line 4
    :try_start_0
    iput-boolean v0, p0, Ld/f0/i/i;->f:Z

    .line 5
    iget-object v1, p0, Ld/f0/i/i;->e:Ljava/util/List;

    if-nez v1, :cond_0

    .line 6
    iput-object p1, p0, Ld/f0/i/i;->e:Ljava/util/List;

    .line 7
    invoke-virtual {p0}, Ld/f0/i/i;->g()Z

    move-result v0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v2, p0, Ld/f0/i/i;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    .line 11
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    iput-object v1, p0, Ld/f0/i/i;->e:Ljava/util/List;

    .line 14
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 15
    iget-object p1, p0, Ld/f0/i/i;->d:Ld/f0/i/g;

    iget v0, p0, Ld/f0/i/i;->c:I

    invoke-virtual {p1, v0}, Ld/f0/i/g;->d(I)Ld/f0/i/i;

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method b()V
    .locals 2

    .line 3
    iget-object v0, p0, Ld/f0/i/i;->h:Ld/f0/i/i$a;

    iget-boolean v1, v0, Ld/f0/i/i$a;->b:Z

    if-nez v1, :cond_2

    .line 4
    iget-boolean v0, v0, Ld/f0/i/i$a;->c:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Ld/f0/i/i;->k:Ld/f0/i/b;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v1, Ld/f0/i/o;

    invoke-direct {v1, v0}, Ld/f0/i/o;-><init>(Ld/f0/i/b;)V

    throw v1

    .line 7
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ld/f0/i/b;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ld/f0/i/i;->d(Ld/f0/i/b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ld/f0/i/i;->d:Ld/f0/i/g;

    iget v1, p0, Ld/f0/i/i;->c:I

    invoke-virtual {v0, v1, p1}, Ld/f0/i/g;->c(ILd/f0/i/b;)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Ld/f0/i/i;->c:I

    return v0
.end method

.method declared-synchronized c(Ld/f0/i/b;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ld/f0/i/i;->k:Ld/f0/i/b;

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Ld/f0/i/i;->k:Ld/f0/i/b;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()Le/r;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ld/f0/i/i;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ld/f0/i/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Ld/f0/i/i;->h:Ld/f0/i/i$a;

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()Le/s;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/f0/i/i;->g:Ld/f0/i/i$b;

    return-object v0
.end method

.method public f()Z
    .locals 4

    .line 1
    iget v0, p0, Ld/f0/i/i;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iget-object v3, p0, Ld/f0/i/i;->d:Ld/f0/i/g;

    iget-boolean v3, v3, Ld/f0/i/g;->a:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public declared-synchronized g()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ld/f0/i/i;->k:Ld/f0/i/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Ld/f0/i/i;->g:Ld/f0/i/i$b;

    iget-boolean v0, v0, Ld/f0/i/i$b;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/f0/i/i;->g:Ld/f0/i/i$b;

    iget-boolean v0, v0, Ld/f0/i/i$b;->d:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Ld/f0/i/i;->h:Ld/f0/i/i$a;

    iget-boolean v0, v0, Ld/f0/i/i$a;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ld/f0/i/i;->h:Ld/f0/i/i$a;

    iget-boolean v0, v0, Ld/f0/i/i$a;->b:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Ld/f0/i/i;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 4
    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Le/t;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/f0/i/i;->i:Ld/f0/i/i$c;

    return-object v0
.end method

.method i()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ld/f0/i/i;->g:Ld/f0/i/i$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ld/f0/i/i$b;->e:Z

    .line 3
    invoke-virtual {p0}, Ld/f0/i/i;->g()Z

    move-result v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Ld/f0/i/i;->d:Ld/f0/i/g;

    iget v1, p0, Ld/f0/i/i;->c:I

    invoke-virtual {v0, v1}, Ld/f0/i/g;->d(I)Ld/f0/i/i;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized j()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld/f0/i/c;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ld/f0/i/i;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Ld/f0/i/i;->i:Ld/f0/i/i$c;

    invoke-virtual {v0}, Le/a;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :goto_0
    :try_start_1
    iget-object v0, p0, Ld/f0/i/i;->e:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/f0/i/i;->k:Ld/f0/i/b;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Ld/f0/i/i;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_2
    iget-object v0, p0, Ld/f0/i/i;->i:Ld/f0/i/i$c;

    invoke-virtual {v0}, Ld/f0/i/i$c;->k()V

    .line 6
    iget-object v0, p0, Ld/f0/i/i;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Ld/f0/i/i;->e:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    monitor-exit p0

    return-object v0

    .line 9
    :cond_1
    :try_start_3
    new-instance v0, Ld/f0/i/o;

    iget-object v1, p0, Ld/f0/i/i;->k:Ld/f0/i/b;

    invoke-direct {v0, v1}, Ld/f0/i/o;-><init>(Ld/f0/i/b;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 10
    iget-object v1, p0, Ld/f0/i/i;->i:Ld/f0/i/i$c;

    invoke-virtual {v1}, Ld/f0/i/i$c;->k()V

    throw v0

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "servers cannot read response headers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method k()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public l()Le/t;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/f0/i/i;->j:Ld/f0/i/i$c;

    return-object v0
.end method
