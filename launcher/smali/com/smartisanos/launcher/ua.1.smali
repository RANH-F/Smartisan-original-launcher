.class public Lcom/smartisanos/launcher/ua;
.super Ljava/lang/Object;
.source "InvisibleApi.java"


# static fields
.field public static EFFECT_REMOVE_BADGE:I


.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/ua;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/ua;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x2

    .line 2
    sput v0, Lcom/smartisanos/launcher/ua;->EFFECT_REMOVE_BADGE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ab()Ljava/lang/String;
    .locals 1

    const-string v0, "sm_launcher_left_screen_state"

    return-object v0
.end method

.method public static Bb()Ljava/lang/String;
    .locals 2

    const-string v0, "smartisanos.api.SettingsSmt$Global"

    const-string v1, "NAVIGATION_BAR_MODE"

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static Cb()Ljava/lang/String;
    .locals 2

    const-string v0, "smartisanos.api.SettingsSmt$Global"

    const-string v1, "NAVIGATIONBAR_TRIGGER_MODE"

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static Db()Ljava/lang/String;
    .locals 1

    const-string v0, "launcher_wallpaper_uri"

    return-object v0
.end method

.method public static Eb()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_ORIGINAL_LAUNCHER_WALLPAPER_BLUR_ON()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Fb()Ljava/lang/String;
    .locals 2

    const-string v0, "smartisanos.api.SettingsSmt$Global"

    const-string v1, "ICON_ILLUMINATION"

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static Gb()I
    .locals 2

    const-string v0, "android.content.pm.ApplicationInfo"

    const-string v1, "FLAG_SMT_SYSTEM_APP_CAN_UNINSTALL"

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static Hb()Ljava/lang/String;
    .locals 1

    const-string v0, "trigger_search_via_slide_up"

    return-object v0
.end method

.method public static Ib()Ljava/lang/String;
    .locals 1

    const-string v0, "trigger_search_via_slide_up"

    return-object v0
.end method

