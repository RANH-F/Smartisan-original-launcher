.class Lcom/bytedance/sdk/openadsdk/h/b;
.super Lcom/bytedance/sdk/openadsdk/h/a;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/b$a;,
        Lcom/bytedance/sdk/openadsdk/h/b$b;
    }
.end annotation


# instance fields
.field final m:Ljava/lang/Object;

.field final n:Ljava/lang/Object;

.field private final o:I

.field private final p:Lcom/bytedance/sdk/openadsdk/h/b$b;

.field private volatile q:Lcom/bytedance/sdk/openadsdk/h/h$a;

.field private volatile r:Lcom/bytedance/sdk/openadsdk/h/c/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/b$a;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->d:Lcom/bytedance/sdk/openadsdk/h/a/a;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->e:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/h/a;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/a;Lcom/bytedance/sdk/openadsdk/h/b/c;)V

    .line 2
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->g:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->o:I

    .line 3
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->i:Lcom/bytedance/sdk/openadsdk/h/b$b;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->p:Lcom/bytedance/sdk/openadsdk/h/b$b;

    .line 4
    iput-object p0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->m:Ljava/lang/Object;

    .line 5
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->g:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->h:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->f:Ljava/util/List;

    .line 8
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->c:Lcom/bytedance/sdk/openadsdk/h/l;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->j:Lcom/bytedance/sdk/openadsdk/h/l;

    .line 9
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->h:Lcom/bytedance/sdk/openadsdk/h/i;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    .line 10
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/h/b$a;->j:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->n:Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/h/l$a;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/a/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 3
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/h/b;->o:I

    if-lez v3, :cond_1

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 4
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no necessary to download for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cache file size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", max: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->o:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG_PROXY_DownloadTask"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->f()I

    move-result v3

    .line 7
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/h/a;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/h/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 8
    iget v5, v4, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-ltz v5, :cond_3

    .line 9
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz p1, :cond_2

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file download complete, key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG_PROXY_DownloadTask"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->e()V

    long-to-int v5, v1

    .line 12
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/h/b;->o:I

    const-string v7, "GET"

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/h/a;->a(Lcom/bytedance/sdk/openadsdk/h/l$a;IILjava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/e/a;

    move-result-object v6

    if-nez v6, :cond_4

    return-void

    :cond_4
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->e()V

    .line 14
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/h/a;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    if-nez v10, :cond_5

    sget-boolean v10, Lcom/bytedance/sdk/openadsdk/h/e;->e:Z

    if-eqz v10, :cond_5

    move v10, v8

    goto :goto_0

    :cond_5
    move v10, v9

    :goto_0
    invoke-static {v6, v10, v8}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Lcom/bytedance/sdk/openadsdk/h/e/a;ZZ)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_12

    .line 15
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Lcom/bytedance/sdk/openadsdk/h/e/a;)I

    move-result v10

    if-eqz v4, :cond_7

    .line 16
    iget v11, v4, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    if-eq v11, v10, :cond_7

    .line 17
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_6

    const-string v0, "TAG_PROXY_DownloadTask"

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Length not match, old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/c/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Length not match, old length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rawKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", previousInfo: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Lcom/bytedance/sdk/openadsdk/h/b/a;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/h/c/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/h/a;->h:Ljava/lang/String;

    invoke-static {v6, p1, v4, v3}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Lcom/bytedance/sdk/openadsdk/h/e/a;Lcom/bytedance/sdk/openadsdk/h/b/c;Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/h/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;

    move-result-object p1

    if-nez p1, :cond_8

    move p1, v9

    goto :goto_1

    .line 22
    :cond_8
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/h/b/a;->c:I

    .line 23
    :goto_1
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/h/e/a;->d()Ljava/io/InputStream;

    move-result-object v3

    .line 24
    new-instance v4, Lcom/bytedance/sdk/openadsdk/h/h;

    sget-boolean v10, Lcom/bytedance/sdk/openadsdk/h/e;->d:Z

    if-eqz v10, :cond_9

    const-string v10, "rwd"

    goto :goto_2

    :cond_9
    const-string v10, "rw"

    :goto_2
    invoke-direct {v4, v0, v10}, Lcom/bytedance/sdk/openadsdk/h/h;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 25
    :try_start_1
    invoke-virtual {v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/h;->a(J)V

    .line 26
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_a

    const-string v0, "TAG_PROXY_DownloadTask"

    .line 27
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "preload start from: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 28
    :goto_3
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_10

    .line 29
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->e()V

    if-lez v1, :cond_c

    .line 30
    invoke-virtual {v4, v0, v9, v1}, Lcom/bytedance/sdk/openadsdk/h/h;->a([BII)V

    add-int/2addr v5, v1

    .line 31
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/a;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    if-eqz v2, :cond_b

    .line 32
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/b;->m:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 33
    :try_start_2
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/h/b;->m:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 34
    monitor-exit v2

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    .line 35
    :cond_b
    :goto_4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 36
    invoke-virtual {p0, p1, v5}, Lcom/bytedance/sdk/openadsdk/h/a;->a(II)V

    .line 37
    :cond_c
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->o:I

    if-lez v1, :cond_f

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->o:I

    if-lt v5, v1, :cond_f

    .line 38
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz p1, :cond_d

    const-string p1, "TAG_PROXY_DownloadTask"

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download, more data received, currentCacheFileSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 40
    :cond_d
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/h/e/a;->d()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/io/Closeable;)V

    .line 41
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/h/h;->a()V

    .line 42
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->a()V

    .line 43
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz p1, :cond_e

    const-string p1, "TAG_PROXY_DownloadTask"

    const-string v0, "cancel call"

    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void

    .line 45
    :cond_f
    :try_start_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 46
    :cond_10
    :try_start_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->c()V

    .line 47
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz p1, :cond_11

    const-string p1, "TAG_PROXY_DownloadTask"

    const-string v0, "download succeed, no need to cancel call"

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 49
    :cond_11
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/h/e/a;->d()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/io/Closeable;)V

    .line 50
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/h/h;->a()V

    return-void

    :catchall_1
    move-exception p1

    move-object v7, v4

    move v8, v9

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object v7, v4

    goto :goto_5

    .line 51
    :cond_12
    :try_start_6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/c/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rawKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/h/c/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    .line 52
    :goto_5
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/h/e/a;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/io/Closeable;)V

    if-eqz v7, :cond_13

    .line 53
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/h/h;->a()V

    :cond_13
    if-eqz v8, :cond_14

    .line 54
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->a()V

    .line 55
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_14

    const-string v0, "TAG_PROXY_DownloadTask"

    const-string v1, "cancel call"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    throw p1
