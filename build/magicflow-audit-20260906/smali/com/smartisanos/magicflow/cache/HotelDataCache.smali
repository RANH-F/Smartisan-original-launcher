.class public Lcom/smartisanos/magicflow/cache/HotelDataCache;
.super Ljava/lang/Object;
.source "HotelDataCache.java"


# static fields
.field public static volatile HOTEL_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/m;",
            ">;"
        }
    .end annotation
.end field

.field private static log:Lcom/smartisanos/magicflow/LOG;

.field private static final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/cache/DataChangeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/cache/HotelDataCache;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/cache/HotelDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/HotelDataCache;->HOTEL_INFO_LIST:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/HotelDataCache;->observers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/HotelDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/HotelDataCache;->notifyDataChanged()V

    return-void
.end method

.method public static clearHotelInfoList()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/HotelDataCache;->HOTEL_INFO_LIST:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/HotelDataCache;->HOTEL_INFO_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

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

.method public static init()V
    .locals 2

    const-string v0, "LifeInfo"

    const-string v1, "Hotel"

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/h/z/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/HotelDataCache;->updateHotelInfoList(Ljava/util/List;)V

    return-void
.end method

.method private static notifyDataChanged()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/HotelDataCache;->observers:Ljava/util/List;

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

.method public static register(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/HotelDataCache;->observers:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/HotelDataCache;->observers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/HotelDataCache;->observers:Ljava/util/List;

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

.method public static removeHotelCardItem(Lcom/smartisanos/magicflow/h/m;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/cache/HotelDataCache$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/cache/HotelDataCache$2;-><init>(Lcom/smartisanos/magicflow/h/m;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static saveHotelItem(Lcom/smartisanos/magicflow/h/m;)V
    .locals 4

    if-nez p0, :cond_1

    .line 1
    sget-boolean p0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/magicflow/cache/HotelDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "updateLifeItem return by item info is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2
    :cond_1
    instance-of v0, p0, Lcom/smartisanos/magicflow/h/k;

    if-nez v0, :cond_3

    .line 3
    sget-boolean p0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/magicflow/cache/HotelDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "updateLifeItem return by item type is not match"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 4
    :cond_3
    iget v0, p0, Lcom/smartisanos/magicflow/h/m;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 5
    sget-boolean p0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p0, :cond_4

    .line 6
    sget-object p0, Lcom/smartisanos/magicflow/cache/HotelDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "updateLifeItem return by info.type == CombineConstant.COMBINE_ABANDON"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 7
    :cond_5
    check-cast p0, Lcom/smartisanos/magicflow/h/k;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/m;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/smartisanos/magicflow/cache/HotelDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info.getKeyInfo() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/k;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/m;->g:Ljava/lang/String;

    .line 12
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/smartisanos/magicflow/cache/HotelDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info.parentKeyInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 13
    :cond_8
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_info=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/k;->c()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "LifeInfo"

    const-string v3, "Hotel"

    .line 15
    invoke-static {v2, v3, v0}, Lcom/smartisanos/magicflow/h/z/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/magicflow/h/m;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 16
    iget v0, v0, Lcom/smartisanos/magicflow/h/m;->a:I

    .line 17
    iget v2, p0, Lcom/smartisanos/magicflow/h/m;->f:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 18
    iput v0, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    .line 19
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/HotelDataCache;->removeHotelCardItem(Lcom/smartisanos/magicflow/h/m;)V

    goto :goto_1

    :cond_9
    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/h/z/c;->a(Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 21
    iput v0, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    goto :goto_1

    .line 22
    :cond_a
    invoke-static {v1}, Lcom/smartisanos/magicflow/h/z/c;->a(Landroid/content/ContentValues;)I

    move-result v0

    if-gtz v0, :cond_c

    .line 23
    sget-boolean p0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p0, :cond_b

    sget-object p0, Lcom/smartisanos/magicflow/cache/HotelDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "updateLifeItem return by save data err"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_b
    return-void

    .line 24
    :cond_c
    iput v0, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    .line 25
    :cond_d
    :goto_1
    new-instance v0, Lcom/smartisanos/magicflow/cache/HotelDataCache$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/cache/HotelDataCache$1;-><init>(Lcom/smartisanos/magicflow/h/k;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static unregister(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/HotelDataCache;->observers:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/HotelDataCache;->observers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/HotelDataCache;->observers:Ljava/util/List;

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

.method public static updateHotelInfoList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/m;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/HotelDataCache;->HOTEL_INFO_LIST:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/HotelDataCache;->HOTEL_INFO_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    sget-object v1, Lcom/smartisanos/magicflow/cache/HotelDataCache;->HOTEL_INFO_LIST:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static updateHotelListItem(Lcom/smartisanos/magicflow/h/k;)V
    .locals 5

    if-eqz p0, :cond_3

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/HotelDataCache;->HOTEL_INFO_LIST:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/cache/HotelDataCache;->HOTEL_INFO_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/h/m;

    if-eqz v2, :cond_1

    .line 4
    iget v3, v2, Lcom/smartisanos/magicflow/h/m;->a:I

    iget v4, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    if-ne v3, v4, :cond_1

    .line 5
    sget-object v1, Lcom/smartisanos/magicflow/cache/HotelDataCache;->HOTEL_INFO_LIST:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_2
    sget-object v1, Lcom/smartisanos/magicflow/cache/HotelDataCache;->HOTEL_INFO_LIST:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Lcom/smartisanos/magicflow/cache/HotelDataCache;->notifyDataChanged()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method
