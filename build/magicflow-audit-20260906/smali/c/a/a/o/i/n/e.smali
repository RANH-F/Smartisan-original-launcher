.class public Lc/a/a/o/i/n/e;
.super Ljava/lang/Object;
.source "DiskLruCacheWrapper.java"

# interfaces
.implements Lc/a/a/o/i/n/a;


# static fields
.field private static f:Lc/a/a/o/i/n/e;


# instance fields
.field private final a:Lc/a/a/o/i/n/c;

.field private final b:Lc/a/a/o/i/n/j;

.field private final c:Ljava/io/File;

.field private final d:I

.field private e:Lc/a/a/l/a;


# direct methods
.method protected constructor <init>(Ljava/io/File;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/a/a/o/i/n/c;

    invoke-direct {v0}, Lc/a/a/o/i/n/c;-><init>()V

    iput-object v0, p0, Lc/a/a/o/i/n/e;->a:Lc/a/a/o/i/n/c;

    .line 3
    iput-object p1, p0, Lc/a/a/o/i/n/e;->c:Ljava/io/File;

    .line 4
    iput p2, p0, Lc/a/a/o/i/n/e;->d:I

    .line 5
    new-instance p1, Lc/a/a/o/i/n/j;

    invoke-direct {p1}, Lc/a/a/o/i/n/j;-><init>()V

    iput-object p1, p0, Lc/a/a/o/i/n/e;->b:Lc/a/a/o/i/n/j;

    return-void
.end method

.method private declared-synchronized a()Lc/a/a/l/a;
    .locals 4

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lc/a/a/o/i/n/e;->e:Lc/a/a/l/a;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lc/a/a/o/i/n/e;->c:Ljava/io/File;

    iget v1, p0, Lc/a/a/o/i/n/e;->d:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-static {v0, v3, v3, v1, v2}, Lc/a/a/l/a;->a(Ljava/io/File;IIJ)Lc/a/a/l/a;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/o/i/n/e;->e:Lc/a/a/l/a;

    .line 6
    :cond_0
    iget-object v0, p0, Lc/a/a/o/i/n/e;->e:Lc/a/a/l/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized a(Ljava/io/File;I)Lc/a/a/o/i/n/a;
    .locals 2

    const-class v0, Lc/a/a/o/i/n/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lc/a/a/o/i/n/e;->f:Lc/a/a/o/i/n/e;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lc/a/a/o/i/n/e;

    invoke-direct {v1, p0, p1}, Lc/a/a/o/i/n/e;-><init>(Ljava/io/File;I)V

    sput-object v1, Lc/a/a/o/i/n/e;->f:Lc/a/a/o/i/n/e;

    .line 3
    :cond_0
    sget-object p0, Lc/a/a/o/i/n/e;->f:Lc/a/a/o/i/n/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Lc/a/a/o/c;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lc/a/a/o/i/n/e;->b:Lc/a/a/o/i/n/j;

    invoke-virtual {v0, p1}, Lc/a/a/o/i/n/j;->a(Lc/a/a/o/c;)Ljava/lang/String;

    move-result-object p1

    .line 19
    :try_start_0
    invoke-direct {p0}, Lc/a/a/o/i/n/e;->a()Lc/a/a/l/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/l/a;->d(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x5

    const-string v1, "DiskLruCacheWrapper"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to delete from disk cache"

    .line 21
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lc/a/a/o/c;Lc/a/a/o/i/n/a$b;)V
    .locals 3

    const-string v0, "DiskLruCacheWrapper"

    .line 7
    iget-object v1, p0, Lc/a/a/o/i/n/e;->b:Lc/a/a/o/i/n/j;

    invoke-virtual {v1, p1}, Lc/a/a/o/i/n/j;->a(Lc/a/a/o/c;)Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lc/a/a/o/i/n/e;->a:Lc/a/a/o/i/n/c;

    invoke-virtual {v2, p1}, Lc/a/a/o/i/n/c;->a(Lc/a/a/o/c;)V

    .line 9
    :try_start_0
    invoke-direct {p0}, Lc/a/a/o/i/n/e;->a()Lc/a/a/l/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc/a/a/l/a;->b(Ljava/lang/String;)Lc/a/a/l/a$b;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 10
    :try_start_1
    invoke-virtual {v1, v2}, Lc/a/a/l/a$b;->a(I)Ljava/io/File;

    move-result-object v2

    .line 11
    invoke-interface {p2, v2}, Lc/a/a/o/i/n/a$b;->a(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {v1}, Lc/a/a/l/a$b;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lc/a/a/l/a$b;->b()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {v1}, Lc/a/a/l/a$b;->b()V

    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :cond_1
    :goto_0
    iget-object p2, p0, Lc/a/a/o/i/n/e;->a:Lc/a/a/o/i/n/c;

    invoke-virtual {p2, p1}, Lc/a/a/o/i/n/c;->b(Lc/a/a/o/c;)V

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    const/4 v1, 0x5

    .line 15
    :try_start_3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Unable to put to disk cache"

    .line 16
    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    .line 17
    :goto_2
    iget-object v0, p0, Lc/a/a/o/i/n/e;->a:Lc/a/a/o/i/n/c;

    invoke-virtual {v0, p1}, Lc/a/a/o/i/n/c;->b(Lc/a/a/o/c;)V

    throw p2
.end method

.method public b(Lc/a/a/o/c;)Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/a/a/o/i/n/e;->b:Lc/a/a/o/i/n/j;

    invoke-virtual {v0, p1}, Lc/a/a/o/i/n/j;->a(Lc/a/a/o/c;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lc/a/a/o/i/n/e;->a()Lc/a/a/l/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc/a/a/l/a;->c(Ljava/lang/String;)Lc/a/a/l/a$d;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Lc/a/a/l/a$d;->a(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x5

    const-string v2, "DiskLruCacheWrapper"

    .line 4
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Unable to get from disk cache"

    .line 5
    invoke-static {v2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method
