.class public Lcom/smartisanos/launcher/a/oa;
.super Ljava/lang/Object;
.source "UninstallApp.java"


# static fields
.field private static volatile hk:Z

.field private static volatile ik:Z

.field public static jk:Landroid/app/AlertDialog;

.field public static kk:Z

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private fk:Lcom/smartisanos/launcher/view/a/g;

.field private gk:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/smartisanos/launcher/a/oa;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartisanos/launcher/a/oa;->hk:Z

    .line 3
    sput-boolean v0, Lcom/smartisanos/launcher/a/oa;->ik:Z

    const/4 v1, 0x0

    .line 4
    sput-object v1, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    .line 5
    sput-boolean v0, Lcom/smartisanos/launcher/a/oa;->kk:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/a/oa;->fk:Lcom/smartisanos/launcher/view/a/g;

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/a/oa;->gk:Ljava/util/List;

    return-void
.end method

.method private Kc(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAction begin !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/a/oa;->hk:Z

    if-eqz v0, :cond_1

    .line 3
    sget-object p0, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "cancelAction return by uninstallAppRunning is true"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "NegativeButton click"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/smartisanos/launcher/a/oa;->hk:Z

    .line 6
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/a/oa;->Y(I)Lcom/smartisanos/smengine/n;

    move-result-object p0

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/a/oa;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/a/oa;->gk:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/a/oa;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/a/oa;->Kc(I)V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/a/oa;->hk:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/a/oa;->ik:Z

    return v0
.end method

.method public static c(Landroid/os/Message;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "handleInternalMessage begin !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    sget-object p0, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "handleInternalMessage pkg is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v2, "]"

    if-eqz v1, :cond_2

    sget-object v1, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleInternalMessage ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 5
    :cond_2
    iget p0, p0, Landroid/os/Message;->arg1:I

    const/4 v1, -0x2

    const/4 v3, 0x0

    if-eq p0, v1, :cond_9

    const/4 v1, -0x1

    const/4 v4, 0x1

    if-eq p0, v1, :cond_4

    if-ne p0, v4, :cond_3

    .line 6
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_b

    sget-object p0, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApplicationManager.DELETE_SUCCEEDED ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown message type when handle uninstall message ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 10
    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_6

    goto :goto_0

    .line 13
    :cond_6
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_5

    move v3, v4

    goto :goto_1

    .line 15
    :catch_0
    sget-object p0, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uninstall app ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] failed, app is not exist, so just remove app info from launcher !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_7
    :goto_1
    const-string p0, "uninstall failed DELETE_FAILED_INTERNAL_ERROR ["

    if-eqz v3, :cond_8

    .line 16
    sget-object v1, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "], add app to launcher !"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object p0

    .line 18
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/Aa;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_8
    sget-object v1, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "], but can\'t query it from pms !"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 20
    invoke-static {v0}, Lcom/smartisanos/launcher/install/SmartisanInstallManager;->onUncertainLegacyUninstall(Ljava/lang/String;)V

    .line 21
    :goto_2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_b

    sget-object p0, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uninstall app error, handleInternalMessage ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_3

    .line 22
    :cond_9
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_a

    sget-object p0, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE_FAILED_DEVICE_POLICY_MANAGER !!! ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 23
    :cond_a
    sget p0, Lcom/smartisanos/launcher/ob;->aj:I

    invoke-static {p0, v3}, Lcom/smartisanos/launcher/Bb;->showToast(II)V

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object p0

    .line 25
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/Aa;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public static fd()V
    .locals 2

    # J.onPause also calls this entry. Keep trash visible under system UI.
    invoke-static {}, Lcom/smartisanos/launcher/compat/UninstallCompat;->isSystemUninstallPending()Z

    move-result v0

    if-eqz v0, :queue_cancel_scene

    return-void

    :queue_cancel_scene
    # Public uninstall UI has no private dialog. Always queue scene cleanup.
    const/4 v0, 0x1

    sput-boolean v0, Lcom/smartisanos/launcher/a/oa;->kk:Z

    new-instance v0, Lcom/smartisanos/launcher/a/T;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/a/T;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method public static gd()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/a/oa;->hk:Z

    return v0
.end method

.method public static cancelSystemUninstall()V
    .locals 3

    # Reuse the original foreground cancellation event and its completion callback.
    const/4 v0, 0x0
    sput-boolean v0, Lcom/smartisanos/launcher/a/oa;->kk:Z

    const/4 v0, 0x1
    sput-boolean v0, Lcom/smartisanos/launcher/a/oa;->hk:Z

    new-instance v0, Lcom/smartisanos/launcher/a/oa;
    invoke-direct {v0}, Lcom/smartisanos/launcher/a/oa;-><init>()V
    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/a/oa;->Y(I)Lcom/smartisanos/smengine/n;
    move-result-object v0
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->q(F)V
    return-void
.end method

.method public static hd()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-nez v0, :scene_root_ready

    const-string v0, "root"

    invoke-static {v0}, Lcom/smartisanos/launcher/model/LauncherModelRepository;->noteSceneNotReady(Ljava/lang/String;)V

    return-void

    :scene_root_ready

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    if-nez v0, :scene_view_ready

    const-string v0, "view"

    invoke-static {v0}, Lcom/smartisanos/launcher/model/LauncherModelRepository;->noteSceneNotReady(Ljava/lang/String;)V

    return-void

    :scene_view_ready

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v0

    if-nez v0, :scene_controller_ready

    const-string v0, "controller"

    invoke-static {v0}, Lcom/smartisanos/launcher/model/LauncherModelRepository;->noteSceneNotReady(Ljava/lang/String;)V

    return-void

    :scene_controller_ready

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Sc;->jq()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/X;->ri()Lcom/smartisanos/launcher/animations/G;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/animations/G;->Qd()V

    .line 5
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    const-string v3, "back to parent view begin !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->Ue()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x3e99999a    # 0.3f

    if-nez v2, :cond_4

    .line 7
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->_k()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 8
    instance-of v6, v2, Lcom/smartisanos/launcher/view/b/M;

    if-eqz v6, :cond_2

    .line 9
    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 10
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v6

    .line 11
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result v7

    .line 12
    invoke-virtual {v1, v6, v7}, Lcom/smartisanos/launcher/view/a/g;->u(II)V

    .line 13
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/b/M;F)Lcom/smartisanos/smengine/g;

    move-result-object v6

    .line 14
    invoke-virtual {v6}, Lcom/smartisanos/smengine/g;->start()V

    .line 15
    invoke-virtual {v6}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 16
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    goto/16 :goto_1

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ERROR,target is not page,dock cell back to unknown Parent!!!!!!!!!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ERROR,cell back to target is not NULL!!!!!!!!!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v6, Lcom/smartisanos/smengine/g;

    invoke-direct {v6}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 21
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/smartisanos/launcher/view/V;->v(Lcom/smartisanos/launcher/view/a/g;)Z

    .line 23
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/V;->gp()V

    .line 24
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v7

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v8

    invoke-virtual {v7, v4, v8}, Lcom/smartisanos/launcher/view/V;->g(ZI)[Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    .line 25
    array-length v8, v7

    if-lez v8, :cond_5

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->zl()I

    move-result v8

    array-length v9, v7

    if-ge v8, v9, :cond_5

    .line 26
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->zl()I

    move-result v8

    aget-object v7, v7, v8

    goto :goto_0

    :cond_5
    move-object v7, v3

    .line 27
    :goto_0
    iget v8, v7, Lcom/smartisanos/smengine/a/j;->x:F

    iget v9, v7, Lcom/smartisanos/smengine/a/j;->y:F

    iget v7, v7, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v1, v8, v9, v7}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/V;->Lo()Lcom/smartisanos/smengine/i;

    move-result-object v7

    .line 29
    invoke-virtual {v7}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v8

    iget v8, v8, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {v7}, Lcom/smartisanos/smengine/i;->Qj()Lcom/smartisanos/smengine/a/i;

    move-result-object v9

    iget v9, v9, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v7}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v10

    iget v10, v10, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {v7}, Lcom/smartisanos/smengine/i;->Pj()Lcom/smartisanos/smengine/a/i;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v1, v8, v9, v10, v7}, Lcom/smartisanos/smengine/SceneNode;->setLocalBoundingVolume(FFFF)V

    .line 30
    sget-boolean v7, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v7

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/V;->getSinglePageMode()I

    move-result v8

    if-ne v7, v8, :cond_6

    const/4 v7, 0x1

    .line 31
    invoke-virtual {v1, v7}, Lcom/smartisanos/launcher/view/a/g;->Na(Z)V

    .line 32
    :cond_6
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 33
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v7

    sget-object v8, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->aZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    .line 34
    invoke-virtual {v7, v8, v5, v2}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 35
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v7

    sget-object v8, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->hZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    .line 36
    invoke-virtual {v7, v8, v5, v2}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 37
    invoke-virtual {v6}, Lcom/smartisanos/smengine/g;->start()V

    .line 38
    invoke-virtual {v6}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 39
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    const-string v6, "sendWaitingUninstallAppBackNoAnim timeLine.forceFinish begin !"

    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 40
    :cond_7
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    new-instance v6, Lcom/smartisanos/smengine/g;

    invoke-direct {v6}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 42
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v7

    sget-object v8, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->aZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    .line 44
    invoke-virtual {v7, v8, v5, v2}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 45
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v7

    sget-object v8, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->hZ:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    .line 46
    invoke-virtual {v7, v8, v5, v2}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 47
    sget-object v7, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->NZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v0, v7, v5, v2}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 48
    sget-object v7, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->LZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v0, v7, v5, v2}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 49
    new-instance v2, Lcom/smartisanos/launcher/a/S;

    invoke-direct {v2, v1}, Lcom/smartisanos/launcher/a/S;-><init>(Lcom/smartisanos/launcher/view/a/g;)V

    invoke-virtual {v6, v2}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 50
    invoke-virtual {v6}, Lcom/smartisanos/smengine/g;->start()V

    .line 51
    invoke-virtual {v6}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 52
    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Sc;->C(Lcom/smartisanos/launcher/view/a/g;)V

    .line 53
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/launcher/view/b/fa;->J(F)Lcom/smartisanos/smengine/g;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 54
    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    .line 55
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Ed()V

    .line 56
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 57
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 58
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    .line 59
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v4}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    return-void
.end method