.end method

.method private j()Z
    .locals 4

    const-string v0, "TAG_PROXY_DownloadTask"

    .line 1
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a;->j:Lcom/bytedance/sdk/openadsdk/h/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/l;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->e()V

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a;->j:Lcom/bytedance/sdk/openadsdk/h/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/l;->b()Lcom/bytedance/sdk/openadsdk/h/l$a;

    move-result-object v1

    .line 4
    :try_start_0
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/h/b;->a(Lcom/bytedance/sdk/openadsdk/h/l$a;)V
    :try_end_0
    .catch Lcom/bytedance/sdk/openadsdk/h/c/c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/bytedance/sdk/openadsdk/h/h$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/bytedance/sdk/openadsdk/h/c/b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 5
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v3, :cond_1

    .line 6
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :catch_0
    move-exception v1

    .line 7
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/b;->r:Lcom/bytedance/sdk/openadsdk/h/c/b;

    .line 8
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v3, :cond_2

    .line 9
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :catch_1
    move-exception v0

    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->q:Lcom/bytedance/sdk/openadsdk/h/h$a;

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/a;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v0}, Lcom/bytedance/sdk/openadsdk/h/a;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :catch_2
    move-exception v2

    .line 12
    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/l$a;->b()V

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Canceled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "okhttp call canceled"

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 18
    :cond_4
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/a;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/h/a;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v2

    .line 20
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/l$a;->a()V

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/a;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/h/a;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    return v2
.end method


# virtual methods
.method h()Lcom/bytedance/sdk/openadsdk/h/h$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->q:Lcom/bytedance/sdk/openadsdk/h/h$a;

    return-object v0
.end method

.method i()Lcom/bytedance/sdk/openadsdk/h/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->r:Lcom/bytedance/sdk/openadsdk/h/c/b;

    return-object v0
.end method

.method public run()V
    .locals 5

    const-string v0, "TAG_PROXY_DownloadTask"

    .line 1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/b;->j()Z
    :try_end_0
    .catch Lcom/bytedance/sdk/openadsdk/h/c/a; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lc/b/a/a/f/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lc/b/a/a/f/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 4
    sget-boolean v4, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v4, :cond_0

    .line 5
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v3

    .line 8
    sget-boolean v4, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v4, :cond_0

    .line 9
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/a/a;->b(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b;->p:Lcom/bytedance/sdk/openadsdk/h/b$b;

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/b$b;->a(Lcom/bytedance/sdk/openadsdk/h/b;)V

    :cond_1
    return-void
.end method
