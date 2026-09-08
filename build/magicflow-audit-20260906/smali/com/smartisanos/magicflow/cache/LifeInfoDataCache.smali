.class public Lcom/smartisanos/magicflow/cache/LifeInfoDataCache;
.super Ljava/lang/Object;
.source "LifeInfoDataCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/FlightDataCache;->init()V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/cache/TrainDataCache;->init()V

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/cache/MovieDataCache;->init()V

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/cache/HotelDataCache;->init()V

    return-void
.end method

.method public static updateLifeItem(Lcom/smartisanos/magicflow/h/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/m;->c:Ljava/lang/String;

    const-string v1, "Flight"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/FlightDataCache;->saveFlightItem(Lcom/smartisanos/magicflow/h/m;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/m;->c:Ljava/lang/String;

    const-string v1, "Hotel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/HotelDataCache;->saveHotelItem(Lcom/smartisanos/magicflow/h/m;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/m;->c:Ljava/lang/String;

    const-string v1, "Train"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/TrainDataCache;->saveTrainItem(Lcom/smartisanos/magicflow/h/m;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/m;->c:Ljava/lang/String;

    const-string v1, "Movie"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/MovieDataCache;->saveMovieItem(Lcom/smartisanos/magicflow/h/m;)V

    :cond_3
    :goto_0
    return-void
.end method
