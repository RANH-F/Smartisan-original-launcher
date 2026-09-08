.class Lc/d/a/b/a/i/c$b;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"

# interfaces
.implements Lc/d/a/b/a/c/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/i/c;->a(Lc/d/a/b/a/d/a;J)Lc/d/a/b/a/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lc/d/a/b/a/i/c;


# direct methods
.method constructor <init>(Lc/d/a/b/a/i/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/i/c$b;->b:Lc/d/a/b/a/i/c;

    iput-object p2, p0, Lc/d/a/b/a/i/c$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c$b;->b:Lc/d/a/b/a/i/c;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/d/a/b/a/i/c$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v1, p0, Lc/d/a/b/a/i/c$b;->b:Lc/d/a/b/a/i/c;

    invoke-static {v1}, Lc/d/a/b/a/i/c;->a(Lc/d/a/b/a/i/c;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
