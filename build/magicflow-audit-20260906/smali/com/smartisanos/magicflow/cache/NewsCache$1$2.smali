.class Lcom/smartisanos/magicflow/cache/NewsCache$1$2;
.super Ljava/lang/Object;
.source "NewsCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/NewsCache$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/cache/NewsCache$1;

.field final synthetic val$newsResult:Lcom/smartisanos/magicflow/h/r;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/cache/NewsCache$1;Lcom/smartisanos/magicflow/h/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/NewsCache$1$2;->this$0:Lcom/smartisanos/magicflow/cache/NewsCache$1;

    iput-object p2, p0, Lcom/smartisanos/magicflow/cache/NewsCache$1$2;->val$newsResult:Lcom/smartisanos/magicflow/h/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/NewsCache$1$2;->val$newsResult:Lcom/smartisanos/magicflow/h/r;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/r;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/NewsCache$1$2;->val$newsResult:Lcom/smartisanos/magicflow/h/r;

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/r;->d()Z

    move-result v1

    iget-object v2, p0, Lcom/smartisanos/magicflow/cache/NewsCache$1$2;->val$newsResult:Lcom/smartisanos/magicflow/h/r;

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/magicflow/h/r;->a()Ljava/util/List;

    move-result-object v2

    const-string v3, "smartisan_read"

    .line 5
    invoke-static {v0, v3, v1, v2}, Lcom/smartisanos/magicflow/cache/NewsCache;->updateDataList(ZLjava/lang/String;ZLjava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/NewsCache$1$2;->this$0:Lcom/smartisanos/magicflow/cache/NewsCache$1;

    iget-object v0, v0, Lcom/smartisanos/magicflow/cache/NewsCache$1;->val$failedCallback:Lcom/smartisanos/magicflow/cache/FailedCallback;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/smartisanos/magicflow/cache/FailedCallback;->onFailedCallback()V

    .line 8
    :cond_1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lcom/smartisanos/magicflow/cache/NewsCache;->access$000()Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadReadWithServer newsResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/magicflow/cache/NewsCache$1$2;->val$newsResult:Lcom/smartisanos/magicflow/h/r;

    invoke-virtual {v2}, Lcom/smartisanos/magicflow/h/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
