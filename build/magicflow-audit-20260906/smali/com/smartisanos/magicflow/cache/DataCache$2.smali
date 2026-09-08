.class final Lcom/smartisanos/magicflow/cache/DataCache$2;
.super Ljava/lang/Object;
.source "DataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/DataCache;->reloadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->updateWeatherData()V

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/cache/CalendarDataCache;->updateCalendarData(J)V

    return-void
.end method
