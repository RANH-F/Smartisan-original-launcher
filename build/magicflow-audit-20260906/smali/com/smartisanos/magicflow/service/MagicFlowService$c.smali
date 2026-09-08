.class final Lcom/smartisanos/magicflow/service/MagicFlowService$c;
.super Ljava/lang/Object;
.source "MagicFlowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/service/MagicFlowService;->c()V
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
    sget-object v0, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->sWeatherInfo:Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->updateWeatherData()V

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/CalendarDataCache;->CALENDAR_INFO_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/cache/CalendarDataCache;->updateCalendarData(J)V

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ContactsDataCache;->updateContactsData(Z)V

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->a()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/v;->b(Landroid/content/Context;)V

    return-void
.end method
