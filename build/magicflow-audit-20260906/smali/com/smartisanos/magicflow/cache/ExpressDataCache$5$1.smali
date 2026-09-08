.class Lcom/smartisanos/magicflow/cache/ExpressDataCache$5$1;
.super Ljava/lang/Object;
.source "ExpressDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;

.field final synthetic val$finalSubId:J

.field final synthetic val$finalSuccess:Z


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;ZJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5$1;->this$0:Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;

    iput-boolean p2, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5$1;->val$finalSuccess:Z

    iput-wide p3, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5$1;->val$finalSubId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->access$700()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5$1;->val$finalSuccess:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->access$700()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/h/e;

    if-eqz v2, :cond_0

    .line 4
    iget-wide v3, v2, Lcom/smartisanos/magicflow/h/e;->a:J

    iget-wide v5, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5$1;->val$finalSubId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->access$700()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->notifyExpressAccountDataChanged()V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5$1;->this$0:Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;

    iget-object v1, v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;->val$callback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5$1;->this$0:Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;

    iget-object v1, v1, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5;->val$callback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;

    iget-boolean v2, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$5$1;->val$finalSuccess:Z

    invoke-interface {v1, v2}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;->onCallback(Z)V

    .line 9
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
