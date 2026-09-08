.class final Lcom/smartisanos/magicflow/cache/TrainDataCache$1;
.super Ljava/lang/Object;
.source "TrainDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/TrainDataCache;->saveTrainItem(Lcom/smartisanos/magicflow/h/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Lcom/smartisanos/magicflow/h/y;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/h/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/TrainDataCache$1;->val$info:Lcom/smartisanos/magicflow/h/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/TrainDataCache;->TRAIN_INFO_LIST:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/TrainDataCache$1;->val$info:Lcom/smartisanos/magicflow/h/y;

    invoke-static {v1}, Lcom/smartisanos/magicflow/cache/TrainDataCache;->updateTrainListItem(Lcom/smartisanos/magicflow/h/y;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
