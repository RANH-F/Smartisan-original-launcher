.class public Lc/b/a/a/d/o;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/a/d/o$a;,
        Lc/b/a/a/d/o$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/b/a/a/d/c<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lc/b/a/a/d/c<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lc/b/a/a/d/c<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Lc/b/a/a/g/b;

.field private final f:Lc/b/a/a/g/c;

.field private final g:Lc/b/a/a/g/d;

.field private final h:[Lc/b/a/a/d/l;

.field private i:Lc/b/a/a/d/g;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/a/d/o$b;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/a/d/o$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/a/g/b;Lc/b/a/a/g/c;)V
    .locals 1

    const/4 v0, 0x4

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lc/b/a/a/d/o;-><init>(Lc/b/a/a/g/b;Lc/b/a/a/g/c;I)V

    return-void
.end method

.method public constructor <init>(Lc/b/a/a/g/b;Lc/b/a/a/g/c;I)V
    .locals 3

    .line 12
    new-instance v0, Lc/b/a/a/d/j;

    new-instance v1, Landroid/os/Handler;

    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lc/b/a/a/d/j;-><init>(Landroid/os/Handler;)V

    .line 14
    invoke-direct {p0, p1, p2, p3, v0}, Lc/b/a/a/d/o;-><init>(Lc/b/a/a/g/b;Lc/b/a/a/g/c;ILc/b/a/a/g/d;)V

    return-void
.end method

.method public constructor <init>(Lc/b/a/a/g/b;Lc/b/a/a/g/c;ILc/b/a/a/g/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc/b/a/a/d/o;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/b/a/a/d/o;->b:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lc/b/a/a/d/o;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 5
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lc/b/a/a/d/o;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/a/a/d/o;->j:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/a/a/d/o;->k:Ljava/util/List;

    .line 8
    iput-object p1, p0, Lc/b/a/a/d/o;->e:Lc/b/a/a/g/b;

    .line 9
    iput-object p2, p0, Lc/b/a/a/d/o;->f:Lc/b/a/a/g/c;

    .line 10
    new-array p1, p3, [Lc/b/a/a/d/l;

    iput-object p1, p0, Lc/b/a/a/d/o;->h:[Lc/b/a/a/d/l;

    .line 11
    iput-object p4, p0, Lc/b/a/a/d/o;->g:Lc/b/a/a/g/d;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/a/d/c;)Lc/b/a/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/a/d/c<",
            "TT;>;)",
            "Lc/b/a/a/d/c<",
            "TT;>;"
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lc/b/a/a/d/o;->b(Lc/b/a/a/d/c;)V

    .line 9
    invoke-virtual {p1}, Lc/b/a/a/d/c;->setStartTime()V

    .line 10
    invoke-virtual {p1, p0}, Lc/b/a/a/d/c;->setRequestQueue(Lc/b/a/a/d/o;)Lc/b/a/a/d/c;

    .line 11
    iget-object v0, p0, Lc/b/a/a/d/o;->b:Ljava/util/Set;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lc/b/a/a/d/o;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p0}, Lc/b/a/a/d/o;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/b/a/a/d/c;->setSequence(I)Lc/b/a/a/d/c;

    const-string v0, "add-to-queue"

    .line 15
    invoke-virtual {p1, v0}, Lc/b/a/a/d/c;->addMarker(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Lc/b/a/a/d/o;->a(Lc/b/a/a/d/c;I)V

    .line 17
    invoke-virtual {p1}, Lc/b/a/a/d/c;->shouldCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lc/b/a/a/d/o;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 19
    :cond_0
    iget-object v0, p0, Lc/b/a/a/d/o;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc/b/a/a/d/o;->b()V

    .line 2
    new-instance v0, Lc/b/a/a/d/g;

    iget-object v1, p0, Lc/b/a/a/d/o;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lc/b/a/a/d/o;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lc/b/a/a/d/o;->e:Lc/b/a/a/g/b;

    iget-object v4, p0, Lc/b/a/a/d/o;->g:Lc/b/a/a/g/d;

    invoke-direct {v0, v1, v2, v3, v4}, Lc/b/a/a/d/g;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lc/b/a/a/g/b;Lc/b/a/a/g/d;)V

    iput-object v0, p0, Lc/b/a/a/d/o;->i:Lc/b/a/a/d/g;

    .line 3
    iget-object v0, p0, Lc/b/a/a/d/o;->i:Lc/b/a/a/d/g;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lc/b/a/a/d/o;->h:[Lc/b/a/a/d/l;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 5
    new-instance v1, Lc/b/a/a/d/l;

    iget-object v2, p0, Lc/b/a/a/d/o;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lc/b/a/a/d/o;->f:Lc/b/a/a/g/c;

    iget-object v4, p0, Lc/b/a/a/d/o;->e:Lc/b/a/a/g/b;

    iget-object v5, p0, Lc/b/a/a/d/o;->g:Lc/b/a/a/g/d;

    invoke-direct {v1, v2, v3, v4, v5}, Lc/b/a/a/d/l;-><init>(Ljava/util/concurrent/BlockingQueue;Lc/b/a/a/g/c;Lc/b/a/a/g/b;Lc/b/a/a/g/d;)V

    .line 6
    iget-object v2, p0, Lc/b/a/a/d/o;->h:[Lc/b/a/a/d/l;

    aput-object v1, v2, v0

    .line 7
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lc/b/a/a/d/c;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/c<",
            "*>;I)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lc/b/a/a/d/o;->k:Ljava/util/List;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lc/b/a/a/d/o;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/b/a/a/d/o$a;

    .line 23
    invoke-interface {v2, p1, p2}, Lc/b/a/a/d/o$a;->a(Lc/b/a/a/d/c;I)V

    goto :goto_0

    .line 24
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/o;->i:Lc/b/a/a/d/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/b/a/a/d/g;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lc/b/a/a/d/o;->h:[Lc/b/a/a/d/l;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Lc/b/a/a/d/l;->a()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(Lc/b/a/a/d/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/a/d/c<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lc/b/a/a/d/c;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lc/b/a/a/d/c;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {}, Lc/b/a/a/a;->d()Lc/b/a/a/c/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {}, Lc/b/a/a/a;->d()Lc/b/a/a/c/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lc/b/a/a/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Lc/b/a/a/d/c;->setUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/o;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method c(Lc/b/a/a/d/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/a/d/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/b/a/a/d/o;->b:Ljava/util/Set;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lc/b/a/a/d/o;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iget-object v1, p0, Lc/b/a/a/d/o;->j:Ljava/util/List;

    monitor-enter v1

    .line 6
    :try_start_1
    iget-object v0, p0, Lc/b/a/a/d/o;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/b/a/a/d/o$b;

    .line 7
    invoke-interface {v2, p1}, Lc/b/a/a/d/o$b;->a(Lc/b/a/a/d/c;)V

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x5

    .line 9
    invoke-virtual {p0, p1, v0}, Lc/b/a/a/d/o;->a(Lc/b/a/a/d/c;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 11
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
