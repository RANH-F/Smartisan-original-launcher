.class final Lcom/smartisanos/magicflow/cache/NewsCache$1;
.super Ljava/lang/Object;
.source "NewsCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/NewsCache;->loadReadWithServer(Landroid/content/Context;ZLcom/smartisanos/magicflow/cache/FailedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$failedCallback:Lcom/smartisanos/magicflow/cache/FailedCallback;

.field final synthetic val$tasks:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/smartisanos/magicflow/cache/FailedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/NewsCache$1;->val$tasks:Ljava/util/List;

    iput-object p2, p0, Lcom/smartisanos/magicflow/cache/NewsCache$1;->val$failedCallback:Lcom/smartisanos/magicflow/cache/FailedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/cache/NewsCache$1$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/cache/NewsCache$1$1;-><init>(Lcom/smartisanos/magicflow/cache/NewsCache$1;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/f;->a()Lcom/smartisanos/magicflow/f;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/NewsCache$1;->val$tasks:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/f;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 5
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/r;

    .line 6
    new-instance v1, Lcom/smartisanos/magicflow/cache/NewsCache$1$2;

    invoke-direct {v1, p0, v0}, Lcom/smartisanos/magicflow/cache/NewsCache$1$2;-><init>(Lcom/smartisanos/magicflow/cache/NewsCache$1;Lcom/smartisanos/magicflow/h/r;)V

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/r;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/r;->b()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/r;->c()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/i/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/smartisanos/magicflow/cache/NewsCache;->access$000()Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    const-string v1, "saveResultByFile fail category=smartisan_read"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
