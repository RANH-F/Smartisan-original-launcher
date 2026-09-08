.class Lc/b/a/a/d/j;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lc/b/a/a/g/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/a/d/j$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/concurrent/Executor;

.field private c:Lc/b/a/a/c/c;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/b/a/a/d/j$a;

    invoke-direct {v0, p0, p1}, Lc/b/a/a/d/j$a;-><init>(Lc/b/a/a/d/j;Landroid/os/Handler;)V

    iput-object v0, p0, Lc/b/a/a/d/j;->a:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/a/d/j;->b:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {}, Lc/b/a/a/c/f;->e()Lc/b/a/a/c/f;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/a/d/j;->c:Lc/b/a/a/c/c;

    return-void
.end method

.method private a(Lc/b/a/a/d/c;)Ljava/util/concurrent/Executor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/c<",
            "*>;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lc/b/a/a/d/c;->isResponseOnMain()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/b/a/a/d/j;->b:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lc/b/a/a/d/j;->a:Ljava/util/concurrent/Executor;

    :goto_1
    return-object p1
.end method


# virtual methods
.method public a(Lc/b/a/a/d/c;Lc/b/a/a/d/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/c<",
            "*>;",
            "Lc/b/a/a/d/p<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lc/b/a/a/d/j;->a(Lc/b/a/a/d/c;Lc/b/a/a/d/p;Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lc/b/a/a/d/j;->c:Lc/b/a/a/c/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Lc/b/a/a/c/c;->a(Lc/b/a/a/d/c;Lc/b/a/a/d/p;)V

    :cond_0
    return-void
.end method

.method public a(Lc/b/a/a/d/c;Lc/b/a/a/d/p;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/c<",
            "*>;",
            "Lc/b/a/a/d/p<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lc/b/a/a/d/c;->markDelivered()V

    const-string v0, "post-response"

    .line 6
    invoke-virtual {p1, v0}, Lc/b/a/a/d/c;->addMarker(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lc/b/a/a/d/j;->a(Lc/b/a/a/d/c;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lc/b/a/a/d/j$b;

    invoke-direct {v1, p1, p2, p3}, Lc/b/a/a/d/j$b;-><init>(Lc/b/a/a/d/c;Lc/b/a/a/d/p;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    iget-object p3, p0, Lc/b/a/a/d/j;->c:Lc/b/a/a/c/c;

    if-eqz p3, :cond_0

    .line 9
    invoke-interface {p3, p1, p2}, Lc/b/a/a/c/c;->a(Lc/b/a/a/d/c;Lc/b/a/a/d/p;)V

    :cond_0
    return-void
.end method

.method public a(Lc/b/a/a/d/c;Lc/b/a/a/f/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/c<",
            "*>;",
            "Lc/b/a/a/f/a;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    .line 10
    invoke-virtual {p1, v0}, Lc/b/a/a/d/c;->addMarker(Ljava/lang/String;)V

    .line 11
    invoke-static {p2}, Lc/b/a/a/d/p;->a(Lc/b/a/a/f/a;)Lc/b/a/a/d/p;

    move-result-object v0

    .line 12
    invoke-direct {p0, p1}, Lc/b/a/a/d/j;->a(Lc/b/a/a/d/c;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lc/b/a/a/d/j$b;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lc/b/a/a/d/j$b;-><init>(Lc/b/a/a/d/c;Lc/b/a/a/d/p;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lc/b/a/a/d/j;->c:Lc/b/a/a/c/c;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0, p1, p2}, Lc/b/a/a/c/c;->a(Lc/b/a/a/d/c;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
