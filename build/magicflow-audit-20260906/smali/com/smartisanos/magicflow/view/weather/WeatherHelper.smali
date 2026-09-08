.class public Lcom/smartisanos/magicflow/view/weather/WeatherHelper;
.super Ljava/lang/Object;
.source "WeatherHelper.java"


# static fields
.field public static final ALERT_LEVEL:Ljava/lang/String; = "alert_level"

.field public static final ALERT_LEVEL_NUMBER:Ljava/lang/String; = "alert_level_number"

.field public static final ALERT_LEVEL_RES_ID:Ljava/lang/String; = "alert_level_res_id"

.field public static final ALERT_TYPE:Ljava/lang/String; = "alert_type"

.field public static final ALERT_TYPE_NUMBER:Ljava/lang/String; = "alert_type_number"

.field public static final ALERT_TYPE_RES_ID:Ljava/lang/String; = "alert_type_res_id"

.field public static final AUTHORITY:Ljava/lang/String; = "content://com.android.providers.weather_v3"

.field public static final CURRENT_LOCATION_URI:Ljava/lang/String; = "/weather/location"

.field public static final CURRENT_WEATHER_URI:Ljava/lang/String; = "/weather/current"

.field private static final DEFAULT_LINK:Ljava/lang/String; = "_1"

.field private static final LINK:Ljava/lang/String; = "_"

.field public static final PREFERENCE_VALUE_C:I = 0x1

.field public static final PREFERENCE_VALUE_F:I = 0x2

.field public static final TEXT_TEMP_TYPE_C:Ljava/lang/String; = "\u00b0C"

.field public static final TEXT_TEMP_TYPE_F:Ljava/lang/String; = "\u00b0F"

.field public static final WEATHER_COLUMN_AQI:Ljava/lang/String; = "AQI"

.field public static final WEATHER_COLUMN_CITY:Ljava/lang/String; = "city"

.field public static final WEATHER_COLUMN_COMPC:Ljava/lang/String; = "compC"

.field public static final WEATHER_COLUMN_COMPF:Ljava/lang/String; = "compF"

.field public static final WEATHER_COLUMN_DATE:Ljava/lang/String; = "pubdate"

.field public static final WEATHER_COLUMN_TEMP:Ljava/lang/String; = "temp"

.field public static final WEATHER_COLUMN_TEMPF:Ljava/lang/String; = "fahrenheitTemp"

.field public static final WEATHER_COLUMN_WEATHER_CODE:Ljava/lang/String; = "weatherCode"

.field public static final WEATHER_TEMP_TYPE_URI:Ljava/lang/String; = "/weather/tempType"

.field private static sLog:Lcom/smartisanos/magicflow/LOG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/view/weather/WeatherHelper;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/view/weather/WeatherHelper;->sLog:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAQIResId(I)I
    .locals 2

    const/16 v0, 0x32

    if-ltz p0, :cond_0

    if-gt p0, v0, :cond_0

    const p0, 0x7f0d006a

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-le p0, v0, :cond_1

    if-gt p0, v1, :cond_1

    const p0, 0x7f0d006c

    goto :goto_0

    :cond_1
    const/16 v0, 0x96

    if-le p0, v1, :cond_2

    if-gt p0, v0, :cond_2

    const p0, 0x7f0d006e

    goto :goto_0

    :cond_2
    const/16 v1, 0xc8

    if-le p0, v0, :cond_3

    if-gt p0, v1, :cond_3

    const p0, 0x7f0d006f

    goto :goto_0

    :cond_3
    const/16 v0, 0x12c

    if-le p0, v1, :cond_4

    if-gt p0, v0, :cond_4

    const p0, 0x7f0d006d

    goto :goto_0

    :cond_4
    if-le p0, v0, :cond_5

    const p0, 0x7f0d006b

    goto :goto_0

    :cond_5
    const p0, 0x7f0d02ab

    :goto_0
    return p0
.end method

.method public static getCurrentWeatherDetailInfo(Landroid/content/Context;)Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/smartisanos/magicflow/view/weather/WeatherHelper;->getWeatherURI()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v6

    .line 5
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "weatherCode"

    .line 7
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "pubdate"

    .line 8
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->setDate(J)V

    const-string v3, "temp"

    .line 9
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->setTempC(Ljava/lang/String;)V

    const-string v3, "fahrenheitTemp"

    .line 10
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->setTempF(Ljava/lang/String;)V

    const-string v3, "AQI"

    .line 11
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->setAqi(I)V

    .line 12
    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->setWeatherCode(I)V

    const-string v3, "city"

    .line 13
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->setLocation(Ljava/lang/String;)V

    .line 14
    invoke-static {p0, v2}, Lcom/smartisanos/magicflow/view/weather/WeatherHelper;->getWeatherDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->setDescription(Ljava/lang/String;)V

    const-string p0, "compC"

    .line 15
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->setCompC(I)V

    const-string p0, "compF"

    .line 16
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->setCompF(I)V

    const-string p0, "alert_type"

    .line 17
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_3

    .line 18
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->setAlertType(Ljava/lang/String;)V

    const-string p0, "alert_level"

    .line 19
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->setAlertLevel(Ljava/lang/String;)V

    const-string p0, "alert_level_number"

    .line 20
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->setAlertLevelNum(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    move-object v1, v6

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 21
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v1, v6

    :goto_1
    move-object v6, v0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v0, v6

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v1, v6

    .line 22
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_4

    .line 23
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 24
    :cond_4
    :goto_3
    sget-boolean p0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p0, :cond_5

    if-eqz v1, :cond_5

    .line 25
    sget-object p0, Lcom/smartisanos/magicflow/view/weather/WeatherHelper;->sLog:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_5
    return-object v1

    :goto_4
    if-eqz v0, :cond_6

    .line 26
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 27
    :cond_6
    throw p0
.end method

.method public static getTempDiffText(Landroid/content/Context;Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/a;->b(Landroid/content/Context;)I

    move-result v2

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->getCompC()I

    move-result p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u00b0C"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->getCompF()I

    move-result p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u00b0F"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    move p1, v5

    :goto_0
    if-nez p1, :cond_2

    const p1, 0x7f0d0230

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    aput-object v3, v1, v4

    goto :goto_2

    :cond_2
    const v2, 0x7f0d00e2

    .line 7
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-ltz p1, :cond_3

    const p1, 0x7f0d02bc

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const p1, 0x7f0d00dd

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string p1, "type"

    .line 10
    invoke-virtual {v2, p1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    aput-object v0, v1, v4

    :goto_2
    return-object v1
.end method

.method public static getWeatherDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x31

    if-ne p1, v0, :cond_1

    const/16 p1, 0x21

    goto :goto_0

    :cond_1
    const/16 v0, 0x35

    if-lt p1, v0, :cond_2

    const/16 v0, 0x3a

    if-gt p1, v0, :cond_2

    add-int/lit8 p1, p1, -0x13

    goto :goto_0

    :cond_2
    const/16 p1, 0x28

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f020002

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getWeatherLocationURI()Landroid/net/Uri;
    .locals 3

    const-string v0, "content://com.android.providers.weather_v3/weather/location"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "source"

    const-string v2, "com.smartisanos.launcher"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getWeatherTypeURI()Landroid/net/Uri;
    .locals 3

    const-string v0, "content://com.android.providers.weather_v3/weather/tempType"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "source"

    const-string v2, "com.smartisanos.launcher"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getWeatherURI()Landroid/net/Uri;
    .locals 3

    const-string v0, "content://com.android.providers.weather_v3/weather/current"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "source"

    const-string v2, "com.smartisanos.magicflow"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
