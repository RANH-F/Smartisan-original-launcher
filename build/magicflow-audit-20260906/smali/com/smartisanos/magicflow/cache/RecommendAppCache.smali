.class public Lcom/smartisanos/magicflow/cache/RecommendAppCache;
.super Ljava/lang/Object;
.source "RecommendAppCache.java"


# static fields
.field public static volatile APP_INFO_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_INSTALL:I = 0x1

.field public static final APP_UNINSTALL:I = 0x2

.field private static format:Ljava/text/SimpleDateFormat;

.field private static final log:Lcom/smartisanos/magicflow/LOG;

.field private static final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/cache/DataChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile requestTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/cache/RecommendAppCache;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->log:Lcom/smartisanos/magicflow/LOG;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->APP_INFO_LIST:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->observers:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss-SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->format:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->requestTime:J

    return-wide p0
.end method

.method static synthetic access$100()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->log:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->onReceiveData(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->updateAppList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->refreshCacheData()V

    return-void
.end method

.method public static init()V
    .locals 1

    const-string v0, "AppRecommend"

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->cardIsEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/z/l;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->updateAppListSort(Ljava/util/List;)V

    return-void
.end method

.method private static notifyDataChanged()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    .line 2
    :try_start_0
    invoke-interface {v1}, Lcom/smartisanos/magicflow/cache/DataChangeObserver;->onDataChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static onAppPackageChanged(Ljava/lang/String;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/cache/RecommendAppCache$3;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/cache/RecommendAppCache$3;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static onReceiveData(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_4

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_2

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v0}, Lcom/smartisanos/magicflow/view/card/recommend/AppDownloadHelper;->removeDownloadingApp(Ljava/util/List;)V

    const/4 p0, 0x0

    .line 9
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/z/l;->a(Ljava/lang/String;)V

    .line 10
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/h/a;

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/a;->b()Landroid/content/ContentValues;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/z/l;->a(Ljava/util/List;)V

    .line 14
    invoke-static {}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->refreshCacheData()V

    :cond_4
    :goto_2
    return-void
.end method

.method private static refreshCacheData()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/z/l;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/smartisanos/magicflow/cache/RecommendAppCache$2;

    invoke-direct {v1, v0}, Lcom/smartisanos/magicflow/cache/RecommendAppCache$2;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static register(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->observers:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->observers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->observers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static syncWithServer()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->requestTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 3
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncWithServer return by request time too close, currentDate ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->format:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requestTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->requestTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance v0, Lcom/smartisanos/magicflow/cache/RecommendAppCache$1;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/cache/RecommendAppCache$1;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/o/d;->send()V

    return-void
.end method

.method public static unregister(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->observers:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->observers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->observers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static updateAppList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->APP_INFO_LIST:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->APP_INFO_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p0, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->APP_INFO_LIST:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->notifyDataChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static updateAppListSort(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/h/a;

    .line 7
    iget-boolean v3, v2, Lcom/smartisanos/magicflow/h/a;->i:Z

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    new-instance p0, Lcom/smartisanos/magicflow/cache/RecommendAppCache$4;

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/magicflow/cache/RecommendAppCache$4;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {p0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method
