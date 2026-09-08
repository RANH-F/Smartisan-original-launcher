.class final Lcom/bytedance/embed_device_register/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embed_device_register/e$c;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static volatile d:Lcom/bytedance/embed_device_register/e;


# instance fields
.field private a:Lcom/bytedance/embed_device_register/e$c;

.field private b:Lcom/bytedance/embed_device_register/g$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/bytedance/embed_device_register/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embed_device_register/e;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/embed_device_register/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 4
    new-instance v4, Lcom/bytedance/embed_device_register/h;

    invoke-direct {v4}, Lcom/bytedance/embed_device_register/h;-><init>()V

    .line 5
    new-instance v0, Lcom/bytedance/embed_device_register/e$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/embed_device_register/e$a;-><init>(Lcom/bytedance/embed_device_register/e;Landroid/content/SharedPreferences;Lcom/bytedance/embed_device_register/h;Landroid/content/Context;Landroid/content/Context;)V

    const-string p1, "TrackerDr-query-hms"

    .line 6
    invoke-static {p1, v0}, Lcom/bytedance/embed_device_register/d;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/bytedance/embed_device_register/e;Landroid/content/Context;)Lcom/bytedance/embed_device_register/e$c$a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/embed_device_register/e;->c(Landroid/content/Context;)Lcom/bytedance/embed_device_register/e$c$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/embed_device_register/e;)Lcom/bytedance/embed_device_register/e$c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/embed_device_register/e;->a:Lcom/bytedance/embed_device_register/e$c;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/embed_device_register/e;Lcom/bytedance/embed_device_register/e$c;)Lcom/bytedance/embed_device_register/e$c;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/embed_device_register/e;->a:Lcom/bytedance/embed_device_register/e$c;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bytedance/embed_device_register/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackerDr"

    invoke-static {v1, v0}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p0, p1}, Lcom/bytedance/embed_device_register/e;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/e;

    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.huawei.hwid"

    .line 8
    invoke-static {p0, v0}, Lcom/bytedance/embed_device_register/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(Landroid/content/Context;)J
    .locals 3

    const/4 v0, -0x1

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "com.huawei.hwid"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    int-to-long v0, v0

    return-wide v0
.end method

.method static synthetic b(Lcom/bytedance/embed_device_register/e;Landroid/content/Context;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/embed_device_register/e;->b(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method

.method static b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/e;
    .locals 2

    .line 4
    sget-object v0, Lcom/bytedance/embed_device_register/e;->d:Lcom/bytedance/embed_device_register/e;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/bytedance/embed_device_register/e;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/bytedance/embed_device_register/e;->d:Lcom/bytedance/embed_device_register/e;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/bytedance/embed_device_register/e;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/embed_device_register/e;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sput-object v1, Lcom/bytedance/embed_device_register/e;->d:Lcom/bytedance/embed_device_register/e;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 9
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/embed_device_register/e;->d:Lcom/bytedance/embed_device_register/e;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/embed_device_register/e;)Lcom/bytedance/embed_device_register/g$c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/embed_device_register/e;->b:Lcom/bytedance/embed_device_register/g$c;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/bytedance/embed_device_register/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c(Landroid/content/Context;)Lcom/bytedance/embed_device_register/e$c$a;
    .locals 11

    .line 1
    new-instance v6, Lcom/bytedance/embed_device_register/e$c$a;

    invoke-direct {v6}, Lcom/bytedance/embed_device_register/e$c$a;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.huawei.hwid"

    .line 5
    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    new-instance v10, Lcom/bytedance/embed_device_register/e$b;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/embed_device_register/e$b;-><init>(Lcom/bytedance/embed_device_register/e;Lcom/bytedance/embed_device_register/e$c$a;JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p1, v9, v10, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 7
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/bytedance/embed_device_register/e$c$a;->c(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$c$a;

    .line 10
    :goto_0
    new-instance p1, Lcom/bytedance/embed_device_register/e$c$a;

    invoke-direct {p1, v6}, Lcom/bytedance/embed_device_register/e$c$a;-><init>(Lcom/bytedance/embed_device_register/e$c$a;)V

    return-object p1
.end method


# virtual methods
.method a()Lcom/bytedance/embed_device_register/e$c;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e;->a:Lcom/bytedance/embed_device_register/e$c;

    return-object v0
.end method

.method a(Lcom/bytedance/embed_device_register/g$c;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/embed_device_register/e;->b:Lcom/bytedance/embed_device_register/g$c;

    return-void
.end method
