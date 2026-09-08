.class final Ld/f0/i/i$b;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Le/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/f0/i/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Le/c;

.field private final b:Le/c;

.field private final c:J

.field d:Z

.field e:Z

.field final synthetic f:Ld/f0/i/i;


# direct methods
.method constructor <init>(Ld/f0/i/i;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Le/c;

    invoke-direct {p1}, Le/c;-><init>()V

    iput-object p1, p0, Ld/f0/i/i$b;->a:Le/c;

    .line 3
    new-instance p1, Le/c;

    invoke-direct {p1}, Le/c;-><init>()V

    iput-object p1, p0, Ld/f0/i/i$b;->b:Le/c;

    .line 4
    iput-wide p2, p0, Ld/f0/i/i$b;->c:J

    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ld/f0/i/i$b;->d:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-object v0, v0, Ld/f0/i/i;->k:Ld/f0/i/b;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Ld/f0/i/o;

    invoke-direct {v1, v0}, Ld/f0/i/o;-><init>(Ld/f0/i/b;)V

    throw v1

    .line 4
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-object v0, v0, Ld/f0/i/i;->i:Ld/f0/i/i$c;

    invoke-virtual {v0}, Le/a;->g()V

    .line 2
    :goto_0
    :try_start_0
    iget-object v0, p0, Ld/f0/i/i$b;->b:Le/c;

    invoke-virtual {v0}, Le/c;->q()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ld/f0/i/i$b;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ld/f0/i/i$b;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-object v0, v0, Ld/f0/i/i;->k:Ld/f0/i/b;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    invoke-virtual {v0}, Ld/f0/i/i;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-object v0, v0, Ld/f0/i/i;->i:Ld/f0/i/i$c;

    invoke-virtual {v0}, Ld/f0/i/i$c;->k()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-object v1, v1, Ld/f0/i/i;->i:Ld/f0/i/i$c;

    invoke-virtual {v1}, Ld/f0/i/i$c;->k()V

    throw v0
.end method


# virtual methods
.method public a(Le/c;J)J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    .line 1
    iget-object v2, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    monitor-enter v2

    .line 2
    :try_start_0
    invoke-direct {p0}, Ld/f0/i/i$b;->j()V

    .line 3
    invoke-direct {p0}, Ld/f0/i/i$b;->i()V

    .line 4
    iget-object v3, p0, Ld/f0/i/i$b;->b:Le/c;

    invoke-virtual {v3}, Le/c;->q()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_0

    const-wide/16 p1, -0x1

    monitor-exit v2

    return-wide p1

    .line 5
    :cond_0
    iget-object v3, p0, Ld/f0/i/i$b;->b:Le/c;

    iget-object v4, p0, Ld/f0/i/i$b;->b:Le/c;

    invoke-virtual {v4}, Le/c;->q()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Le/c;->a(Le/c;J)J

    move-result-wide p1

    .line 6
    iget-object p3, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-wide v3, p3, Ld/f0/i/i;->a:J

    add-long/2addr v3, p1

    iput-wide v3, p3, Ld/f0/i/i;->a:J

    .line 7
    iget-object p3, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-wide v3, p3, Ld/f0/i/i;->a:J

    iget-object p3, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-object p3, p3, Ld/f0/i/i;->d:Ld/f0/i/g;

    iget-object p3, p3, Ld/f0/i/g;->m:Ld/f0/i/n;

    .line 8
    invoke-virtual {p3}, Ld/f0/i/n;->c()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v5, p3

    cmp-long p3, v3, v5

    if-ltz p3, :cond_1

    .line 9
    iget-object p3, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-object p3, p3, Ld/f0/i/i;->d:Ld/f0/i/g;

    iget-object v3, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget v3, v3, Ld/f0/i/i;->c:I

    iget-object v4, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-wide v4, v4, Ld/f0/i/i;->a:J

    invoke-virtual {p3, v3, v4, v5}, Ld/f0/i/g;->a(IJ)V

    .line 10
    iget-object p3, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iput-wide v0, p3, Ld/f0/i/i;->a:J

    .line 11
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    iget-object p3, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-object p3, p3, Ld/f0/i/i;->d:Ld/f0/i/g;

    monitor-enter p3

    .line 13
    :try_start_1
    iget-object v2, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-object v2, v2, Ld/f0/i/i;->d:Ld/f0/i/g;

    iget-wide v3, v2, Ld/f0/i/g;->k:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Ld/f0/i/g;->k:J

    .line 14
    iget-object v2, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-object v2, v2, Ld/f0/i/i;->d:Ld/f0/i/g;

    iget-wide v2, v2, Ld/f0/i/g;->k:J

    iget-object v4, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-object v4, v4, Ld/f0/i/i;->d:Ld/f0/i/g;

    iget-object v4, v4, Ld/f0/i/g;->m:Ld/f0/i/n;

    .line 15
    invoke-virtual {v4}, Ld/f0/i/n;->c()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 16
    iget-object v2, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-object v2, v2, Ld/f0/i/i;->d:Ld/f0/i/g;

    const/4 v3, 0x0

    iget-object v4, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-object v4, v4, Ld/f0/i/i;->d:Ld/f0/i/g;

    iget-wide v4, v4, Ld/f0/i/g;->k:J

    invoke-virtual {v2, v3, v4, v5}, Ld/f0/i/g;->a(IJ)V

    .line 17
    iget-object v2, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-object v2, v2, Ld/f0/i/i;->d:Ld/f0/i/g;

    iput-wide v0, v2, Ld/f0/i/g;->k:J

    .line 18
    :cond_2
    monitor-exit p3

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 19
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Le/e;J)V
    .locals 9

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6

    .line 21
    iget-object v2, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    monitor-enter v2

    .line 22
    :try_start_0
    iget-boolean v3, p0, Ld/f0/i/i$b;->e:Z

    .line 23
    iget-object v4, p0, Ld/f0/i/i$b;->b:Le/c;

    invoke-virtual {v4}, Le/c;->q()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Ld/f0/i/i$b;->c:J

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v6

    .line 24
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    .line 25
    invoke-interface {p1, p2, p3}, Le/e;->skip(J)V

    .line 26
    iget-object p1, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    sget-object p2, Ld/f0/i/b;->e:Ld/f0/i/b;

    invoke-virtual {p1, p2}, Ld/f0/i/i;->b(Ld/f0/i/b;)V

    return-void

    :cond_1
    if-eqz v3, :cond_2

    .line 27
    invoke-interface {p1, p2, p3}, Le/e;->skip(J)V

    return-void

    .line 28
    :cond_2
    iget-object v2, p0, Ld/f0/i/i$b;->a:Le/c;

    invoke-interface {p1, v2, p2, p3}, Le/s;->a(Le/c;J)J

    move-result-wide v2

    const-wide/16 v7, -0x1

    cmp-long v4, v2, v7

    if-eqz v4, :cond_5

    sub-long/2addr p2, v2

    .line 29
    iget-object v2, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    monitor-enter v2

    .line 30
    :try_start_1
    iget-object v3, p0, Ld/f0/i/i$b;->b:Le/c;

    invoke-virtual {v3}, Le/c;->q()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    .line 31
    :goto_2
    iget-object v0, p0, Ld/f0/i/i$b;->b:Le/c;

    iget-object v1, p0, Ld/f0/i/i$b;->a:Le/c;

    invoke-virtual {v0, v1}, Le/c;->a(Le/s;)J

    if-eqz v5, :cond_4

    .line 32
    iget-object v0, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 33
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 34
    :cond_5
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 35
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_6
    return-void
.end method

.method public b()Le/t;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    iget-object v0, v0, Ld/f0/i/i;->i:Ld/f0/i/i$c;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Ld/f0/i/i$b;->d:Z

    .line 3
    iget-object v1, p0, Ld/f0/i/i$b;->b:Le/c;

    invoke-virtual {v1}, Le/c;->l()V

    .line 4
    iget-object v1, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Ld/f0/i/i$b;->f:Ld/f0/i/i;

    invoke-virtual {v0}, Ld/f0/i/i;->a()V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
