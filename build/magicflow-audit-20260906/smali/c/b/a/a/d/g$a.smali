.class Lc/b/a/a/d/g$a;
.super Ljava/lang/Object;
.source "CacheDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/a/d/g;->a(Lc/b/a/a/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/b/a/a/d/c;

.field final synthetic b:Lc/b/a/a/d/g;


# direct methods
.method constructor <init>(Lc/b/a/a/d/g;Lc/b/a/a/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/a/d/g$a;->b:Lc/b/a/a/d/g;

    iput-object p2, p0, Lc/b/a/a/d/g$a;->a:Lc/b/a/a/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/b/a/a/d/g$a;->b:Lc/b/a/a/d/g;

    invoke-static {v0}, Lc/b/a/a/d/g;->a(Lc/b/a/a/d/g;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lc/b/a/a/d/g$a;->a:Lc/b/a/a/d/c;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method
