.class abstract Lcom/bytedance/sdk/openadsdk/h/a;
.super Ljava/lang/Object;
.source "AbsTask.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/h/k;


# static fields
.field private static final m:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field protected volatile a:Lcom/bytedance/sdk/openadsdk/h/a/a;

.field protected final b:Lcom/bytedance/sdk/openadsdk/h/b/c;

.field protected final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final d:Ljava/util/concurrent/atomic/AtomicLong;

.field protected e:Lcom/bytedance/sdk/openadsdk/h/d/a;

.field protected volatile f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/h/i$b;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile g:Ljava/lang/String;

.field protected volatile h:Ljava/lang/String;

.field protected volatile i:Lcom/bytedance/sdk/openadsdk/h/i;

.field protected volatile j:Lcom/bytedance/sdk/openadsdk/h/l;

.field protected volatile k:Z

.field public final l:J

.field private final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/h/a/a;Lcom/bytedance/sdk/openadsdk/h/b/c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->k:Z

    .line 5
    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/a;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/h/a;->l:J

    .line 6
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->o:I

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    .line 9
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/a;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->o:I

    return p0
.end method


# virtual methods
.method protected a(Lcom/bytedance/sdk/openadsdk/h/l$a;IILjava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/e/a;
    .locals 8

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/e/c;->a()Lcom/bytedance/sdk/openadsdk/h/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/e/c;->b()Lcom/bytedance/sdk/openadsdk/h/e/b;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/e/f;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/h/e/f;-><init>()V

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/h/l$a;->a:Ljava/lang/String;

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/h/e/f;->b:Ljava/lang/String;

    const/4 v3, 0x0

    .line 7
    iput v3, v1, Lcom/bytedance/sdk/openadsdk/h/e/f;->a:I

    const-string v4, "HEAD"

    .line 8
    invoke-virtual {v4, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x4

    .line 9
    iput p4, v1, Lcom/bytedance/sdk/openadsdk/h/e/f;->a:I

    .line 10
    :cond_0
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/h/a;->f:Ljava/util/List;

    const-string v4, "Range"

    if-eqz p4, :cond_3

    .line 11
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 12
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/h/i$b;

    .line 13
    iget-object v6, v5, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v5, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    const-string v7, "Connection"

    .line 14
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v5, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    const-string v7, "Proxy-Connection"

    .line 15
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v5, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    const-string v7, "Host"

    .line 16
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    iget-object v6, v5, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(II)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 19
    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_4
    sget-boolean p2, Lcom/bytedance/sdk/openadsdk/h/e;->f:Z

    if-eqz p2, :cond_5

    const-string p2, "Cache-Control"

    const-string p3, "no-cache"

    .line 21
    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p2

    .line 23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/f;->a()Lcom/bytedance/sdk/openadsdk/h/f;

    move-result-object p3

    .line 24
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/h/a;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    if-nez p4, :cond_6

    const/4 p4, 0x1

    goto :goto_1

    :cond_6
    move p4, v3

    :goto_1
    if-eqz p4, :cond_7

    .line 25
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/h/d;->a()Lcom/bytedance/sdk/openadsdk/h/c;

    move-result-object v4

    goto :goto_2

    :cond_7
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/h/f;->b()Lcom/bytedance/sdk/openadsdk/h/c;

    move-result-object v4

    :goto_2
    if-eqz p4, :cond_8

    .line 26
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Lcom/bytedance/sdk/openadsdk/h/c;

    move-result-object p2

    goto :goto_3

    :cond_8
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/h/f;->c()Lcom/bytedance/sdk/openadsdk/h/c;

    move-result-object p2

    :goto_3
    if-nez v4, :cond_9

    if-eqz p2, :cond_b

    :cond_9
    if-eqz v4, :cond_a

    .line 27
    iget p3, p1, Lcom/bytedance/sdk/openadsdk/h/l$a;->b:I

    invoke-virtual {v4, p3}, Lcom/bytedance/sdk/openadsdk/h/c;->a(I)J

    move-result-wide p3

    iput-wide p3, v1, Lcom/bytedance/sdk/openadsdk/h/e/f;->c:J

    :cond_a
    if-eqz p2, :cond_b

    .line 28
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/h/l$a;->b:I

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/h/c;->a(I)J

    move-result-wide p1

    iput-wide p1, v1, Lcom/bytedance/sdk/openadsdk/h/e/f;->d:J

    .line 29
    :cond_b
    iput-object v2, v1, Lcom/bytedance/sdk/openadsdk/h/e/f;->e:Ljava/util/Map;

    .line 30
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/h/a;->k:Z

    if-eqz p1, :cond_c

    .line 31
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/h/a;->k:Z

    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_c
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/e/b;->a(Lcom/bytedance/sdk/openadsdk/h/e/f;)Lcom/bytedance/sdk/openadsdk/h/e/a;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    return-void
.end method

.method protected a(II)V
    .locals 4

    if-lez p1, :cond_5

    if-gez p2, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    sget v0, Lcom/bytedance/sdk/openadsdk/h/e;->g:I

    .line 34
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->f()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    if-ne v1, v2, :cond_4

    :cond_1
    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    const/16 p2, 0x64

    if-le p1, p2, :cond_2

    move p1, p2

    .line 35
    :cond_2
    monitor-enter p0

    .line 36
    :try_start_0
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/h/a;->o:I

    if-gt p1, p2, :cond_3

    .line 37
    monitor-exit p0

    return-void

    .line 38
    :cond_3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/h/a;->o:I

    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    new-instance p1, Lcom/bytedance/sdk/openadsdk/h/a$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/h/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/h/a;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/g/d;->b(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 41
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected e()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/c/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/h/c/a;-><init>()V

    throw v0
.end method

.method protected f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->i:Lcom/bytedance/sdk/openadsdk/h/i;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/i;->c:Lcom/bytedance/sdk/openadsdk/h/i$a;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/h/i$a;->a:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/h/a/b;

    :goto_0
    return v0
.end method

.method protected g()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/a;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
