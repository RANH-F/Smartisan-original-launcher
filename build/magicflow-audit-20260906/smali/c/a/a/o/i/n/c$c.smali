.class Lc/a/a/o/i/n/c$c;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o/i/n/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lc/a/a/o/i/n/c$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lc/a/a/o/i/n/c$c;->a:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lc/a/a/o/i/n/c$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lc/a/a/o/i/n/c$c;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lc/a/a/o/i/n/c$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/a/a/o/i/n/c$c;->a:Ljava/util/Queue;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/a/a/o/i/n/c$c;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/o/i/n/c$b;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lc/a/a/o/i/n/c$b;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lc/a/a/o/i/n/c$b;-><init>(Lc/a/a/o/i/n/c$a;)V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method a(Lc/a/a/o/i/n/c$b;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lc/a/a/o/i/n/c$c;->a:Ljava/util/Queue;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lc/a/a/o/i/n/c$c;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 8
    iget-object v1, p0, Lc/a/a/o/i/n/c$c;->a:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 9
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
