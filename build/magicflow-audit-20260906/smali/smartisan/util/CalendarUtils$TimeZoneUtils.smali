.class public Lsmartisan/util/CalendarUtils$TimeZoneUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/util/CalendarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeZoneUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
    }
.end annotation


# static fields
.field public static final CALENDAR_CACHE_POJECTION:[Ljava/lang/String;

.field public static final KEY_HOME_TZ:Ljava/lang/String; = "preferences_home_tz"

.field public static final KEY_HOME_TZ_ENABLED:Ljava/lang/String; = "preferences_home_tz_enabled"

.field private static final TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

.field private static final TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

.field private static mF:Ljava/util/Formatter;

.field private static volatile mFirstTZRequest:Z

.field private static mHandler:Lsmartisan/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

.field private static volatile mHomeTZ:Ljava/lang/String;

.field private static mSB:Ljava/lang/StringBuilder;

.field private static mTZCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mTZQueryInProgress:Z

.field private static mToken:I

.field private static volatile mUseHomeTZ:Z


# instance fields
.field private final mPrefsName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "timezoneType"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    const-string v0, "timezoneInstances"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    const-string v0, "key"

    const-string v1, "value"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->CALENDAR_CACHE_POJECTION:[Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    .line 5
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mF:Ljava/util/Formatter;

    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    const/4 v1, 0x0

    .line 7
    sput-boolean v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    .line 8
    sput-boolean v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 9
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    .line 11
    sput v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mToken:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 1
    sget-boolean v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lsmartisan/util/CalendarUtils$TimeZoneUtils;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public forceDBRequery(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    if-eqz v1, :cond_0

    .line 3
    sget-object p1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    sput-boolean v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 6
    invoke-virtual {p0, p1, p2}, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 9

    and-int/lit16 v0, p6, 0x2000

    if-eqz v0, :cond_0

    const-string v0, "UTC"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v8, v0

    .line 2
    sget-object v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4
    sget-object v2, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mF:Ljava/util/Formatter;

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 9

    .line 1
    sget-object v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    sput-boolean v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    const/4 v1, 0x0

    .line 4
    sput-boolean v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 5
    iget-object v2, p0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    invoke-static {p1, v2}, Lsmartisan/util/CalendarUtils;->access$600(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "preferences_home_tz_enabled"

    .line 6
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    const-string v1, "preferences_home_tz"

    .line 7
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    .line 9
    sget-object v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mHandler:Lsmartisan/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lsmartisan/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Lsmartisan/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mHandler:Lsmartisan/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 12
    :cond_0
    sget-object v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mHandler:Lsmartisan/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    const/4 v2, 0x0

    sget-object v4, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    sget-object v5, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->CALENDAR_CACHE_POJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    sget-boolean p1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    if-eqz p1, :cond_2

    .line 14
    sget-object p1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    sget-boolean p1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz p1, :cond_3

    sget-object p1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    const-string v1, "auto"

    .line 3
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4
    sget-boolean p2, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 5
    sput-boolean v2, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    goto :goto_0

    .line 6
    :cond_1
    sget-boolean v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v1, :cond_2

    sget-object v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v2, v3

    .line 7
    :cond_3
    sput-boolean v3, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 8
    sput-object p2, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    move p2, v2

    .line 9
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_7

    .line 10
    iget-object p2, p0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    invoke-static {p1, p2}, Lsmartisan/util/CalendarUtils;->access$600(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 11
    sget-boolean v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    const-string v1, "preferences_home_tz_enabled"

    invoke-static {p2, v1, v0}, Lsmartisan/util/CalendarUtils;->access$700(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 12
    sget-object v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    const-string v1, "preferences_home_tz"

    invoke-static {p2, v1, v0}, Lsmartisan/util/CalendarUtils;->access$800(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 14
    sget-object p2, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mHandler:Lsmartisan/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-eqz p2, :cond_4

    .line 15
    sget v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mToken:I

    invoke-virtual {p2, v0}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 16
    :cond_4
    new-instance p2, Lsmartisan/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lsmartisan/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Lsmartisan/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object p2, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mHandler:Lsmartisan/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 17
    sget p1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mToken:I

    add-int/2addr p1, v3

    sput p1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mToken:I

    if-nez p1, :cond_5

    .line 18
    sput v3, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mToken:I

    .line 19
    :cond_5
    sget-boolean p1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz p1, :cond_6

    const-string p1, "home"

    goto :goto_1

    :cond_6
    const-string p1, "auto"

    :goto_1
    const-string p2, "value"

    invoke-virtual {v8, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v4, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mHandler:Lsmartisan/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v5, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v6, 0x0

    sget-object v7, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    sget-object v10, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    const-string v9, "key=?"

    invoke-virtual/range {v4 .. v10}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 21
    sget-boolean p1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz p1, :cond_7

    .line 22
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 23
    sget-object p1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    const-string p2, "value"

    invoke-virtual {v4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mHandler:Lsmartisan/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v1, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    sget-object v6, Lsmartisan/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    const-string v5, "key=?"

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
