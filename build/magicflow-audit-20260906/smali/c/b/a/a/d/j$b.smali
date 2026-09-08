.class Lc/b/a/a/d/j$b;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/a/d/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lc/b/a/a/d/c;

.field private final b:Lc/b/a/a/d/p;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lc/b/a/a/d/c;Lc/b/a/a/d/p;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/a/d/j$b;->a:Lc/b/a/a/d/c;

    .line 3
    iput-object p2, p0, Lc/b/a/a/d/j$b;->b:Lc/b/a/a/d/p;

    .line 4
    iput-object p3, p0, Lc/b/a/a/d/j$b;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/b/a/a/d/j$b;->a:Lc/b/a/a/d/c;

    invoke-virtual {v0}, Lc/b/a/a/d/c;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/a/a/d/j$b;->a:Lc/b/a/a/d/c;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lc/b/a/a/d/c;->a(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc/b/a/a/d/j$b;->b:Lc/b/a/a/d/p;

    iget-object v1, p0, Lc/b/a/a/d/j$b;->a:Lc/b/a/a/d/c;

    invoke-virtual {v1}, Lc/b/a/a/d/c;->getExtra()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lc/b/a/a/d/p;->g:Ljava/util/Map;

    .line 4
    iget-object v0, p0, Lc/b/a/a/d/j$b;->b:Lc/b/a/a/d/p;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lc/b/a/a/d/j$b;->a:Lc/b/a/a/d/c;

    invoke-virtual {v3}, Lc/b/a/a/d/c;->getStartTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lc/b/a/a/d/p;->a(J)Lc/b/a/a/d/p;

    .line 5
    iget-object v0, p0, Lc/b/a/a/d/j$b;->b:Lc/b/a/a/d/p;

    iget-object v1, p0, Lc/b/a/a/d/j$b;->a:Lc/b/a/a/d/c;

    invoke-virtual {v1}, Lc/b/a/a/d/c;->getNetDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/b/a/a/d/p;->b(J)Lc/b/a/a/d/p;

    .line 6
    iget-object v0, p0, Lc/b/a/a/d/j$b;->b:Lc/b/a/a/d/p;

    invoke-virtual {v0}, Lc/b/a/a/d/p;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    :try_start_0
    iget-object v0, p0, Lc/b/a/a/d/j$b;->a:Lc/b/a/a/d/c;

    iget-object v1, p0, Lc/b/a/a/d/j$b;->b:Lc/b/a/a/d/p;

    invoke-virtual {v0, v1}, Lc/b/a/a/d/c;->a(Lc/b/a/a/d/p;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lc/b/a/a/d/j$b;->a:Lc/b/a/a/d/c;

    iget-object v1, p0, Lc/b/a/a/d/j$b;->b:Lc/b/a/a/d/p;

    invoke-virtual {v0, v1}, Lc/b/a/a/d/c;->deliverError(Lc/b/a/a/d/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :catchall_0
    :goto_0
    iget-object v0, p0, Lc/b/a/a/d/j$b;->b:Lc/b/a/a/d/p;

    iget-boolean v0, v0, Lc/b/a/a/d/p;->d:Z

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lc/b/a/a/d/j$b;->a:Lc/b/a/a/d/c;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lc/b/a/a/d/c;->addMarker(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lc/b/a/a/d/j$b;->a:Lc/b/a/a/d/c;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lc/b/a/a/d/c;->a(Ljava/lang/String;)V

    .line 12
    :goto_1
    iget-object v0, p0, Lc/b/a/a/d/j$b;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 13
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_3
    return-void
.end method
