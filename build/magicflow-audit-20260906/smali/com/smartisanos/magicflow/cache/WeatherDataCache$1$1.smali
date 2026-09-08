.class Lcom/smartisanos/magicflow/cache/WeatherDataCache$1$1;
.super Ljava/lang/Object;
.source "WeatherDataCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/WeatherDataCache$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/cache/WeatherDataCache$1;

.field final synthetic val$info:Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/cache/WeatherDataCache$1;Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/cache/WeatherDataCache$1$1;->this$0:Lcom/smartisanos/magicflow/cache/WeatherDataCache$1;

    iput-object p2, p0, Lcom/smartisanos/magicflow/cache/WeatherDataCache$1$1;->val$info:Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/cache/WeatherDataCache$1$1;->val$info:Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;

    sput-object v0, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->sWeatherInfo:Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->notifyDataChanged()V

    return-void
.end method
