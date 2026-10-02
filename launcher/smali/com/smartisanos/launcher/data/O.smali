.class public Lcom/smartisanos/launcher/data/O;
.super Ljava/lang/Object;
.source "LauncherSettings.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;

.field private static mInstance:Lcom/smartisanos/launcher/data/O;


# instance fields
.field private Ar:Z

.field private Br:Z

.field private wr:I

.field private xr:I

.field private yr:Z

.field private zr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/data/O;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/O;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/data/O;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/O;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/O;->mInstance:Lcom/smartisanos/launcher/data/O;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/data/O;->wr:I

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/data/O;->xr:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/launcher/data/O;->yr:Z

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/data/O;->zr:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/launcher/data/O;->Ar:Z

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/launcher/data/O;->Br:Z

    return-void
.end method

.method public static W(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/smartisanos/launcher/data/M;->br:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/smartisanos/launcher/data/Constants$HandHabit;->LEFT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sput-object p0, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sput-object p0, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    .line 5
    :goto_0
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_1

    .line 6
    sget-object p0, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sput-object p0, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/data/O;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "put theme to setting. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/smartisanos/launcher/data/M;->LAUNCHER_THEME:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string v0, "com.smartisanos.launcher_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "launcher_theme"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/smartisanos/launcher/data/O;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/O;->mInstance:Lcom/smartisanos/launcher/data/O;

    return-object v0
.end method

.method public static j(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 3

    :try_start_0
    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/M;->LAUNCHER_THEME:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    :goto_0
    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/data/O;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get theme from setting. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    :try_start_1
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "launcher_theme"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :cond_1
    return-object p0
.end method

.method private ua(Landroid/content/Context;)V
    .locals 9

    const-string v0, "true"

    move-object v8, p1

    .line 1
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/data/O;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "loadFromSetting begin !"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 3
    :try_start_0
    sget-object v1, Lcom/smartisanos/launcher/data/M;->LAUNCHER_HIDE_LABLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v8, v1, v2}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->readBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 4
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 5
    iput-boolean v2, p0, Lcom/smartisanos/launcher/data/O;->yr:Z

    goto :goto_0

    .line 6
    :cond_1
    iput-boolean v3, p0, Lcom/smartisanos/launcher/data/O;->yr:Z

    .line 7
    :goto_0
    sget-object v1, Lcom/smartisanos/launcher/data/M;->LAUNCHER_HIDE_BADGE:Ljava/lang/String;

    invoke-static {v8, v1, v3}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->readBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iput-boolean v2, p0, Lcom/smartisanos/launcher/data/O;->zr:Z

    goto :goto_1

    .line 10
    :cond_2
    iput-boolean v3, p0, Lcom/smartisanos/launcher/data/O;->zr:Z

    .line 11
    :goto_1
    sget-object v0, Lcom/smartisanos/launcher/data/M;->LAUNCHER_BADGE_SWIPE_CLEAN:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iput-boolean v3, p0, Lcom/smartisanos/launcher/data/O;->Ar:Z

    goto :goto_2

    .line 14
    :cond_3
    iput-boolean v2, p0, Lcom/smartisanos/launcher/data/O;->Ar:Z

    .line 15
    :goto_2
    sget-object v0, Lcom/smartisanos/launcher/data/M;->cr:Ljava/lang/String;

    invoke-static {v8, v0, v3}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->readBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    .line 16
    :goto_3
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_UNLOCK_ANIMATION:Z

    .line 17
    sget-object v0, Lcom/smartisanos/launcher/data/M;->dr:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    # Smartisan ROMs provide launcher_mode through Settings.Global. On other
    # ROMs it is absent or may contain a legacy 3 x 3 mode, so accept only the
    # port's persisted 12/20 choices before the original mode conversion.
    invoke-static {v8, v0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->resolvePortLauncherMode(Landroid/content/Context;I)I

    move-result v0

    .line 18
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->checkSingleMode(I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 19
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getPageModeFromMode(I)I

    move-result v4

    iput v4, p0, Lcom/smartisanos/launcher/data/O;->wr:I

    .line 20
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, " mBasePageMode = "

    if-eqz v4, :cond_5

    :try_start_1
    sget-object v4, Lcom/smartisanos/launcher/data/O;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "from setting 1. baseMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/smartisanos/launcher/data/O;->wr:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 21
    :cond_5
    iget v4, p0, Lcom/smartisanos/launcher/data/O;->wr:I

    invoke-static {p1, v4}, Lcom/smartisanos/launcher/data/Constants;->checkPageModeWithDevice(Landroid/content/ContentResolver;I)I

    move-result v4

    iput v4, p0, Lcom/smartisanos/launcher/data/O;->wr:I

    .line 22
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/smartisanos/launcher/data/O;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "from setting 2. baseMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/smartisanos/launcher/data/O;->wr:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 23
    :cond_6
    iget v0, p0, Lcom/smartisanos/launcher/data/O;->wr:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->setModeFromLauncherSetting(I)V

    .line 24
    sget-object v0, Lcom/smartisanos/launcher/data/M;->er:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/smartisanos/launcher/data/O;->wr:I

    invoke-static {v8, v0, v1}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->resolvePortLauncherMultiMode(Landroid/content/Context;II)I

    move-result v0

    .line 25
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->checkMultiMode(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 26
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getPageModeFromMode(I)I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->setMultiPageMode(I)V

    goto :goto_4

    .line 27
    :cond_7
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/smartisanos/launcher/data/O;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no match case when read complexMode from setting ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 28
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->setDefaultMultiPageMode()V

    .line 29
    :goto_4
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_9

    .line 30
    invoke-static {p1}, Lcom/smartisanos/launcher/ua;->f(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->setLargeScreenMeetingMode(I)V

    .line 31
    :cond_9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 32
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 33
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getMultiPageMode()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/V;->setMultiPageMode(I)V

    .line 34
    :cond_a
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 35
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getMultiPageMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/fa;->setMultiPageMode(I)V

    .line 36
    :cond_b
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->verify()Z

    .line 37
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getMultiPageMode()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/data/O;->xr:I

    .line 38
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->verifyComplexMode()Z

    .line 39
    iget-boolean v0, p0, Lcom/smartisanos/launcher/data/O;->yr:Z

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_5

    :cond_c
    move v0, v3

    :goto_5
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    .line 40
    iget-boolean v0, p0, Lcom/smartisanos/launcher/data/O;->zr:Z

    if-nez v0, :cond_d

    move v0, v2

    goto :goto_6

    :cond_d
    move v0, v3

    :goto_6
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    .line 41
    iget-boolean p0, p0, Lcom/smartisanos/launcher/data/O;->Ar:Z

    sput-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWEEP_MESSAGE_FLAG:Z

    .line 42
    sput-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LAUNCH_FLIP_ANIMATION:Z

    .line 43
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz p0, :cond_e

    .line 44
    sput-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LAUNCH_FLIP_ANIMATION:Z

    .line 45
    :cond_e
    const-string p0, "fast_launch_app_on"

    invoke-static {v8, p0, v2}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->readBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/smartisanos/launcher/data/Constants;->OPEN_APP_IN_MULTI_PAGE_MODE:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    :try_start_2
    sget-object p0, Lcom/smartisanos/launcher/data/M;->br:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_f

    .line 47
    sget-object p0, Lcom/smartisanos/launcher/data/Constants$HandHabit;->LEFT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sput-object p0, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    goto :goto_7

    .line 48
    :cond_f
    sget-object p0, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sput-object p0, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    .line 49
    :goto_7
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_10

    .line 50
    sget-object p0, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sput-object p0, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    :cond_10
    const-string p0, "launcher_page_animation"

    .line 51
    invoke-static {p1, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v4, "com.smartisanos.launcher_prefs"

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "launcher_page_animation"

    invoke-interface {v4, v5, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    .line 52
    :cond_11
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_12

    sget-object p0, Lcom/smartisanos/launcher/data/O;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCROLL_ANIMATION_TYPE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/a/n;->ea(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_12
    const-string p0, "launcher_switching_orientation"

    .line 55
    invoke-static {p1, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/smartisanos/launcher/data/Constants;->SLIDE_DOCK_ACTION_TYPE:I

    invoke-static {v8}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->applyDockSlideDirectionPreference(Landroid/content/Context;)V

    const-string p0, "voice_assit_by_menu"

    .line 56
    invoke-static {p1, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/smartisanos/launcher/data/Constants;->VOICE_ASSIT_BY_MENU:I

    .line 57
    invoke-static {p1}, Lcom/smartisanos/launcher/ua;->e(Landroid/content/ContentResolver;)Z

    move-result p0

    sput-boolean p0, Lcom/smartisanos/launcher/data/Constants;->FLING_DOWN_FOR_SEARCH:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :catch_0
    move-exception p0

    .line 58
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    :goto_8
    sget-object p0, Lcom/smartisanos/launcher/data/M;->USE_FINGERPRINT_IN_LAUNCHER:Ljava/lang/String;

    invoke-static {p1, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 60
    sput-boolean v3, Lcom/smartisanos/launcher/data/Constants;->USE_FINGER_PRINT:Z

    if-ne p0, v2, :cond_13

    .line 61
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->USE_FINGER_PRINT:Z

    .line 62
    :cond_13
    invoke-static {v8}, Lcom/smartisanos/launcher/theme/IconIlluminationCompat;->enabled(Landroid/content/Context;)Z
    move-result p0
    sput-boolean p0, Lcom/smartisanos/launcher/data/Constants;->SHOW_ICON_SHADOW_LIST:Z

    :cond_14
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_16

    .line 66
    sput-boolean v3, Lcom/smartisanos/launcher/data/Constants;->SHOW_ICON_SHADOW_LIST:Z

    goto :goto_9

    .line 67
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal base mode by "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p0

    .line 68
    sget-object p1, Lcom/smartisanos/launcher/data/O;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init fail, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    :cond_16
    :goto_9
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_17

    sget-object p0, Lcom/smartisanos/launcher/data/O;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "loadFromSetting done !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public static vb()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ua;->vb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public E(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/smartisanos/launcher/data/M;->LAUNCHER_BADGE_SWIPE_CLEAN:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/data/O;->Ar:Z

    const-string v0, "false"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/launcher/data/O;->Ar:Z

    .line 5
    :cond_0
    iget-boolean p0, p0, Lcom/smartisanos/launcher/data/O;->Ar:Z

    sput-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWEEP_MESSAGE_FLAG:Z

    return p0
.end method

.method public J(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/M;->LAUNCHER_HIDE_LABLE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->readBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/launcher/data/O;->yr:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/launcher/data/O;->yr:Z

    .line 5
    :goto_0
    iget-boolean p0, p0, Lcom/smartisanos/launcher/data/O;->yr:Z

    return p0
.end method

.method public K(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/smartisanos/launcher/data/M;->LAUNCHER_HIDE_BADGE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->readBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/launcher/data/O;->zr:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/launcher/data/O;->zr:Z

    .line 5
    :goto_0
    iget-boolean p0, p0, Lcom/smartisanos/launcher/data/O;->zr:Z

    return p0
.end method

.method public V(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x0

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->readTransparentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/data/O;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "LauncherSettings : init begin !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/O;->ua(Landroid/content/Context;)V

    return-void
.end method

.method public uf()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/data/O;->Ar:Z

    return p0
.end method

.method public vf()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/data/O;->xr:I

    return p0
.end method

.method public xf()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/data/O;->yr:Z

    return p0
.end method

.method public yf()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/data/O;->zr:Z

    return p0
.end method

.method public zf()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/data/O;->wr:I

    return p0
.end method
