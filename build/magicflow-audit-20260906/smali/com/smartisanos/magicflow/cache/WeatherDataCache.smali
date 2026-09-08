.class public Lcom/smartisanos/magicflow/cache/WeatherDataCache;
.super Ljava/lang/Object;
.source "WeatherDataCache.java"


# static fields
.field private static final OBSERVERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/cache/DataChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/smartisanos/magicflow/LOG;

.field public static volatile sLastTimeUpdate:J

.field public static volatile sWeatherInfo:Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/cache/WeatherDataCache;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->OBSERVERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initWeatherData()V
    .locals 3

    .line 1
    sget v0, Lcom/smartisanos/magicflow/h/d;->T:I

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "initWeatherData return by user not agreed!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->sLastTimeUpdate:J

    .line 6
    invoke-static {v0}, Lcom/smartisanos/magicflow/view/weather/WeatherHelper;->getCurrentWeatherDetailInfo(Landroid/content/Context;)Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->sWeatherInfo:Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;

    return-void
.end method

.method public static notifyDataChanged()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->OBSERVERS:Ljava/util/List;

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
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->OBSERVERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->OBSERVERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static unregister(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->OBSERVERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->OBSERVERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static updateWeatherData()V
    .locals 2

    .line 1
    sget v0, Lcom/smartisanos/magicflow/h/d;->T:I

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "updateWeatherData return by user not agreed!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance v0, Lcom/smartisanos/magicflow/cache/WeatherDataCache$1;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/cache/WeatherDataCache$1;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/o/d;->send()V

    return-void
.end method

.method public static updateWeatherDetailInfo(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "alert_type"

    if-eqz p1, :cond_7

    :try_start_0
    const-string v1, "WeatherHelper.WEATHER_COLUMN_DATE"

    .line 1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v1, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;-><init>()V

    const-string v2, "pubdate"

    .line 3
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->setDate(J)V

    :cond_1
    const-string v2, "weatherCode"

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->setWeatherCode(I)V

    .line 10
    invoke-static {p0, v2}, Lcom/smartisanos/magicflow/view/weather/WeatherHelper;->getWeatherDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->setDescription(Ljava/lang/String;)V

    :cond_2
    const-string p0, "city"

    .line 11
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 13
    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->setLocation(Ljava/lang/String;)V

    :cond_3
    const-string p0, "AQI"

    const/4 v2, -0x1

    .line 14
    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 15
    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->setAqi(I)V

    const-string p0, "temp"

    .line 16
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "--"

    if-nez v2, :cond_4

    .line 18
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->setTempC(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->setTempC(Ljava/lang/String;)V

    :goto_0
    const-string p0, "fahrenheitTemp"

    .line 20
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 22
    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->setTempF(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_5
    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->setTempF(Ljava/lang/String;)V

    :goto_1
    const-string p0, "compC"

    const/4 v2, 0x0

    .line 24
    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 25
    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->setCompC(I)V

    const-string p0, "compF"

    .line 26
    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 27
    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->setCompF(I)V

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->setAlertType(Ljava/lang/String;)V

    const-string p0, "alert_level"

    .line 30
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->setAlertLevel(Ljava/lang/String;)V

    const-string p0, "alert_level_number"

    .line 31
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->setAlertLevelNum(Ljava/lang/String;)V

    .line 32
    :cond_6
    sput-object v1, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->sWeatherInfo:Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;

    .line 33
    invoke-static {}, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->notifyDataChanged()V

    goto :goto_3

    .line 34
    :cond_7
    :goto_2
    sget-object p0, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "updateWeatherDetailInfo intent no data"

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->updateWeatherData()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    invoke-static {}, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->updateWeatherData()V

    :goto_3
    return-void
.end method
