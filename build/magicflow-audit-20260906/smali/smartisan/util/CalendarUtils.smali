.class public Lsmartisan/util/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/util/CalendarUtils$TimeZoneUtils;
    }
.end annotation


# static fields
.field public static final EVENT_TYPE_NORMAL:I = 0x2

.field public static final MAX_CALENDAR_YEAR:I = 0x7f5

.field public static final MIN_CALENDAR_YEAR:I = 0x7b2

.field public static final MONDAY_BEFORE_JULIAN_EPOCH:I = 0x253d89

.field private static mAssetManager:Landroid/content/res/AssetManager;

.field private static final mCalendarBg:Ljava/lang/String;

.field private static final mCalendarFlip:Ljava/lang/String;

.field private static final mCalendarPrefix:Ljava/lang/String;

.field private static final mCalendarRing:Ljava/lang/String;

.field private static final mTZUtils:Lsmartisan/util/CalendarUtils$TimeZoneUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;

    const-string v1, "com.android.calendar_preferences"

    invoke-direct {v0, v1}, Lsmartisan/util/CalendarUtils$TimeZoneUtils;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsmartisan/util/CalendarUtils;->mTZUtils:Lsmartisan/util/CalendarUtils$TimeZoneUtils;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lsmartisan/util/CalendarUtils;->mAssetManager:Landroid/content/res/AssetManager;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calendar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/util/CalendarUtils;->mCalendarPrefix:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsmartisan/util/CalendarUtils;->mCalendarPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bg.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/util/CalendarUtils;->mCalendarBg:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsmartisan/util/CalendarUtils;->mCalendarPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ring.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/util/CalendarUtils;->mCalendarRing:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsmartisan/util/CalendarUtils;->mCalendarPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "flip.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/util/CalendarUtils;->mCalendarFlip:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsmartisan/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lsmartisan/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lsmartisan/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addEnglishNumberSuffix(I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lsmartisan/util/CalendarUtils;->getEnglishNumberSuffix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static adjustToBeginningOfWeek(Landroid/text/format/Time;I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/format/Time;->weekDay:I

    sub-int/2addr v0, p1

    if-eqz v0, :cond_1

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    .line 2
    :cond_0
    iget p1, p0, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->normalize(Z)J

    :cond_1
    return-void
.end method

