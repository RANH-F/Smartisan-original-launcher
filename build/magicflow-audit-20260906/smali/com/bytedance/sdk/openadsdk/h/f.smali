.class public Lcom/bytedance/sdk/openadsdk/h/f;
.super Ljava/lang/Object;
.source "ProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/f$a;
    }
.end annotation


# static fields
.field private static volatile e:Lcom/bytedance/sdk/openadsdk/h/f;


# instance fields
.field private volatile a:Ljava/net/ServerSocket;

.field private volatile b:I

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private volatile f:Lcom/bytedance/sdk/openadsdk/h/b/c;

.field private volatile g:Lcom/bytedance/sdk/openadsdk/h/a/c;

.field private volatile h:Lcom/bytedance/sdk/openadsdk/h/a/b;

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/h/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/bytedance/sdk/openadsdk/h/g$c;

.field private volatile k:Lcom/bytedance/sdk/openadsdk/h/c;

.field private volatile l:Lcom/bytedance/sdk/openadsdk/h/c;

.field private final m:Ljava/lang/Runnable;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v9, Lcom/bytedance/sdk/openadsdk/h/f$1;

    invoke-direct {v9, p0}, Lcom/bytedance/sdk/openadsdk/h/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/h/f;)V

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-wide/16 v5, 0x3c

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->d:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->i:Landroid/util/SparseArray;

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/f$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/f$2;-><init>(Lcom/bytedance/sdk/openadsdk/h/f;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->j:Lcom/bytedance/sdk/openadsdk/h/g$c;

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/f$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/f$3;-><init>(Lcom/bytedance/sdk/openadsdk/h/f;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->m:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->i:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->i:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/f;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->b:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/f;)Landroid/util/SparseArray;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->i:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/h/f;
    .locals 2

    .line 11
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/f;->e:Lcom/bytedance/sdk/openadsdk/h/f;

    if-nez v0, :cond_1

    .line 12
    const-class v0, Lcom/bytedance/sdk/openadsdk/h/f;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/f;->e:Lcom/bytedance/sdk/openadsdk/h/f;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/h/f;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/h/f;->e:Lcom/bytedance/sdk/openadsdk/h/f;

    .line 15
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 16
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/f;->e:Lcom/bytedance/sdk/openadsdk/h/f;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/f;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->a:Ljava/net/ServerSocket;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/h/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f;->e()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/h/f;)Ljava/net/ServerSocket;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->a:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/h/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->b:I

    return p0
.end method

.method private e()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->a:Ljava/net/ServerSocket;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/net/ServerSocket;)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f;->f()V

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/h/f;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f;->g()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/h/f;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private f()V
    .locals 6

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->i:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/f;->i:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 5
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/h/f;->i:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/h/f;->i:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/h/g;

    .line 10
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/g;->a()V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/h/f;)Lcom/bytedance/sdk/openadsdk/h/b/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->f:Lcom/bytedance/sdk/openadsdk/h/b/c;

    return-object p0
.end method

.method private g()Z
    .locals 4

    const-string v0, "ping error"

    .line 2
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/f$a;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/h/f;->b:I

    const-string v3, "127.0.0.1"

    invoke-direct {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/h/f$a;-><init>(Ljava/lang/String;I)V

    .line 3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/f;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f;->h()V

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "TAG_PROXY_ProxyServer"

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "Ping error"

    .line 6
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    .line 7
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f;->e()V

    return v2

    .line 9
    :cond_0
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v1, :cond_1

    const-string v1, "Ping OK!"

    .line 10
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f;->e()V

    return v2
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/h/f;)Lcom/bytedance/sdk/openadsdk/h/g$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->j:Lcom/bytedance/sdk/openadsdk/h/g$c;

    return-object p0
.end method

.method private h()V
    .locals 4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->a:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    const/16 v1, 0x7d0

    .line 3
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v2, "Ping"

    .line 5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "OK\n"

    .line 7
    sget-object v3, Lcom/bytedance/sdk/openadsdk/h/g/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 8
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 9
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "ping error"

    .line 10
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/net/Socket;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/net/Socket;)V

    throw v1
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/h/f;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->d:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public varargs a(ZZLjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "url"

    if-eqz p4, :cond_a

    .line 19
    array-length v1, p4

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 20
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string p1, "key"

    const-string p2, "key is empty"

    .line 21
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    aget-object p1, p4, v2

    return-object p1

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->f:Lcom/bytedance/sdk/openadsdk/h/b/c;

    if-nez v1, :cond_2

    const-string p1, "db"

    const-string p2, "VideoProxyDB is null"

    .line 24
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    aget-object p1, p4, v2

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->h:Lcom/bytedance/sdk/openadsdk/h/a/b;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->g:Lcom/bytedance/sdk/openadsdk/h/a/c;

    :goto_0
    if-nez v1, :cond_4

    const-string p1, "cache"

    const-string p2, "Cache is null"

    .line 27
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    aget-object p1, p4, v2

    return-object p1

    .line 29
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ProxyServer is not running, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "state"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    aget-object p1, p4, v2

    return-object p1

    .line 32
    :cond_5
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    const-string p1, "url not start with http/https"

    .line 33
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    aget-object p1, p4, v2

    return-object p1

    :cond_6
    if-eqz p2, :cond_7

    move-object p2, p3

    goto :goto_1

    .line 35
    :cond_7
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/h/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 36
    :goto_1
    invoke-static {p3, p2, v1}, Lcom/bytedance/sdk/openadsdk/h/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    const-string p1, "combine proxy url error"

    .line 37
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    aget-object p1, p4, v2

    return-object p1

    :cond_8
    const-string p3, "http://127.0.0.1:"

    if-eqz p1, :cond_9

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/bytedance/sdk/openadsdk/h/f;->b:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "?f="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "&"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 40
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/bytedance/sdk/openadsdk/h/f;->b:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "?"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    :goto_2
    const-string p1, "url is empty"

    .line 41
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method a(Lcom/bytedance/sdk/openadsdk/h/a/c;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->g:Lcom/bytedance/sdk/openadsdk/h/a/c;

    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/h/b/c;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->f:Lcom/bytedance/sdk/openadsdk/h/b/c;

    return-void
.end method

.method a(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->i:Landroid/util/SparseArray;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/f;->i:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/h/g;

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/h/a;->h:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    .line 9
    monitor-exit v1

    return p1

    .line 10
    :cond_2
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method b()Lcom/bytedance/sdk/openadsdk/h/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->k:Lcom/bytedance/sdk/openadsdk/h/c;

    return-object v0
.end method

.method c()Lcom/bytedance/sdk/openadsdk/h/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->l:Lcom/bytedance/sdk/openadsdk/h/c;

    return-object v0
.end method

.method public d()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->m:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