.method public static J(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Jb()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_DEFAULT_LOCKSCREEN_URI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Kb()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static Lb()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_LAUNCHER_MODE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Mb()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static Nb()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_LAUNCHER_MULTI_BLOCK_MODE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Ob()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_LAUNCHER_THEME()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Pb()Ljava/lang/String;
    .locals 1

    const-string v0, "launcher_unlock_animation_enabled"

    return-object v0
.end method

.method public static Qb()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_ONE_HAND_MODE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Rb()Ljava/lang/String;
    .locals 1

    const-string v0, "launcher_grid_theme"

    return-object v0
.end method

.method public static Sb()Ljava/lang/String;
    .locals 1

    const-string v0, "use_fingerprint_in_launcher"

    return-object v0
.end method

.method public static Tb()Ljava/lang/String;
    .locals 1

    const-string v0, "long_press_timeout"

    return-object v0
.end method

.method public static Ub()Ljava/lang/String;
    .locals 1

    const-string v0, "user_setup_complete"

    return-object v0
.end method

.method public static Vb()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_LAUNCHER_BADGE_SWIPE_CLEAN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Wb()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_LAUNCHER_HIDE_BADGE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Xb()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_LAUNCHER_HIDE_LABLE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Yb()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_LOCKSCREEN_BACKGROUND()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Zb()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_TEMPERATURE_UNIT()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _b()I
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/api/SettingsSmt;->get_TEMPERATURE_UNIT_CELSIUS()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 30
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/app/DownloadManager;J)V
    .locals 3

    .line 1
    invoke-static {}, Lsmartisanos/api/DownloadManagerSmt;->getInstance()Lsmartisanos/api/DownloadManagerSmt;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lsmartisanos/api/DownloadManagerSmt;->pauseDownload(Landroid/app/DownloadManager;[J)V

    return-void
.end method

.method public static a(Landroid/app/DownloadManager;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    return-void

    const-string v0, "vibrator"

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 34
    invoke-static {p0, p1}, Lsmartisanos/api/VibratorSmt;->vibrateEffect(Landroid/os/Vibrator;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 36
    new-instance v0, Lcom/smartisanos/launcher/ta;

    invoke-direct {v0}, Lcom/smartisanos/launcher/ta;-><init>()V

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    .line 22
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/ua;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeSpecialIcon isNormal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 23
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    return-void

    .line 24
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setDefaultFocusHighlightEnabled"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 25
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/Window;)V
    .locals 3

    .line 4
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 5
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x4000000

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, -0x80000000

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 8
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    # Preserve the navigation preference applied before original initialization.
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x700

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 12
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x7ffffe00

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    # System bar visibility must not change the size of the Launcher scene.
    or-int/lit16 v2, v2, 0x700

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_cutout_done

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_cutout_done
    const-string v1, "smt_launcher"

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static a(Landroid/view/Window;Z)V
    .locals 2

    const-string v0, "android.view.View"

    const-string v1, "SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR"

    .line 16
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/2addr p1, v0

    .line 19
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    not-int v0, v0

    and-int/2addr p1, v0

    .line 21
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Lcom/android/internal/sidebar/ILauncher;)V
    .locals 6

    const-string v0, "smartisanos.util.LaunchPadUtils"

    .line 27
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "registerLaunchpadCallback"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/android/internal/sidebar/ILauncher;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static ac()Ljava/lang/String;
    .locals 1

    const-string v0, "left_slide_lunch_global_pills"

    return-object v0
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/ua;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method public static b(FF)Landroid/graphics/BlurMaskFilter;
    .locals 2

    mul-float/2addr p0, p1

    new-instance p1, Landroid/graphics/BlurMaskFilter;

    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p1, p0, v0}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    return-object p1

    .line 2
    invoke-static {}, Lsmartisanos/api/BlurMaskFilterSmt;->getInstance()Lsmartisanos/api/BlurMaskFilterSmt;

    move-result-object v0

    mul-float/2addr p0, p1

    sget-object p1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    sget-object v1, Landroid/graphics/BlurMaskFilter$Quality;->HIGH_QUALITY:Landroid/graphics/BlurMaskFilter$Quality;

    invoke-virtual {v0, p0, p1, v1}, Lsmartisanos/api/BlurMaskFilterSmt;->newBlurMaskFilter(FLandroid/graphics/BlurMaskFilter$Blur;Landroid/graphics/BlurMaskFilter$Quality;)Landroid/graphics/BlurMaskFilter;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/app/DownloadManager;J)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->remove([J)I

    return-void
.end method

.method public static bc()Ljava/lang/String;
    .locals 2

    const-string v0, "smartisanos.api.SettingsSmt$Global"

    const-string v1, "SMART_SCREEN_PROTECTOR"

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static c(FF)Ljava/lang/String;
    .locals 8

    const-string v0, "android.app.SmtPCUtils"

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getWindowPackageByPoint"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 4
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public static c(Landroid/app/DownloadManager;J)V
    .locals 3

    .line 1
    invoke-static {}, Lsmartisanos/api/DownloadManagerSmt;->getInstance()Lsmartisanos/api/DownloadManagerSmt;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lsmartisanos/api/DownloadManagerSmt;->resumeDownload(Landroid/app/DownloadManager;[J)V

    return-void
.end method

.method public static c(Landroid/content/ContentResolver;)Z
    .locals 2

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/data/M;->ir:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public static cc()Ljava/lang/String;
    .locals 1

    const-string v0, "voice_input"

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    move-object v1, p0

    :try_start_0
    invoke-static {}, Lsmartisanos/api/WallpaperManagerSmt;->getInstance()Lsmartisanos/api/WallpaperManagerSmt;

    move-result-object v0

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Lsmartisanos/api/WallpaperManagerSmt;->getDrawableUncheck(Landroid/app/WallpaperManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    :catch_0
    move-exception v0

    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p0, :cond_wallpaper_fallback_return

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->transparentWallpaperDrawableFallback(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_wallpaper_fallback_return

    return-object p0

    :catch_1
    move-exception p0

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->transparentWallpaperDrawableFallback(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/ContentResolver;)Z
    .locals 2

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/data/M;->jr:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public static dc()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public static disableDeathOnFileUriExposure()V
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/os/StrictMode;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "disableDeathOnFileUriExposure"

    :try_start_1
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static dispatchTouchEventToSidebar(I[F)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lsmartisanos/util/SidebarUtils;->dispatchTouchEventToSidebar(I[F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static e(Landroid/content/ContentResolver;)Z
    .locals 2

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/data/M;->kr:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lsmartisanos/util/SidebarUtils;->isSidebarShowing(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static ec()V
    .locals 0

    return-void
.end method

.method public static enableScreenAfterBoot(Landroid/app/ActivityManager;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lsmartisanos/api/ActivityManagerSmt;->getInstance()Lsmartisanos/api/ActivityManagerSmt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsmartisanos/api/ActivityManagerSmt;->enableScreenAfterBoot(Landroid/app/ActivityManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static f(Landroid/content/ContentResolver;)I
    .locals 4

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/data/M;->tr:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 10
    invoke-static {p0}, Lcom/smartisanos/launcher/ua;->getDesktopMode(I)I

    move-result v0

    .line 11
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/ua;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange currentModeState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " currentMode "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/smartisanos/launcher/quickdesktop/QuickDesktopController;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static f(II)[I
    .locals 8

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    new-array v0, v3, [I

    aput v6, v0, v6

    aput v6, v0, v4

    aput p0, v0, v5

    aput p1, v0, v2

    return-object v0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ua;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWindowScaleState()I

    move-result v1

    if-nez v1, :cond_0

    new-array v0, v3, [I

    aput v6, v0, v6

    aput v6, v0, v4

    aput p0, v0, v5

    aput p1, v0, v2

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWindowScale()F

    move-result v1

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    new-array v1, v5, [I

    .line 4
    fill-array-data v1, :array_0

    .line 5
    invoke-static {}, Lsmartisanos/api/ViewRootImplSmt;->getInstance()Lsmartisanos/api/ViewRootImplSmt;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Lsmartisanos/api/ViewRootImplSmt;->getScreenSizeOffset(Landroid/view/ViewRootImpl;[I)V

    .line 6
    aget v0, v1, v6

    .line 7
    aget v1, v1, v4

    new-array v3, v3, [I

    aput v0, v3, v6

    aput v1, v3, v4

    aput p0, v3, v5

    aput p1, v3, v2

    return-object v3

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static fc()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.smartisanos.launcher"

    const-string v2, "com.smartisanos.launcher.theme.ThemeChooserActivity"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "launcher_show_search"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0x34208000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static g(Landroid/content/ContentResolver;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ua;->Cb()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    return v1
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "recorder_recording_state"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static getAnimationScale(I)F
    .locals 0

    # Global animation scale is an optional visual preference.  Accessing the
    # hidden IWindowManager binder makes the core Launcher class unverifiable
    # on recent Android releases, so retain the original default when it is
    # unavailable.
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static getDesktopMode(I)I
    .locals 0

    # SmtPCUtils is Smartisan-only.  Normal phones use the regular display.
    const/4 p0, 0x0

    return p0
.end method

.method public static getLastTouchPointForDrag(Landroid/graphics/Point;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ua;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2
    invoke-static {}, Lsmartisanos/api/ViewRootImplSmt;->getInstance()Lsmartisanos/api/ViewRootImplSmt;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lsmartisanos/api/ViewRootImplSmt;->getLastTouchPointForDrag(Landroid/view/ViewRootImpl;Landroid/graphics/Point;)V

    return-void
.end method

.method public static getPendingIntentForLockedPackage(Landroid/app/ActivityManager;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lsmartisanos/api/ActivityManagerSmt;->getInstance()Lsmartisanos/api/ActivityManagerSmt;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lsmartisanos/api/ActivityManagerSmt;->getPendingIntentForLockedPackage(Landroid/app/ActivityManager;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getSidebarModeState()I
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/util/SidebarUtils;->getSidebarModeState()I

    move-result v0

    return v0
.end method

.method public static getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->Oa()Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    return-object v0
.end method

.method public static get_FLAG_RECEIVER_SM_USER_AWARE()I
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/api/IntentSmt;->get_FLAG_RECEIVER_SM_USER_AWARE()I

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/ContentResolver;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ua;->Bb()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 2
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "screen_recorder_show_status"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static hasNavigationBar()Z
    .locals 1

    # The old WindowManagerGlobal/IWindowManager reflection is blocked by
    # hidden-API policy on current Android releases.  The existing Launcher
    # fallback is the no-navigation-bar layout; let public WindowInsets own
    # the actual system-bar handling at runtime.
    const/4 v0, 0x0

    return v0
.end method

.method public static hc()Z
    .locals 3

    const/4 v0, 0x0

    return v0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ua;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWindowScaleState()I

    move-result v0

    const-string v1, "android.view.ViewRootImpl$WinScaleState"

    const-string v2, "LEFT_AND_TOP"

    .line 3
    invoke-static {v1, v2}, Lcom/smartisanos/launcher/e/s;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 4
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eq v1, v2, :cond_1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static i(Landroid/content/ContentResolver;)Z
    .locals 2

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ua;->bc()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string v0, "original_launcher_wallpaper_blur_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->readBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static ic()Z
    .locals 3

    const/4 v0, 0x0

    return v0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ua;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWindowScaleState()I

    move-result v0

    const-string v1, "android.view.ViewRootImpl$WinScaleState"

    const-string v2, "RIGHT_AND_TOP"

    .line 3
    invoke-static {v1, v2}, Lcom/smartisanos/launcher/e/s;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 4
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eq v1, v2, :cond_1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static iconFloatUpNoticeSidebar(Lcom/android/internal/sidebar/ILauncher;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lsmartisanos/util/SidebarUtils;->iconFloatUpNoticeSidebar(Lcom/android/internal/sidebar/ILauncher;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
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

.method public static j(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lsmartisanos/api/PackageManagerSmt;->getInstance()Lsmartisanos/api/PackageManagerSmt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsmartisanos/api/PackageManagerSmt;->sessionUnlockAllPackages(Landroid/content/pm/PackageManager;)V

    return-void
.end method

.method public static jc()Z
    .locals 3

    const/4 v0, 0x0

    return v0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ua;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWindowScaleState()I

    move-result v0

    const-string v1, "android.view.ViewRootImpl$WinScaleState"

    const-string v2, "TOP"

    .line 3
    invoke-static {v1, v2}, Lcom/smartisanos/launcher/e/s;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 4
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eq v1, v2, :cond_1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static lockPackage(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lsmartisanos/api/PackageManagerSmt;->getInstance()Lsmartisanos/api/PackageManagerSmt;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1}, Lsmartisanos/api/PackageManagerSmt;->lockPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static n(Z)V
    .locals 0

    return-void
.end method

.method public static resetWindowOneHandedState(Landroid/view/WindowManager;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lsmartisanos/api/WindowManagerSmt;->getInstance()Lsmartisanos/api/WindowManagerSmt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsmartisanos/api/WindowManagerSmt;->resetWindowOneHandedState(Landroid/view/WindowManager;)V

    return-void
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static screenshot(II)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static sessionUnlockAllPackages()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    :try_start_session_unlock_all
    invoke-static {}, Lsmartisanos/api/PackageManagerSmt;->getInstance()Lsmartisanos/api/PackageManagerSmt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsmartisanos/api/PackageManagerSmt;->sessionUnlockAllPackages(Landroid/content/pm/PackageManager;)V
    :try_end_session_unlock_all
    .catch Ljava/lang/Throwable; {:try_start_session_unlock_all .. :try_end_session_unlock_all} :catch_session_unlock_all

    return-void

    :catch_session_unlock_all
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static sessionUnlockPackageLPw(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    :try_start_0
    invoke-static {}, Lsmartisanos/api/PackageManagerSmt;->getInstance()Lsmartisanos/api/PackageManagerSmt;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1}, Lsmartisanos/api/PackageManagerSmt;->sessionUnlockPackageLPw(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setAnimationScale(IF)V
    .locals 0

    # Setting the global animation scale was never required for Launcher
    # startup and uses a hidden binder API.  Keep this optional hook inert.
    return-void
.end method

.method public static setSystemUiDecoration(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;IIII)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/J;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-static/range {v0 .. v5}, Lsmartisanos/api/WindowManagerSmt;->setSystemUiDecoration(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;IIII)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    sget-boolean v2, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/launcher/ua;->log:Lcom/smartisanos/launcher/va;

    const-string v3, "isInstalled packageInfo = null"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_1
    :goto_0
    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static unlockPackage(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_unlock_package
    invoke-static {}, Lsmartisanos/api/PackageManagerSmt;->getInstance()Lsmartisanos/api/PackageManagerSmt;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lsmartisanos/api/PackageManagerSmt;->unlockPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    :try_end_unlock_package
    .catch Ljava/lang/Throwable; {:try_start_unlock_package .. :try_end_unlock_package} :catch_unlock_package

    return-void

    :catch_unlock_package
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static unlockPackage(Ljava/lang/String;I)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lsmartisanos/api/PackageManagerSmt;->getInstance()Lsmartisanos/api/PackageManagerSmt;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1}, Lsmartisanos/api/PackageManagerSmt;->unlockPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static vb()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lsmartisanos/app/wallpaper/TabletWallpaperHelper;->getInstance(Landroid/content/Context;)Lsmartisanos/app/wallpaper/TabletWallpaperHelper;

    move-result-object v0

    invoke-virtual {v0}, Lsmartisanos/app/wallpaper/TabletWallpaperHelper;->getWallpaper()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wb()Ljava/lang/String;
    .locals 1

    const-string v0, "revone_desktop_mode_switch"

    return-object v0
.end method

.method public static xb()Ljava/lang/String;
    .locals 2

    const-string v0, "smartisanos.api.SettingsSmt$Global"

    const-string v1, "DESKTOP_WALLPAPER_URI"

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static yb()Ljava/lang/String;
    .locals 1

    const-string v0, "global_pc_mode_settings"

    return-object v0
.end method

.method public static zb()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/api/IntentSmt;->get_EXTRA_SMARTISAN_ANIM_RESOURCE_ID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
