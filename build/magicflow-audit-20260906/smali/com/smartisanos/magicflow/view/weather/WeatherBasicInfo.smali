.class public Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;
.super Ljava/lang/Object;
.source "WeatherBasicInfo.java"


# instance fields
.field private mAqi:I

.field private mCompC:I

.field private mCompF:I

.field private mDate:J

.field private mLocationKey:I

.field private mTempC:Ljava/lang/String;

.field private mTempF:Ljava/lang/String;

.field private mWeatherCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAqi()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->mAqi:I

    return v0
.end method

.method public getCompC()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->mCompC:I

    return v0
.end method

.method public getCompF()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->mCompF:I

    return v0
.end method

.method public getDate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->mDate:J

    return-wide v0
.end method

.method public getLocationKey()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->mLocationKey:I

    return v0
.end method

.method public getTempC()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->mTempC:Ljava/lang/String;

    return-object v0
.end method

.method public getTempF()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->mTempF:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->mWeatherCode:I

    return v0
.end method

.method public setAqi(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->mAqi:I

    return-void
.end method

.method public setCompC(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->mCompC:I

    return-void
.end method

.method public setCompF(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->mCompF:I

    return-void
.end method

.method public setDate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->mDate:J

    return-void
.end method

.method public setLocationKey(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->mLocationKey:I

    return-void
.end method

.method public setTempC(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->mTempC:Ljava/lang/String;

    return-void
.end method

.method public setTempF(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->mTempF:Ljava/lang/String;

    return-void
.end method

.method public setWeatherCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->mWeatherCode:I

    return-void
.end method