.method static synthetic w(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/smartisanos/launcher/a/oa;->hk:Z

    return p0
.end method

.method static synthetic x(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/smartisanos/launcher/a/oa;->ik:Z

    return p0
.end method


# virtual methods
.method public Y(I)Lcom/smartisanos/smengine/n;
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1
    new-instance p1, Lcom/smartisanos/launcher/a/W;

    invoke-direct {p1, p0, v0}, Lcom/smartisanos/launcher/a/W;-><init>(Lcom/smartisanos/launcher/a/oa;I)V

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lcom/smartisanos/launcher/a/Z;

    invoke-direct {p1, p0, v0}, Lcom/smartisanos/launcher/a/Z;-><init>(Lcom/smartisanos/launcher/a/oa;I)V

    return-object p1
.end method

.method public a(Lcom/smartisanos/launcher/view/a/g;F)V
    .locals 4

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/launcher/a/oa;->fk:Lcom/smartisanos/launcher/view/a/g;

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/b/fa;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->z(Lcom/smartisanos/launcher/view/a/g;)V

    .line 7
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/X;->ri()Lcom/smartisanos/launcher/animations/G;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->xl()Lcom/smartisanos/launcher/view/a/X;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/X;->ri()Lcom/smartisanos/launcher/animations/G;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/animations/G;->C(Z)V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v2, Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;->WY:Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;

    invoke-virtual {v0, v2, p2, v1}, Lcom/smartisanos/launcher/animations/G;->a(Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;FLjava/util/ArrayList;)V

    .line 12
    new-instance p2, Lcom/smartisanos/launcher/a/na;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/smartisanos/launcher/a/na;-><init>(Lcom/smartisanos/launcher/a/oa;Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 13
    invoke-static {p2}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    .line 14
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "lock touch & hard key by uninstallAppOrShortcut !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 15
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    return-void

    .line 17
    :cond_2
    :goto_0
    sget-object p0, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "uninstallAppOrShortcut return by illegal cell !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Lcom/smartisanos/launcher/view/ec;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    if-eqz v1, :cond_7

    .line 18
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_4

    .line 19
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/ua;->a(Landroid/content/Context;I)V

    .line 20
    iput-object v1, v0, Lcom/smartisanos/launcher/a/oa;->gk:Ljava/util/List;

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v4

    .line 22
    sget-object v5, Lcom/smartisanos/launcher/view/TrashView$STATUS;->Qaa:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/view/TrashView$STATUS;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 23
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Sc;->getAnimation()Lcom/smartisanos/launcher/animations/lb;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/animations/lb;->rn:Lcom/smartisanos/smengine/g;

    if-eqz v5, :cond_1

    .line 24
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Sc;->getAnimation()Lcom/smartisanos/launcher/animations/lb;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/animations/lb;->rn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/g;->Ij()V

    goto :goto_0

    .line 25
    :cond_1
    sget-object v5, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->MZ:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v4, v5, v3}, Lcom/smartisanos/launcher/view/Sc;->a(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;F)V

    .line 26
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Sc;->getAnimation()Lcom/smartisanos/launcher/animations/lb;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/animations/lb;->rn:Lcom/smartisanos/smengine/g;

    if-eqz v5, :cond_2

    .line 27
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Sc;->getAnimation()Lcom/smartisanos/launcher/animations/lb;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/animations/lb;->rn:Lcom/smartisanos/smengine/g;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 28
    :cond_2
    :goto_0
    new-instance v4, Lcom/smartisanos/smengine/g;

    invoke-direct {v4}, Lcom/smartisanos/smengine/g;-><init>()V

    .line 29
    new-instance v5, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v5}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 30
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/V;->Xo()Lcom/smartisanos/launcher/view/Sc;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/smartisanos/smengine/SceneNode;->getWorldTranslate(Lcom/smartisanos/smengine/a/j;)V

    .line 31
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v6

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->trash_height:F

    .line 32
    new-instance v15, Lcom/smartisanos/smengine/oa;

    move-object/from16 v7, p3

    invoke-direct {v15, v7}, Lcom/smartisanos/smengine/oa;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 33
    invoke-virtual/range {p3 .. p3}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/a/j;

    move-result-object v7

    .line 34
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/V;->Dl()I

    move-result v8

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v8

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    .line 35
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/a/h;

    move-result-object v9

    .line 36
    invoke-virtual {v9}, Lcom/smartisanos/smengine/a/h;->inverse()Lcom/smartisanos/smengine/a/h;

    move-result-object v9

    .line 37
    new-instance v10, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v10}, Lcom/smartisanos/smengine/a/j;-><init>()V

    .line 38
    invoke-virtual {v9, v5, v10}, Lcom/smartisanos/smengine/a/h;->f(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    move-result-object v5

    .line 39
    new-instance v9, Lcom/smartisanos/smengine/a/j;

    iget v10, v5, Lcom/smartisanos/smengine/a/j;->x:F

    iget v11, v5, Lcom/smartisanos/smengine/a/j;->y:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v6, v12

    add-float/2addr v11, v6

    div-float/2addr v8, v12

    add-float/2addr v11, v8

    iget v5, v5, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-direct {v9, v10, v11, v5}, Lcom/smartisanos/smengine/a/j;-><init>(FFF)V

    .line 40
    invoke-virtual {v15, v3}, Lcom/smartisanos/smengine/c;->p(F)V

    const/16 v3, 0xe

    .line 41
    invoke-virtual {v15, v3}, Lcom/smartisanos/smengine/c;->Ja(I)V

    const/4 v8, 0x0

    .line 42
    iget v3, v7, Lcom/smartisanos/smengine/a/j;->x:F

    iget v10, v7, Lcom/smartisanos/smengine/a/j;->y:F

    iget v11, v7, Lcom/smartisanos/smengine/a/j;->z:F

    iget v12, v9, Lcom/smartisanos/smengine/a/j;->x:F

    iget v13, v9, Lcom/smartisanos/smengine/a/j;->y:F

    iget v14, v9, Lcom/smartisanos/smengine/a/j;->z:F

    move-object v7, v15

    move v9, v3

    invoke-virtual/range {v7 .. v14}, Lcom/smartisanos/smengine/oa;->a(IFFFFFF)V

    const/4 v3, 0x0

    .line 43
    invoke-virtual {v4, v3, v15}, Lcom/smartisanos/smengine/g;->a(FLcom/smartisanos/smengine/c;)V

    .line 44
    invoke-virtual {v4}, Lcom/smartisanos/smengine/g;->start()V

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_3

    .line 47
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    .line 48
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    move v1, v5

    goto :goto_2

    .line 49
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 50
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 51
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-object v4, v2, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 52
    :cond_5
    new-instance v2, Lcom/smartisanos/launcher/a/na;

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/smartisanos/launcher/a/na;-><init>(Lcom/smartisanos/launcher/a/oa;Ljava/util/List;ILjava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/smartisanos/launcher/view/Ha;->getInstance()Lcom/smartisanos/launcher/view/Ha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Ha;->qp()Lcom/smartisanos/launcher/view/ec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/ec;->Mp()Ljava/util/ArrayList;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/g;

    .line 56
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 57
    :cond_6
    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/a/na;->d(Ljava/util/List;)V

    .line 58
    invoke-static {v2}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    .line 59
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 60
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    :cond_7
    :goto_4
    return-void
.end method

.method public c(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/launcher/a/oa;->fk:Lcom/smartisanos/launcher/view/a/g;

    .line 28
    new-instance v0, Lcom/smartisanos/launcher/a/na;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/smartisanos/launcher/a/na;-><init>(Lcom/smartisanos/launcher/a/oa;Lcom/smartisanos/launcher/data/ItemInfo;Z)V

    .line 29
    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void

    .line 30
    :cond_1
    :goto_0
    sget-object p0, Lcom/smartisanos/launcher/a/oa;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "uninstallAppOrShortcut return by illegal cell !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method
