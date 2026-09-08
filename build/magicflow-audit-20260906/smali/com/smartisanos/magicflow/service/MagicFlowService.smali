.class public Lcom/smartisanos/magicflow/service/MagicFlowService;
.super Landroid/app/IntentService;
.source "MagicFlowService.java"


# static fields
.field private static final c:Lcom/smartisanos/magicflow/LOG;

.field private static d:Lcom/smartisanos/magicflow/service/MagicFlowService;

.field private static e:Z

.field private static final f:Lcom/android/internal/remote/IMagicFlow$Stub;


# instance fields
.field private final a:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

.field private final b:Landroid/app/IActivityObserver$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/service/MagicFlowService;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/service/MagicFlowService;->c:Lcom/smartisanos/magicflow/LOG;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartisanos/magicflow/service/MagicFlowService;->e:Z

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/service/MagicFlowService$b;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/service/MagicFlowService$b;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/service/MagicFlowService;->f:Lcom/android/internal/remote/IMagicFlow$Stub;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "MagicFlowService"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/service/MagicFlowService$e;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/service/MagicFlowService$e;-><init>(Lcom/smartisanos/magicflow/service/MagicFlowService;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/service/MagicFlowService;->a:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/service/MagicFlowService$f;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/service/MagicFlowService$f;-><init>(Lcom/smartisanos/magicflow/service/MagicFlowService;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/service/MagicFlowService;->b:Landroid/app/IActivityObserver$Stub;

    return-void
.end method

.method static synthetic a()Lcom/smartisanos/magicflow/service/MagicFlowService;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/service/MagicFlowService;->d:Lcom/smartisanos/magicflow/service/MagicFlowService;

    return-object v0
.end method

.method static synthetic a(Lcom/smartisanos/magicflow/service/MagicFlowService;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/service/MagicFlowService;->f()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 15
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.android.contacts"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/16 v0, 0x400

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 17
    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 19
    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 20
    invoke-static {p0}, Lcom/smartisanos/magicflow/cache/ContactsDataCache;->updateContactsData(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;II)V
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/smartisanos/magicflow/service/MagicFlowService;->b(Ljava/lang/String;II)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 4

    .line 4
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/n;->b()I

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p0, Lcom/smartisanos/magicflow/service/MagicFlowService;->c:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "SettingInfoDB has data"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v1

    .line 7
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 8
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.HOME"

    .line 9
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.smartisanos.launcher"

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 13
    :cond_3
    :goto_0
    sget-object p0, Lcom/smartisanos/magicflow/service/MagicFlowService;->c:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "launcher is not smartisanos"

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method static synthetic b()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/service/MagicFlowService;->c:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .line 15
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->d:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/smartisanos/magicflow/service/MagicFlowService;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.smartisanos.launcher"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 17
    sput-boolean p0, Lcom/smartisanos/magicflow/service/MagicFlowService;->e:Z

    .line 18
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/smartisanos/magicflow/service/MagicFlowService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    sget-object v0, Lcom/smartisanos/magicflow/service/MagicFlowService;->c:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "launcher startup !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 21
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/s;->c(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Ljava/lang/String;II)V
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const p1, 0x8000

    .line 3
    invoke-static {p1}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string p2, "com.eg.android.AlipayGphone"

    .line 4
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->l()V

    .line 6
    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    :cond_1
    const/4 p1, 0x4

    .line 7
    invoke-static {p1}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 p1, 0x1f4

    .line 8
    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/cache/CalendarDataCache;->updateCalendarData(J)V

    :cond_2
    const/16 p1, 0x200

    .line 9
    invoke-static {p1}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 10
    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 11
    new-instance p1, Lcom/smartisanos/magicflow/service/MagicFlowService$g;

    invoke-direct {p1}, Lcom/smartisanos/magicflow/service/MagicFlowService$g;-><init>()V

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_3
    invoke-static {p0}, Lcom/smartisanos/magicflow/service/MagicFlowService;->b(Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Lcom/smartisanos/magicflow/service/MagicFlowService;->a(Ljava/lang/String;)V

    .line 14
    invoke-static {p0}, Lcom/smartisanos/magicflow/service/MagicFlowService;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static c()V
    .locals 3

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/service/MagicFlowService$c;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/service/MagicFlowService$c;-><init>()V

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lcom/smartisanos/magicflow/o/d;->postDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.smartisanos.launcher"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    new-instance p0, Lcom/smartisanos/magicflow/service/MagicFlowService$h;

    invoke-direct {p0}, Lcom/smartisanos/magicflow/service/MagicFlowService$h;-><init>()V

    invoke-static {p0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static d()Lcom/smartisanos/magicflow/service/MagicFlowService;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/service/MagicFlowService;->d:Lcom/smartisanos/magicflow/service/MagicFlowService;

    return-object v0
.end method

.method public static e()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->c:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/smartisanos/magicflow/h/d;->T:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/service/MagicFlowService$d;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/service/MagicFlowService$d;-><init>()V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    sget v0, Lcom/smartisanos/magicflow/h/d;->T:I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-static {v0}, Lcom/smartisanos/magicflow/b;->b(I)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/e;->a(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcom/smartisanos/magicflow/d;->a(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/IntentService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->a(Landroid/app/Application;)V

    .line 4
    invoke-static {p0}, Lcom/smartisanos/magicflow/service/SchedulerService;->a(Landroid/content/Context;)V

    const-string v0, "activity"

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/IntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 6
    :try_start_0
    invoke-static {}, Lsmartisanos/api/ActivityManagerSmt;->getInstance()Lsmartisanos/api/ActivityManagerSmt;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/magicflow/service/MagicFlowService;->b:Landroid/app/IActivityObserver$Stub;

    invoke-virtual {v1, v0, v2}, Lsmartisanos/api/ActivityManagerSmt;->registerActivityObserver(Landroid/app/ActivityManager;Landroid/app/IActivityObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7
    :catch_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "registerActivityObserver"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/app/IActivityObserver;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Lcom/smartisanos/magicflow/service/MagicFlowService;->b:Landroid/app/IActivityObserver$Stub;

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/app/IntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/service/MagicFlowService;->a:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_2
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->e()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    sget-object p1, Lcom/smartisanos/magicflow/service/MagicFlowService;->c:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "onBind !"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/smartisanos/magicflow/service/MagicFlowService;->f:Lcom/android/internal/remote/IMagicFlow$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/service/MagicFlowService;->c:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "mol service onCreate"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    sput-object p0, Lcom/smartisanos/magicflow/service/MagicFlowService;->d:Lcom/smartisanos/magicflow/service/MagicFlowService;

    .line 4
    invoke-static {p0}, Lcom/smartisanos/magicflow/h/z/j;->a(Landroid/content/Context;)V

    .line 5
    new-instance v0, Lcom/smartisanos/magicflow/receiver/UnlockedReceiver;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/receiver/UnlockedReceiver;-><init>()V

    invoke-static {}, Lcom/smartisanos/magicflow/receiver/UnlockedReceiver;->b()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/IntentService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    new-instance v0, Lcom/smartisanos/magicflow/service/MagicFlowService$a;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/service/MagicFlowService$a;-><init>(Lcom/smartisanos/magicflow/service/MagicFlowService;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/service/MagicFlowService;->c:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "service onDestroy"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/smartisanos/magicflow/e;->b(Landroid/content/Context;)V

    .line 4
    invoke-static {p0}, Lcom/smartisanos/magicflow/d;->b(Landroid/content/Context;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/smartisanos/magicflow/service/MagicFlowService;->c:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "onHandleIntent !"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void
.end method
