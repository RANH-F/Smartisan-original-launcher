.class public Lcom/smartisanos/magicflow/o/h;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# static fields
.field private static a:Lcom/smartisanos/magicflow/LOG;

.field private static b:Landroid/location/LocationManager;

.field private static c:Lcom/smartisanos/magicflow/o/i;

.field private static d:Z

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/o/h;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/o/h;->a:Lcom/smartisanos/magicflow/LOG;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartisanos/magicflow/o/h;->d:Z

    .line 3
    sput-boolean v0, Lcom/smartisanos/magicflow/o/h;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/location/Location;)V
    .locals 7

    if-nez p1, :cond_1

    .line 6
    sget-boolean p0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p0, :cond_0

    .line 7
    sget-object p0, Lcom/smartisanos/magicflow/o/h;->a:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "location id null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 8
    :cond_1
    sget-boolean v0, Lcom/smartisanos/magicflow/o/h;->d:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    .line 9
    :try_start_0
    sput-boolean v0, Lcom/smartisanos/magicflow/o/h;->d:Z

    .line 10
    new-instance v1, Landroid/location/Geocoder;

    invoke-direct {v1, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v2

    .line 12
    sget-boolean v3, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v3, :cond_2

    .line 13
    sget-object v3, Lcom/smartisanos/magicflow/o/h;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "location : the flag is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 15
    sput-boolean v1, Lcom/smartisanos/magicflow/o/h;->d:Z

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    if-eqz p1, :cond_8

    .line 18
    sget-boolean v2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v2, :cond_3

    .line 19
    sget-object v2, Lcom/smartisanos/magicflow/o/h;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location city info\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 20
    :cond_3
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 22
    invoke-static {p0}, Lcom/smartisanos/magicflow/o/n;->r(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 24
    :cond_4
    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    :goto_0
    sget-object v2, Lcom/smartisanos/magicflow/h/d;->h:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/smartisanos/magicflow/o/h;->e:Z

    .line 26
    sput-object p1, Lcom/smartisanos/magicflow/h/d;->h:Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/smartisanos/magicflow/h/d;->i:J

    .line 28
    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/h/t;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    sget-wide v0, Lcom/smartisanos/magicflow/h/d;->i:J

    invoke-static {p0, v0, v1}, Lcom/smartisanos/magicflow/h/t;->a(Landroid/content/Context;J)V

    goto :goto_2

    .line 30
    :cond_6
    sput-boolean v1, Lcom/smartisanos/magicflow/o/h;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 31
    :try_start_1
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_7

    .line 32
    sget-object p1, Lcom/smartisanos/magicflow/o/h;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "location fail\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 33
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :cond_8
    :goto_2
    invoke-static {}, Lcom/smartisanos/magicflow/o/h;->b()V

    goto :goto_4

    :goto_3
    invoke-static {}, Lcom/smartisanos/magicflow/o/h;->b()V

    .line 35
    throw p0

    :cond_9
    :goto_4
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/o/h;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    .line 4
    sget v0, Lcom/smartisanos/magicflow/h/d;->T:I

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/o/h$a;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/o/h$a;-><init>(Landroid/content/Context;Z)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 3
    sget-boolean v0, Lcom/smartisanos/magicflow/o/h;->e:Z

    return v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/o/h;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "location"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    sput-object p0, Lcom/smartisanos/magicflow/o/h;->b:Landroid/location/LocationManager;

    .line 3
    :cond_0
    sget-object p0, Lcom/smartisanos/magicflow/o/h;->b:Landroid/location/LocationManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object p0

    const-string v0, "network"

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "passive"

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object v0, v2

    .line 6
    :goto_0
    sget-boolean p0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p0, :cond_2

    .line 7
    sget-object p0, Lcom/smartisanos/magicflow/o/h;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locationManager.getProviders == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_2
    return-object v0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static declared-synchronized b()V
    .locals 4

    const-class v0, Lcom/smartisanos/magicflow/o/h;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/o/h;->b:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    .line 13
    sget-object v1, Lcom/smartisanos/magicflow/o/h;->c:Lcom/smartisanos/magicflow/o/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 14
    sget-object v1, Lcom/smartisanos/magicflow/o/h;->b:Landroid/location/LocationManager;

    sget-object v3, Lcom/smartisanos/magicflow/o/h;->c:Lcom/smartisanos/magicflow/o/i;

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 15
    sput-object v2, Lcom/smartisanos/magicflow/o/h;->c:Lcom/smartisanos/magicflow/o/i;

    .line 16
    :cond_0
    sput-object v2, Lcom/smartisanos/magicflow/o/h;->b:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/smartisanos/magicflow/o/h;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/o/h;->c:Lcom/smartisanos/magicflow/o/i;

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Lcom/smartisanos/magicflow/o/i;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/o/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/smartisanos/magicflow/o/h;->c:Lcom/smartisanos/magicflow/o/i;

    .line 11
    sget-object v1, Lcom/smartisanos/magicflow/o/h;->b:Landroid/location/LocationManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/smartisanos/magicflow/o/h;->c:Lcom/smartisanos/magicflow/o/i;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/smartisanos/magicflow/o/h;->e:Z

    return-void
.end method
