.class public Lcom/smartisanos/launcher/ConfirmPasswordActivity;
.super Landroid/app/Activity;
.source "ConfirmPasswordActivity.java"


# static fields
.field private static final Qa:Landroid/content/Intent;

.field private static Ra:Z

.field private static log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Da:[I

.field private Ea:Landroid/app/PendingIntent;

.field private Fa:Landroid/app/ActivityManager;

.field private Ga:Landroid/app/admin/DevicePolicyManager;

.field private Ha:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

.field private Ia:Ljava/lang/String;

.field private Ja:Z

.field private Ka:Z

.field private La:Lcom/smartisanos/securitycenter/b/g;

.field private volatile Ma:Z

.field private Na:Z

.field private Oa:Z

.field private Pa:Lcom/smartisanos/launcher/ConfirmPasswordActivity$HomeWatcherReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Qa:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ra:Z

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Qa:Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Qa:Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ia:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ja:Z

    .line 5
    iput-boolean v1, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ka:Z

    .line 6
    new-instance v2, Lcom/smartisanos/launcher/la;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/la;-><init>(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)V

    iput-object v2, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->La:Lcom/smartisanos/securitycenter/b/g;

    .line 7
    iput-boolean v1, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ma:Z

    .line 8
    iput-boolean v1, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Na:Z

    .line 9
    iput-boolean v1, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Oa:Z

    .line 10
    iput-object v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Pa:Lcom/smartisanos/launcher/ConfirmPasswordActivity$HomeWatcherReceiver;

    return-void
.end method

.method private Yb(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ha:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->show()V

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ma:Z

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ha:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    iget-object v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->La:Lcom/smartisanos/securitycenter/b/g;

    invoke-virtual {p1, p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->a(Landroid/app/Activity;Lcom/smartisanos/securitycenter/b/g;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/ConfirmPasswordActivity;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ea:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->vu()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/ConfirmPasswordActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ma:Z

    return p1
.end method

.method static synthetic b(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->tu()V

    return-void
.end method

.method static synthetic c(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ja:Z

    return p0
.end method

.method static synthetic d(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ma:Z

    return p0
.end method

.method static synthetic e(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ea:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic f(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)Landroid/app/ActivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Fa:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static synthetic g(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->su()V

    return-void
.end method

.method private qa(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/ConfirmPasswordActivity$HomeWatcherReceiver;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity$HomeWatcherReceiver;-><init>(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Pa:Lcom/smartisanos/launcher/ConfirmPasswordActivity$HomeWatcherReceiver;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Pa:Lcom/smartisanos/launcher/ConfirmPasswordActivity$HomeWatcherReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private ra(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Pa:Lcom/smartisanos/launcher/ConfirmPasswordActivity$HomeWatcherReceiver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Pa:Lcom/smartisanos/launcher/ConfirmPasswordActivity$HomeWatcherReceiver;

    return-void
.end method

.method private su()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ha:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ma:Z

    return-void
.end method

.method private tu()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->su()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.content.pm.extra.package.name.for.locked.package"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity"

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v1, v0}, Lcom/smartisanos/launcher/ua;->getPendingIntentForLockedPackage(Landroid/app/ActivityManager;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Qa:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->finish()V

    return-void
.end method

.method private uu()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ua;->zb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Da:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Da:[I

    :goto_0
    return-void
.end method

.method private vu()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ma:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "passwordIsRight ! but is canceled"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "passwordIsRight !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/ma;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/ma;-><init>(Lcom/smartisanos/launcher/ConfirmPasswordActivity;I)V

    const v1, 0x3c23d70a    # 0.01f

    .line 6
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "ooops!!! ActivityContext is null."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    :goto_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/Qa;->Cc()V

    .line 10
    :cond_2
    invoke-static {p0}, Lcom/smartisanos/launcher/ua;->j(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Lg()V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/smartisanos/launcher/na;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/na;-><init>(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ia:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "smartisanos.notice.sidebar.unlock_success"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ia:Ljava/lang/String;

    const-string v2, "SIDEBAR_VERIFY_APP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-static {}, Lsmartisanos/api/IntentSmt;->get_FLAG_RECEIVER_SM_USER_AWARE()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.smartisanos.sidebar"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method private wu()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.smartisanos.launcher.verify_password_powersave"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    sput-boolean v1, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ra:Z

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->uu()V

    const-string v3, "SIDEBAR_VERIFY_APP"

    .line 5
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ia:Ljava/lang/String;

    :cond_1
    const-string v3, "FROM_LAUNCHER"

    .line 7
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ja:Z

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/sa;->pb()Z

    move-result v3

    const-string v4, "disable_finger_print"

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ka:Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ka:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ia:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Da:[I

    .line 13
    iput-boolean v2, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ja:Z

    .line 14
    iput-boolean v2, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ka:Z

    .line 15
    sput-boolean v2, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ra:Z

    .line 16
    :goto_0
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Yb(Z)V

    return-void
.end method

.method static synthetic x()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ra:Z

    return v0
.end method

.method static synthetic y()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 3

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->interceptLauncherPasswordActivityFinish(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :password_exit_intercepted

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Da:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 3
    aget v1, v0, v1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 4
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void

    :password_exit_intercepted
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ha:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->applyLauncherNavigationBarSetting(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->showLauncherPasswordActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ha:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->destroy()V

    .line 4
    iput-object v1, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Ha:Lcom/smartisanos/securitycenter/widget/SecurityControlView;

    .line 5
    :cond_0
    invoke-direct {p0, p0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->ra(Landroid/content/Context;)V

    .line 6
    iput-object v1, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->La:Lcom/smartisanos/securitycenter/b/g;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->wu()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Na:Z

    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Na:Z

    .line 3
    iget-boolean v0, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Oa:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Yb(Z)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->su()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Oa:Z

    .line 3
    iget-boolean p1, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Oa:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Na:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->Yb(Z)V

    :cond_0
    return-void
.end method
