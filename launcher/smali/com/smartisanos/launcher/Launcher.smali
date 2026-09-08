.class public Lcom/smartisanos/launcher/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"


# static fields
.field private static log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/Launcher;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/Launcher;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->onFinish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/launcher/J;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-static {}, Lcom/smartisanos/launcher/quickdesktop/QuickDesktopController;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->onConfigurationChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "LAUNCHER_ACTIVITY_CREATE_BEGIN"

    invoke-static {v0}, Lcom/smartisanos/launcher/diagnostics/StartupCompatibilityLogger;->mark(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/smartisanos/launcher/diagnostics/LauncherStartupDiagnostics;->begin(Landroid/app/Activity;)V

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/Launcher;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher Activity onCreate ! ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/smartisanos/launcher/reload/LauncherColdReloadCoordinator;->captureLauncherReloadIntent(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->prepareLauncherDeferredTasks(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->applyNavigationBarIfChanged(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->showPendingLauncherReloadLoading(Landroid/app/Activity;)V

    const-string v0, "LAUNCH_ORIGINAL_INIT_BEGIN"

    invoke-static {v0}, Lcom/smartisanos/launcher/diagnostics/LauncherStartupDiagnostics;->mark(Ljava/lang/String;)V

    const-string v0, "MODEL_INIT_BEGIN"

    invoke-static {v0}, Lcom/smartisanos/launcher/diagnostics/StartupCompatibilityLogger;->mark(Ljava/lang/String;)V

    const-string v0, "DATABASE_INIT_BEGIN"

    invoke-static {v0}, Lcom/smartisanos/launcher/diagnostics/StartupCompatibilityLogger;->mark(Ljava/lang/String;)V

    const-string v0, "MAIN_VIEW_INIT_BEGIN"

    invoke-static {v0}, Lcom/smartisanos/launcher/diagnostics/StartupCompatibilityLogger;->mark(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/smartisanos/launcher/J;->b(Landroid/app/Activity;)V

    const-string v0, "LAUNCH_ORIGINAL_INIT_END"

    invoke-static {v0}, Lcom/smartisanos/launcher/diagnostics/LauncherStartupDiagnostics;->mark(Ljava/lang/String;)V

    const-string v0, "LAUNCHER_STARTUP_COMPLETE"

    invoke-static {v0}, Lcom/smartisanos/launcher/diagnostics/StartupCompatibilityLogger;->mark(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->scheduleLauncherPostFirstFrameTasks(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/Launcher;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/J;->c(Landroid/app/Activity;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/reload/LauncherColdReloadCoordinator;->captureLauncherReloadIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const-string v1, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/quickdesktop/QuickDesktopController;->onHomeIntent()V

    invoke-static {p1}, Lcom/smartisanos/launcher/gesture/LauncherHomeCompat;->logHomeIntentReceived(Landroid/content/Intent;)V

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/J;->a(Landroid/content/Intent;)V

    return-void

    :cond_2

    .line 4
    sget-object p0, Lcom/smartisanos/launcher/Launcher;->log:Lcom/smartisanos/launcher/va;

    const-string p1, " onNewIntent is not a HOME intent"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    # Queue the original cancellation on the GL thread before the public
    # package installer covers this activity.
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->fd()V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->onLauncherPaused(Landroid/app/Activity;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->onResume()V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->onLauncherResumed(Landroid/app/Activity;)V

    invoke-static {}, Lcom/smartisanos/launcher/quickdesktop/QuickDesktopController;->onLauncherResumed()V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->scheduleLauncherPostFirstFrameTasks(Landroid/app/Activity;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-static {p0, p1, p3}, Lcom/smartisanos/launcher/theme/WeatherBridge;->onRequestPermissionsResult(Landroid/app/Activity;I[I)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->onSearchRequested()Z

    move-result p0

    return p0
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->onLauncherStopped(Landroid/app/Activity;)V

    invoke-static {}, Lcom/smartisanos/launcher/quickdesktop/QuickDesktopController;->onLauncherStopped()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/theme/LauncherBelowKeyguardCompat;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->applyNavigationBarIfChanged(Landroid/app/Activity;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/J;->onWindowFocusChanged(Z)V

    return-void
.end method
