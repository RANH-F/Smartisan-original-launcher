.class public Lcom/smartisanos/launcher/e/e;
.super Ljava/lang/Object;
.source "CallStubUtils.java"


# static fields
.field public static final MAGIC_FLOW_URI:Landroid/net/Uri;

.field private static final log:Lcom/smartisanos/launcher/va;

.field public static final tu:Landroid/net/Uri;

.field public static volatile uu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/e/e;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/e/e;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "content://com.smartisanos.magicflow.provider.extra"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/e/e;->MAGIC_FLOW_URI:Landroid/net/Uri;

    const-string v0, "content://com.smartisanos.quicksearch.provider.extra"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/e/e;->tu:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/smartisanos/launcher/e/e;->uu:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Q(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->FLING_DOWN_FOR_SEARCH:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/e/e;->uu:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/smartisanos/launcher/e/e;->uu:Z

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/e/c;

    invoke-direct {v0}, Lcom/smartisanos/launcher/e/c;-><init>()V

    const-wide/16 v1, 0x3c

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/Sa;->postDelayed(Ljava/lang/Runnable;J)V

    .line 5
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smartisanos/launcher/e/e;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "requestShowQuickSearch !!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 8
    :cond_4
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->openLauncherSearch(Landroid/content/Context;)V

    return-void
.end method

.method public static ng()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sLeftScreenEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/smartisanos/launcher/gesture/QuickDesktopGestureDiagnostics;->onRequestShow(Z)V

    invoke-static {}, Lcom/smartisanos/launcher/quickdesktop/QuickDesktopController;->requestShow()V

    return-void
.end method
