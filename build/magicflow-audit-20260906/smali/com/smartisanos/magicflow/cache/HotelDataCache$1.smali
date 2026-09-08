.class final Lcom/smartisanos/magicflow/cache/HotelDataCache$1;
.super Ljava/lang/Object;
.source "HotelDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/HotelDataCache;->saveHotelItem(Lcom/smartisanos/magicflow/h/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Lcom/smartisanos/magicflow/h/k;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/h/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/HotelDataCache$1;->val$info:Lcom/smartisanos/magicflow/h/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/HotelDataCache;->HOTEL_INFO_LIST:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/cache/HotelDataCache$1;->val$info:Lcom/smartisanos/magicflow/h/k;

    invoke-static {v1}, Lcom/smartisanos/magicflow/cache/HotelDataCache;->updateHotelListItem(Lcom/smartisanos/magicflow/h/k;)V

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
