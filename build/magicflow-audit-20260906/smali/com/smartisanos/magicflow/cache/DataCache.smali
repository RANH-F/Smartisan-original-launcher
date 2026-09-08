.class public Lcom/smartisanos/magicflow/cache/DataCache;
.super Ljava/lang/Object;
.source "DataCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initLocalData(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    const/high16 v0, 0x40000

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 3
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/v;->a(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->initWeatherData()V

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->init()V

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->f()V

    .line 7
    invoke-static {}, Lcom/smartisanos/magicflow/cache/NewsCache;->init()V

    .line 8
    invoke-static {}, Lcom/smartisanos/magicflow/cache/CalendarDataCache;->initCalendarData()V

    .line 9
    invoke-static {}, Lcom/smartisanos/magicflow/cache/LifeInfoDataCache;->init()V

    .line 10
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ContactsDataCache;->initContactsData()V

    .line 11
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->init(Landroid/content/Context;)V

    .line 12
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->init(Landroid/content/Context;)V

    .line 13
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/MusicDataCache;->init(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->init()V

    .line 15
    invoke-static {}, Lcom/smartisanos/magicflow/h/v;->h()V

    .line 16
    new-instance p0, Lcom/smartisanos/magicflow/cache/DataCache$1;

    invoke-direct {p0}, Lcom/smartisanos/magicflow/cache/DataCache$1;-><init>()V

    invoke-static {p0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static reloadData()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/cache/DataCache$2;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/cache/DataCache$2;-><init>()V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateNetData(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/NewsCache;->updateCardData(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->syncWithServer()V

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->updateWeatherData()V

    return-void
.end method
