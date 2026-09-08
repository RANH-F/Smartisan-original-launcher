.class final Lcom/smartisanos/magicflow/cache/WeatherDataCache$1;
.super Lcom/smartisanos/magicflow/o/d;
.source "WeatherDataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/WeatherDataCache;->updateWeatherData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/o/d;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v1, Lcom/smartisanos/magicflow/h/d;->T:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->sLastTimeUpdate:J

    .line 4
    invoke-static {v0}, Lcom/smartisanos/magicflow/view/weather/WeatherHelper;->getCurrentWeatherDetailInfo(Landroid/content/Context;)Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    new-instance v1, Lcom/smartisanos/magicflow/cache/WeatherDataCache$1$1;

    invoke-direct {v1, p0, v0}, Lcom/smartisanos/magicflow/cache/WeatherDataCache$1$1;-><init>(Lcom/smartisanos/magicflow/cache/WeatherDataCache$1;Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;)V

    invoke-static {v1}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
