.class Lc/a/a/o/i/d;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lc/a/a/o/i/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o/i/d$c;,
        Lc/a/a/o/i/d$b;
    }
.end annotation


# static fields
.field private static final q:Lc/a/a/o/i/d$b;

.field private static final r:Landroid/os/Handler;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/a/a/r/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/a/a/o/i/d$b;

.field private final c:Lc/a/a/o/i/e;

.field private final d:Lc/a/a/o/c;

.field private final e:Ljava/util/concurrent/ExecutorService;

.field private final f:Ljava/util/concurrent/ExecutorService;

.field private final g:Z

.field private h:Z

.field private i:Lc/a/a/o/i/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/i/k<",
            "*>;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Ljava/lang/Exception;

.field private l:Z

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/a/a/r/e;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lc/a/a/o/i/i;

.field private o:Lc/a/a/o/i/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/o/i/h<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile p:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lc/a/a/o/i/d$b;

    invoke-direct {v0}, Lc/a/a/o/i/d$b;-><init>()V

    sput-object v0, Lc/a/a/o/i/d;->q:Lc/a/a/o/i/d$b;

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lc/a/a/o/i/d$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lc/a/a/o/i/d$c;-><init>(Lc/a/a/o/i/d$a;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lc/a/a/o/i/d;->r:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lc/a/a/o/c;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLc/a/a/o/i/e;)V
    .locals 7

    .line 1
    sget-object v6, Lc/a/a/o/i/d;->q:Lc/a/a/o/i/d$b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lc/a/a/o/i/d;-><init>(Lc/a/a/o/c;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLc/a/a/o/i/e;Lc/a/a/o/i/d$b;)V

    return-void
.end method

