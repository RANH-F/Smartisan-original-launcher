.class final Ld/f0/i/i$a;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Le/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/f0/i/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final a:Le/c;

.field b:Z

.field c:Z

.field final synthetic d:Ld/f0/i/i;


# direct methods
.method constructor <init>(Ld/f0/i/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Le/c;

    invoke-direct {p1}, Le/c;-><init>()V

    iput-object p1, p0, Ld/f0/i/i$a;->a:Le/c;

    return-void
.end method

.method private a(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    iget-object v1, v1, Ld/f0/i/i;->j:Ld/f0/i/i$c;

    invoke-virtual {v1}, Le/a;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :goto_0
    :try_start_1
    iget-object v1, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    iget-wide v1, v1, Ld/f0/i/i;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Ld/f0/i/i$a;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ld/f0/i/i$a;->b:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    iget-object v1, v1, Ld/f0/i/i;->k:Ld/f0/i/b;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    invoke-virtual {v1}, Ld/f0/i/i;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 5
    :cond_0
    :try_start_2
    iget-object v1, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    iget-object v1, v1, Ld/f0/i/i;->j:Ld/f0/i/i$c;

    invoke-virtual {v1}, Ld/f0/i/i$c;->k()V

    .line 6
    iget-object v1, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    invoke-virtual {v1}, Ld/f0/i/i;->b()V

    .line 7
    iget-object v1, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    iget-wide v1, v1, Ld/f0/i/i;->b:J

    iget-object v3, p0, Ld/f0/i/i$a;->a:Le/c;

    invoke-virtual {v3}, Le/c;->q()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 8
    iget-object v1, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    iget-wide v2, v1, Ld/f0/i/i;->b:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Ld/f0/i/i;->b:J

    .line 9
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 10
    iget-object v0, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    iget-object v0, v0, Ld/f0/i/i;->j:Ld/f0/i/i$c;

    invoke-virtual {v0}, Le/a;->g()V

    .line 11
    :try_start_3
    iget-object v0, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    iget-object v5, v0, Ld/f0/i/i;->d:Ld/f0/i/g;

    iget-object v0, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    iget v6, v0, Ld/f0/i/i;->c:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld/f0/i/i$a;->a:Le/c;

    invoke-virtual {p1}, Le/c;->q()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    move v7, p1

    iget-object v8, p0, Ld/f0/i/i$a;->a:Le/c;

    invoke-virtual/range {v5 .. v10}, Ld/f0/i/g;->a(IZLe/c;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    iget-object p1, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    iget-object p1, p1, Ld/f0/i/i;->j:Ld/f0/i/i$c;

    invoke-virtual {p1}, Ld/f0/i/i$c;->k()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    iget-object v0, v0, Ld/f0/i/i;->j:Ld/f0/i/i$c;

    invoke-virtual {v0}, Ld/f0/i/i$c;->k()V

    throw p1

    :catchall_1
    move-exception p1

    .line 13
    :try_start_4
    iget-object v1, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    iget-object v1, v1, Ld/f0/i/i;->j:Ld/f0/i/i$c;

    invoke-virtual {v1}, Ld/f0/i/i$c;->k()V

    throw p1

    :catchall_2
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method


# virtual methods
.method public b()Le/t;
    .locals 1

    .line 4
    iget-object v0, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    iget-object v0, v0, Ld/f0/i/i;->j:Ld/f0/i/i$c;

    return-object v0
.end method

.method public b(Le/c;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/f0/i/i$a;->a:Le/c;

    invoke-virtual {v0, p1, p2, p3}, Le/c;->b(Le/c;J)V

    .line 2
    :goto_0
    iget-object p1, p0, Ld/f0/i/i$a;->a:Le/c;

    invoke-virtual {p1}, Le/c;->q()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Ld/f0/i/i$a;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public close()V
    .locals 8

    .line 1
    iget-object v0, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ld/f0/i/i$a;->b:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    iget-object v0, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    iget-object v0, v0, Ld/f0/i/i;->h:Ld/f0/i/i$a;

    iget-boolean v0, v0, Ld/f0/i/i$a;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Ld/f0/i/i$a;->a:Le/c;

    invoke-virtual {v0}, Le/c;->q()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 6
    :goto_0
    iget-object v0, p0, Ld/f0/i/i$a;->a:Le/c;

    invoke-virtual {v0}, Le/c;->q()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 7
    invoke-direct {p0, v1}, Ld/f0/i/i$a;->a(Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    iget-object v2, v0, Ld/f0/i/i;->d:Ld/f0/i/g;

    iget v3, v0, Ld/f0/i/i;->c:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Ld/f0/i/g;->a(IZLe/c;J)V

    .line 9
    :cond_2
    iget-object v2, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    monitor-enter v2

    .line 10
    :try_start_1
    iput-boolean v1, p0, Ld/f0/i/i$a;->b:Z

    .line 11
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    iget-object v0, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    iget-object v0, v0, Ld/f0/i/i;->d:Ld/f0/i/g;

    invoke-virtual {v0}, Ld/f0/i/g;->flush()V

    .line 13
    iget-object v0, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    invoke-virtual {v0}, Ld/f0/i/i;->a()V

    return-void

    :catchall_0
    move-exception v0

    .line 14
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 15
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public flush()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    invoke-virtual {v1}, Ld/f0/i/i;->b()V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iget-object v0, p0, Ld/f0/i/i$a;->a:Le/c;

    invoke-virtual {v0}, Le/c;->q()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Ld/f0/i/i$a;->a(Z)V

    .line 6
    iget-object v0, p0, Ld/f0/i/i$a;->d:Ld/f0/i/i;

    iget-object v0, v0, Ld/f0/i/i;->d:Ld/f0/i/g;

    invoke-virtual {v0}, Ld/f0/i/g;->flush()V

    goto :goto_0

    :cond_0
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
