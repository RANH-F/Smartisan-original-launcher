.class public Lcom/smartisanos/launcher/widget/c;
.super Ljava/lang/Object;
.source "LoadingUI.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field public Xz:Z

.field private mDialog:Lsmartisanos/app/SmartisanProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/widget/c;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/widget/c;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/widget/c;->Xz:Z

    return-void
.end method


# virtual methods
.method public destroy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/c;->mDialog:Lsmartisanos/app/SmartisanProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsmartisanos/app/SmartisanProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/widget/c;->dismiss()Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dismiss()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/c;->mDialog:Lsmartisanos/app/SmartisanProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lsmartisanos/app/SmartisanProgressDialog;->dismiss()V

    invoke-static {}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->onOriginalThemeLoadingUiDismissed()V

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/widget/c;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "LoadingUI dismiss"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->vg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/widget/c;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "LoadingUI Dismiss"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/smartisanos/launcher/widget/c;->mDialog:Lsmartisanos/app/SmartisanProgressDialog;

    .line 8
    iput-boolean v1, p0, Lcom/smartisanos/launcher/widget/c;->Xz:Z

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public q(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/c;->mDialog:Lsmartisanos/app/SmartisanProgressDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lsmartisanos/app/SmartisanProgressDialog;

    invoke-direct {v0, p1}, Lsmartisanos/app/SmartisanProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/widget/c;->mDialog:Lsmartisanos/app/SmartisanProgressDialog;

    .line 3
    sget p1, Lcom/smartisanos/launcher/jb;->loading_progress:I

    invoke-virtual {v0, p1}, Lsmartisanos/app/SmartisanProgressDialog;->setIndeterminateDrawableResource(I)V

    .line 4
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lsmartisanos/app/SmartisanProgressDialog;->setCancelable(Z)V

    .line 5
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lsmartisanos/app/SmartisanProgressDialog;->setDarkTheme(Z)V

    .line 6
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lsmartisanos/app/SmartisanProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 7
    iput-boolean p1, p0, Lcom/smartisanos/launcher/widget/c;->Xz:Z

    :cond_0
    invoke-virtual {v0, p2}, Lsmartisanos/app/SmartisanProgressDialog;->setMessage(Ljava/lang/String;)V

    invoke-static {p1, v0, p2}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->onOriginalThemeLoadingUiPrepared(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/reload/LauncherColdReloadCoordinator;->prepareInitializationLoadingWindow(Landroid/app/Dialog;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/c;->mDialog:Lsmartisanos/app/SmartisanProgressDialog;

    if-eqz v0, :cond_no_dialog

    invoke-virtual {v0}, Lsmartisanos/app/SmartisanProgressDialog;->show()V

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->onOriginalThemeLoadingUiShown(Landroid/app/Dialog;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/widget/c;->Xz:Z

    .line 3
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/widget/c;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "LoadingUI show"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_no_dialog
    return-void
.end method