.method public constructor <init>(Lc/a/a/o/c;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLc/a/a/o/i/e;Lc/a/a/o/i/d$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/a/a/o/i/d;->a:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lc/a/a/o/i/d;->d:Lc/a/a/o/c;

    .line 5
    iput-object p2, p0, Lc/a/a/o/i/d;->e:Ljava/util/concurrent/ExecutorService;

    .line 6
    iput-object p3, p0, Lc/a/a/o/i/d;->f:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-boolean p4, p0, Lc/a/a/o/i/d;->g:Z

    .line 8
    iput-object p5, p0, Lc/a/a/o/i/d;->c:Lc/a/a/o/i/e;

    .line 9
    iput-object p6, p0, Lc/a/a/o/i/d;->b:Lc/a/a/o/i/d$b;

    return-void
.end method

.method static synthetic a(Lc/a/a/o/i/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/a/a/o/i/d;->c()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 10
    iget-boolean v0, p0, Lc/a/a/o/i/d;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lc/a/a/o/i/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lc/a/a/o/i/d;->l:Z

    .line 13
    iget-object v0, p0, Lc/a/a/o/i/d;->c:Lc/a/a/o/i/e;

    iget-object v1, p0, Lc/a/a/o/i/d;->d:Lc/a/a/o/c;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lc/a/a/o/i/e;->a(Lc/a/a/o/c;Lc/a/a/o/i/h;)V

    .line 14
    iget-object v0, p0, Lc/a/a/o/i/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/r/e;

    .line 15
    invoke-direct {p0, v1}, Lc/a/a/o/i/d;->d(Lc/a/a/r/e;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 16
    iget-object v2, p0, Lc/a/a/o/i/d;->k:Ljava/lang/Exception;

    invoke-interface {v1, v2}, Lc/a/a/r/e;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    return-void

    .line 17
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lc/a/a/o/i/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/a/a/o/i/d;->b()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 4
    iget-boolean v0, p0, Lc/a/a/o/i/d;->h:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lc/a/a/o/i/d;->i:Lc/a/a/o/i/k;

    invoke-interface {v0}, Lc/a/a/o/i/k;->a()V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lc/a/a/o/i/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lc/a/a/o/i/d;->b:Lc/a/a/o/i/d$b;

    iget-object v1, p0, Lc/a/a/o/i/d;->i:Lc/a/a/o/i/k;

    iget-boolean v2, p0, Lc/a/a/o/i/d;->g:Z

    invoke-virtual {v0, v1, v2}, Lc/a/a/o/i/d$b;->a(Lc/a/a/o/i/k;Z)Lc/a/a/o/i/h;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/o/i/d;->o:Lc/a/a/o/i/h;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lc/a/a/o/i/d;->j:Z

    .line 9
    iget-object v0, p0, Lc/a/a/o/i/d;->o:Lc/a/a/o/i/h;

    invoke-virtual {v0}, Lc/a/a/o/i/h;->c()V

    .line 10
    iget-object v0, p0, Lc/a/a/o/i/d;->c:Lc/a/a/o/i/e;

    iget-object v1, p0, Lc/a/a/o/i/d;->d:Lc/a/a/o/c;

    iget-object v2, p0, Lc/a/a/o/i/d;->o:Lc/a/a/o/i/h;

    invoke-interface {v0, v1, v2}, Lc/a/a/o/i/e;->a(Lc/a/a/o/c;Lc/a/a/o/i/h;)V

    .line 11
    iget-object v0, p0, Lc/a/a/o/i/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/r/e;

    .line 12
    invoke-direct {p0, v1}, Lc/a/a/o/i/d;->d(Lc/a/a/r/e;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    iget-object v2, p0, Lc/a/a/o/i/d;->o:Lc/a/a/o/i/h;

    invoke-virtual {v2}, Lc/a/a/o/i/h;->c()V

    .line 14
    iget-object v2, p0, Lc/a/a/o/i/d;->o:Lc/a/a/o/i/h;

    invoke-interface {v1, v2}, Lc/a/a/r/e;->a(Lc/a/a/o/i/k;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lc/a/a/o/i/d;->o:Lc/a/a/o/i/h;

    invoke-virtual {v0}, Lc/a/a/o/i/h;->e()V

    return-void

    .line 16
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Lc/a/a/r/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/i/d;->m:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/a/a/o/i/d;->m:Ljava/util/Set;

    .line 3
    :cond_0
    iget-object v0, p0, Lc/a/a/o/i/d;->m:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private d(Lc/a/a/r/e;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/o/i/d;->m:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method a()V
    .locals 2

    .line 9
    iget-boolean v0, p0, Lc/a/a/o/i/d;->l:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lc/a/a/o/i/d;->j:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lc/a/a/o/i/d;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lc/a/a/o/i/d;->n:Lc/a/a/o/i/i;

    invoke-virtual {v0}, Lc/a/a/o/i/i;->b()V

    .line 11
    iget-object v0, p0, Lc/a/a/o/i/d;->p:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 13
    :cond_1
    iput-boolean v1, p0, Lc/a/a/o/i/d;->h:Z

    .line 14
    iget-object v0, p0, Lc/a/a/o/i/d;->c:Lc/a/a/o/i/e;

    iget-object v1, p0, Lc/a/a/o/i/d;->d:Lc/a/a/o/c;

    invoke-interface {v0, p0, v1}, Lc/a/a/o/i/e;->a(Lc/a/a/o/i/d;Lc/a/a/o/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lc/a/a/o/i/i;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/a/a/o/i/d;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/o/i/d;->p:Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Lc/a/a/o/i/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/o/i/k<",
            "*>;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lc/a/a/o/i/d;->i:Lc/a/a/o/i/k;

    .line 16
    sget-object p1, Lc/a/a/o/i/d;->r:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lc/a/a/r/e;)V
    .locals 1

    .line 3
    invoke-static {}, Lc/a/a/t/h;->a()V

    .line 4
    iget-boolean v0, p0, Lc/a/a/o/i/d;->j:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lc/a/a/o/i/d;->o:Lc/a/a/o/i/h;

    invoke-interface {p1, v0}, Lc/a/a/r/e;->a(Lc/a/a/o/i/k;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lc/a/a/o/i/d;->l:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lc/a/a/o/i/d;->k:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lc/a/a/r/e;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lc/a/a/o/i/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 17
    iput-object p1, p0, Lc/a/a/o/i/d;->k:Ljava/lang/Exception;

    .line 18
    sget-object p1, Lc/a/a/o/i/d;->r:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b(Lc/a/a/o/i/i;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lc/a/a/o/i/d;->n:Lc/a/a/o/i/i;

    .line 3
    iget-object v0, p0, Lc/a/a/o/i/d;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/o/i/d;->p:Ljava/util/concurrent/Future;

    return-void
.end method

.method public b(Lc/a/a/r/e;)V
    .locals 1

    .line 4
    invoke-static {}, Lc/a/a/t/h;->a()V

    .line 5
    iget-boolean v0, p0, Lc/a/a/o/i/d;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lc/a/a/o/i/d;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lc/a/a/o/i/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lc/a/a/o/i/d;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lc/a/a/o/i/d;->a()V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lc/a/a/o/i/d;->c(Lc/a/a/r/e;)V

    :cond_2
    :goto_1
    return-void
.end method