.method public static compareJulianDay(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide p0, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, p0, p1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p0

    sub-int/2addr v1, p0

    return v1
.end method

.method public static createComposedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-static {}, Lsmartisan/util/CalendarUtils;->getCurrentDay()I

    move-result v0

    .line 2
    invoke-static {v0}, Lsmartisan/util/CalendarUtils;->createComposedBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createComposedBitmap(I)Landroid/graphics/Bitmap;
    .locals 14

    const/4 v0, 0x0

    const-string v1, "CalendarUtils"

    const/4 v2, 0x1

    if-lt p0, v2, :cond_3

    const/16 v3, 0x1f

    if-le p0, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0xc0

    const/16 v4, 0x2d

    const/16 v5, 0x48

    .line 3
    sget-object v6, Lsmartisan/util/CalendarUtils;->mCalendarBg:Ljava/lang/String;

    invoke-static {v6}, Lsmartisan/util/CalendarUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 4
    sget-object v7, Lsmartisan/util/CalendarUtils;->mCalendarRing:Ljava/lang/String;

    invoke-static {v7}, Lsmartisan/util/CalendarUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 5
    sget-object v8, Lsmartisan/util/CalendarUtils;->mCalendarFlip:Ljava/lang/String;

    invoke-static {v8}, Lsmartisan/util/CalendarUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lsmartisan/util/CalendarUtils;->mCalendarPrefix:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, v2

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsmartisan/util/CalendarUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    if-nez p0, :cond_1

    goto/16 :goto_0

    .line 7
    :cond_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 9
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 10
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 12
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v2, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/RectF;

    int-to-float v3, v3

    const/4 v11, 0x0

    invoke-direct {v10, v11, v11, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v6, v2, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 13
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v2, v12, v12, v10, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v11, v11, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v8, v2, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 14
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v2, v12, v12, v10, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v11, v11, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v7, v2, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 15
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v2, v12, v12, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v4

    int-to-float v5, v5

    const/16 v10, 0x93

    int-to-float v10, v10

    const/16 v11, 0x96

    int-to-float v11, v11

    invoke-direct {v3, v4, v5, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p0, v2, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 16
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 17
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 18
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    .line 20
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error. bgBitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ringBitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " flipBitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " day = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 21
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error. currentDay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lsmartisan/util/CalendarUtils;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v1, v9, v10

    .line 6
    new-array v11, v1, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v11

    move v4, v9

    move v7, v9

    move v8, v10

    .line 7
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    .line 9
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v3, v11

    move v5, v9

    move v6, v9

    move v7, v10

    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private static getCurrentDay()I
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultWeekStartWithLocale(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ID"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getEnglishNumberSuffix(I)Ljava/lang/String;
    .locals 2

    const-string v0, "th"

    const/16 v1, 0xb

    if-lt p0, v1, :cond_0

    const/16 v1, 0xd

    if-gt p0, v1, :cond_0

    return-object v0

    .line 1
    :cond_0
    rem-int/lit8 p0, p0, 0xa

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    const-string p0, "rd"

    return-object p0

    :cond_2
    const-string p0, "nd"

    return-object p0

    :cond_3
    const-string p0, "st"

    return-object p0
.end method

.method public static getFirstDayOfWeekInCalendar(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lsmartisan/util/CalendarUtils;->getDefaultWeekStartWithLocale(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public static getFirstDayOfWeekInTime(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lsmartisan/util/CalendarUtils;->getDefaultWeekStartWithLocale(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static getJulianDay(Landroid/text/format/Time;)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p0

    return p0
.end method

.method public static getJulianMondayFromWeeksSinceEpoch(I)I
    .locals 1

    mul-int/lit8 p0, p0, 0x7

    const v0, 0x253d89

    add-int/2addr p0, v0

    return p0
.end method

.method public static getMaxTimeMills()J
    .locals 4

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    const/16 v1, 0x1f

    const/16 v2, 0xb

    const/16 v3, 0x7f5

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMinTimeMills()J
    .locals 4

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x7b2

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/util/CalendarUtils;->mTZUtils:Lsmartisan/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .locals 1

    rsub-int/lit8 p1, p1, 0x4

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x7

    :cond_0
    const v0, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v0, p1

    sub-int/2addr p0, v0

    .line 1
    div-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static isTheSameDay(Landroid/text/format/Time;Landroid/text/format/Time;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v1, p0, Landroid/text/format/Time;->year:I

    iget v2, p1, Landroid/text/format/Time;->year:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/text/format/Time;->month:I

    iget v2, p1, Landroid/text/format/Time;->month:I

    if-ne v1, v2, :cond_1

    iget p0, p0, Landroid/text/format/Time;->monthDay:I

    iget p1, p1, Landroid/text/format/Time;->monthDay:I

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isValidDay(J)Z
    .locals 7

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x7b2

    .line 2
    invoke-virtual {v0, v2, v1, v3}, Landroid/text/format/Time;->set(III)V

    .line 3
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 4
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    const/16 v5, 0x7f6

    .line 5
    invoke-virtual {v0, v2, v1, v5}, Landroid/text/format/Time;->set(III)V

    .line 6
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    cmp-long v0, p0, v5

    if-gtz v0, :cond_0

    cmp-long p0, p0, v3

    if-ltz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isValidDay(Landroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;)Z
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lsmartisan/util/CalendarUtils;->compareJulianDay(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result p0

    if-gtz p0, :cond_0

    .line 8
    invoke-static {p2, p1}, Lsmartisan/util/CalendarUtils;->compareJulianDay(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static varargs setFisrtDayOfWeek(Landroid/content/Context;[Ljava/util/Calendar;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lsmartisan/util/CalendarUtils;->getFirstDayOfWeekInCalendar(Landroid/content/Context;)I

    move-result p0

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    invoke-virtual {v2, p0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    const/4 v3, 0x4

    .line 4
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    const/4 v3, 0x3

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->clear(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 0

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 5
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static turningMonthIsValid(Landroid/text/format/Time;Z)Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v0, 0x7f5

    if-gt p1, v0, :cond_0

    move p0, v1

    :cond_0
    return p0

    :cond_1
    const/4 p1, -0x1

    .line 5
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v0, 0x7b2

    if-lt p1, v0, :cond_2

    move p0, v1

    :cond_2
    return p0
.end method
