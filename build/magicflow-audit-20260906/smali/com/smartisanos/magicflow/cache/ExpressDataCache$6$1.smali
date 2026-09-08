.class Lcom/smartisanos/magicflow/cache/ExpressDataCache$6$1;
.super Ljava/lang/Object;
.source "ExpressDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;

.field final synthetic val$finalSuccess:Z

.field final synthetic val$info:Lcom/smartisanos/magicflow/h/e;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;ZLcom/smartisanos/magicflow/h/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6$1;->this$0:Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;

    iput-boolean p2, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6$1;->val$finalSuccess:Z

    iput-object p3, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6$1;->val$info:Lcom/smartisanos/magicflow/h/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->access$700()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6$1;->val$finalSuccess:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6$1;->val$info:Lcom/smartisanos/magicflow/h/e;

    iget-object v1, v1, Lcom/smartisanos/magicflow/h/e;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->access$800(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->access$700()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6$1;->val$info:Lcom/smartisanos/magicflow/h/e;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->notifyExpressAccountDataChanged()V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6$1;->this$0:Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;

    iget-object v0, v0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6;->val$callback:Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;

    if-eqz v0, :cond_1

    .line 7
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/cache/ExpressDataCache$6$1;->val$finalSuccess:Z

    invoke-interface {v0, v1}, Lcom/smartisanos/magicflow/view/settings/express/ExpressSettingHelper$AccountRegisterCallback;->onCallback(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
