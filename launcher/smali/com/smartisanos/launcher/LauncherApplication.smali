.class public Lcom/smartisanos/launcher/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private proxy:Lcom/smartisanos/launcher/ja;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/LauncherApplication;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/LauncherApplication;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/LauncherApplication;->proxy:Lcom/smartisanos/launcher/ja;

    return-void
.end method


# virtual methods
.method public getProxy()Lcom/smartisanos/launcher/ja;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/LauncherApplication;->proxy:Lcom/smartisanos/launcher/ja;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/data/N;->L(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    sput-boolean v0, Lcom/smartisanos/launcher/ja;->Bh:Z

    .line 5
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/N;->d(Landroid/content/Context;Z)V

    .line 6
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_0

    .line 7
    new-instance v2, Lcom/smartisanos/launcher/wa;

    const/16 v3, 0x64

    invoke-direct {v2, p0, v3}, Lcom/smartisanos/launcher/wa;-><init>(Lcom/smartisanos/launcher/LauncherApplication;I)V

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 9
    :cond_0
    invoke-static {v1}, Lcom/smartisanos/launcher/theme/X;->ea(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->ca(Landroid/content/Context;)V

    .line 11
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 12
    invoke-static {p0}, Lcom/smartisanos/launcher/data/N;->I(Landroid/content/Context;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iput v1, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 14
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/N;->c(Landroid/content/Context;Z)V

    .line 15
    invoke-static {p0, v1}, Lcom/smartisanos/launcher/data/N;->a(Landroid/content/Context;F)V

    .line 16
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/launcher/LauncherApplication;->proxy:Lcom/smartisanos/launcher/ja;

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/ja;->m(Z)V

    .line 17
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 6

    const-string v0, "LAUNCHER_APP_CREATE_BEGIN"

    invoke-static {v0}, Lcom/smartisanos/launcher/diagnostics/StartupCompatibilityLogger;->mark(Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/smartisanos/launcher/data/Constants;->time_application_start:J

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/LauncherApplication;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LauncherTime time_application_start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/smartisanos/launcher/data/Constants;->time_application_start:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/LauncherApplication;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "LauncherApplication onCreate !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/LauncherNetworkPolicy;->initialize(Landroid/content/Context;)V

    const-string v0, "INSTALL_MANAGER_INIT_BEGIN"

    invoke-static {v0}, Lcom/smartisanos/launcher/diagnostics/StartupCompatibilityLogger;->mark(Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/smartisanos/launcher/install/SmartisanInstallManager;->ensure(Landroid/content/Context;)V

    const-string v0, "APPLICATION_PROXY_CREATE_BEGIN"

    invoke-static {v0}, Lcom/smartisanos/launcher/diagnostics/StartupCompatibilityLogger;->mark(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/ja;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/ja;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/LauncherApplication;->proxy:Lcom/smartisanos/launcher/ja;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/LauncherApplication;->proxy:Lcom/smartisanos/launcher/ja;

    const-string v1, "APPLICATION_PROXY_ONCREATE_BEGIN"

    invoke-static {v1}, Lcom/smartisanos/launcher/diagnostics/StartupCompatibilityLogger;->mark(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ja;->onCreate()V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/smartisanos/launcher/data/Constants;->time_application_end:J

    .line 8
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/LauncherApplication;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LauncherTime time_application_end = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/smartisanos/launcher/data/Constants;->time_application_end:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smartisanos/launcher/LauncherApplication;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LauncherTime time_application_init = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/smartisanos/launcher/data/Constants;->time_application_end:J

    sget-wide v4, Lcom/smartisanos/launcher/data/Constants;->time_application_start:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :cond_2
    invoke-static {p0}, Lb/c/a/a;->pa(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 11
    :cond_3
    invoke-static {p0}, Lb/c/a/a;->a(Landroid/app/Application;)Lb/c/a/b;

    .line 12
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/smartisanos/launcher/LauncherApplication;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LauncherTime time_application_LeakCanary_init = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/smartisanos/launcher/data/Constants;->time_application_end:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/LauncherApplication;->proxy:Lcom/smartisanos/launcher/ja;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ja;->onTerminate()V

    return-void
.end method
