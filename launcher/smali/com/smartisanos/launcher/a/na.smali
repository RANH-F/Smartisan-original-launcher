.class public Lcom/smartisanos/launcher/a/na;
.super Ljava/lang/Object;
.source "UninstallApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private Yj:Ljava/util/List;

.field private Zj:Z

.field private _j:Lcom/smartisanos/launcher/data/ItemInfo;

.field private ak:I

.field private bk:Ljava/lang/String;

.field private ck:I

.field private dk:Ljava/util/List;

.field private ek:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/a/oa;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/a/oa;Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/na;->this$0:Lcom/smartisanos/launcher/a/oa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/a/na;->Yj:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/smartisanos/launcher/a/na;->bk:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/a/na;->Zj:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/smartisanos/launcher/a/na;->ck:I

    .line 7
    iput-object p1, p0, Lcom/smartisanos/launcher/a/na;->dk:Ljava/util/List;

    .line 8
    iput-boolean v0, p0, Lcom/smartisanos/launcher/a/na;->ek:Z

    .line 9
    iput-object p2, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/smartisanos/launcher/a/na;->ck:I

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/a/oa;Lcom/smartisanos/launcher/data/ItemInfo;Z)V
    .locals 2

    .line 11
    iput-object p1, p0, Lcom/smartisanos/launcher/a/na;->this$0:Lcom/smartisanos/launcher/a/oa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 13
    iput-object p1, p0, Lcom/smartisanos/launcher/a/na;->Yj:Ljava/util/List;

    .line 14
    iput-object p1, p0, Lcom/smartisanos/launcher/a/na;->bk:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/smartisanos/launcher/a/na;->Zj:Z

    const/4 v1, -0x1

    .line 16
    iput v1, p0, Lcom/smartisanos/launcher/a/na;->ck:I

    .line 17
    iput-object p1, p0, Lcom/smartisanos/launcher/a/na;->dk:Ljava/util/List;

    .line 18
    iput-boolean v0, p0, Lcom/smartisanos/launcher/a/na;->ek:Z

    .line 19
    iput-object p2, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    const/4 p1, 0x1

    .line 20
    iput p1, p0, Lcom/smartisanos/launcher/a/na;->ck:I

    .line 21
    iput-boolean p3, p0, Lcom/smartisanos/launcher/a/na;->Zj:Z

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/a/oa;Ljava/util/List;ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/a/na;-><init>(Lcom/smartisanos/launcher/a/oa;Ljava/util/List;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/a/oa;Ljava/util/List;ILjava/lang/String;Z)V
    .locals 1

    .line 23
    iput-object p1, p0, Lcom/smartisanos/launcher/a/na;->this$0:Lcom/smartisanos/launcher/a/oa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 25
    iput-object p1, p0, Lcom/smartisanos/launcher/a/na;->Yj:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/smartisanos/launcher/a/na;->bk:Ljava/lang/String;

    const/4 p5, 0x0

    .line 27
    iput-boolean p5, p0, Lcom/smartisanos/launcher/a/na;->Zj:Z

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/smartisanos/launcher/a/na;->ck:I

    .line 29
    iput-object p1, p0, Lcom/smartisanos/launcher/a/na;->dk:Ljava/util/List;

    .line 30
    iput-boolean p5, p0, Lcom/smartisanos/launcher/a/na;->ek:Z

    .line 31
    iput-object p2, p0, Lcom/smartisanos/launcher/a/na;->Yj:Ljava/util/List;

    const/4 p1, 0x2

    .line 32
    iput p1, p0, Lcom/smartisanos/launcher/a/na;->ck:I

    .line 33
    iput p3, p0, Lcom/smartisanos/launcher/a/na;->ak:I

    .line 34
    iput-object p4, p0, Lcom/smartisanos/launcher/a/na;->bk:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/app/AlertDialog$Builder;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 6
    sget v0, Lcom/smartisanos/launcher/mb;->dialog_warning_layout:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 8
    sget p1, Lcom/smartisanos/launcher/kb;->tv_waring_message:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 9
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/a/na;Landroid/app/AlertDialog$Builder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/a/na;->a(Landroid/app/AlertDialog$Builder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/a/na;Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/a/na;->p(Lcom/smartisanos/launcher/data/ItemInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/a/na;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/smartisanos/launcher/a/na;->ek:Z

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/a/na;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/launcher/a/na;->ek:Z

    return p1
.end method

.method static synthetic b(Lcom/smartisanos/launcher/a/na;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/a/na;->ck:I

    return p0
.end method

.method static synthetic c(Lcom/smartisanos/launcher/a/na;)Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    return-object p0
.end method

.method static synthetic d(Lcom/smartisanos/launcher/a/na;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/a/na;->Zj:Z

    return p0
.end method

.method private p(Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "removeDownloadAppWithDelay return by context not ready"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 3
    iget-wide v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->downloadId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    if-nez v0, :cond_2

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "removeDownloadAppWithDelay return by dm is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    new-instance v1, Lcom/smartisanos/launcher/a/ea;

    invoke-direct {v1, p0, v0, p1}, Lcom/smartisanos/launcher/a/ea;-><init>(Lcom/smartisanos/launcher/a/na;Landroid/app/DownloadManager;Lcom/smartisanos/launcher/data/ItemInfo;)V

    const-wide/16 p0, 0x12c

    invoke-static {v1, p0, p1}, Lcom/smartisanos/launcher/Sa;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 8
    :cond_3
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "removeDownloadAppWithDelay return by illegal iteminfo"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/util/List;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/a/na;->dk:Ljava/util/List;

    return-void
.end method

.method public run()V
    .locals 14

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/a/oa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "UninstallApp run !!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    # On ordinary Android the public package installer already provides the
    # mandatory confirmation. Skip the original Smartisan confirmation for a
    # single app so users do not have to approve the same uninstall twice.
    iget v0, p0, Lcom/smartisanos/launcher/a/na;->ck:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_system_uninstall_continue

    iget-object v0, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v0, :cond_system_uninstall_continue

    # QuickLaunchItem is a desktop shortcut, not an uninstallable package.
    # Preserve the original confirmation and EVENT_UNINSTALL_SHORTCUT path.
    iget-byte v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-nez v1, :cond_system_uninstall_continue

    iget-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_system_uninstall_continue

    invoke-static {v0}, Lcom/smartisanos/launcher/compat/UninstallCompat;->requestUninstallItem(Ljava/lang/Object;)V

    return-void

    :cond_system_uninstall_continue

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->MAIN:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x103012b

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    iget v1, p0, Lcom/smartisanos/launcher/a/na;->ck:I

    const-string v2, "com.intsig.camscanner"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_7

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v1, :cond_6

    iget-wide v6, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    iget-object v6, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 9
    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    sget v1, Lcom/smartisanos/launcher/ob;->uninstall_single_com_intsig_camscanner:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    if-nez v2, :cond_2

    iget-byte v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-nez v1, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->hasEnabledProfilePackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    sget v1, Lcom/smartisanos/launcher/ob;->uninstall_app_dialog_text_main_app:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v6, v2, v4

    aput-object v6, v2, v5

    .line 13
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    iget v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    const/16 v7, 0xa

    if-ne v2, v7, :cond_3

    iget-byte v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-nez v1, :cond_3

    .line 15
    sget v1, Lcom/smartisanos/launcher/ob;->uninstall_app_dialog_text_doppelganger_app:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v6, v2, v4

    aput-object v6, v2, v5

    .line 16
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 17
    :cond_3
    sget v1, Lcom/smartisanos/launcher/ob;->uninstall_app_dialog_text:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v6, v2, v4

    .line 18
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 19
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 20
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    iget-object v6, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast v6, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/FolderInfo;->gf()Z

    move-result v6

    .line 22
    iget-object v7, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast v7, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/FolderInfo;->if()Z

    move-result v7

    .line 23
    sget v8, Lcom/smartisanos/launcher/ob;->line_feed:I

    invoke-static {v8}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    sget v8, Lcom/smartisanos/launcher/ob;->line_feed:I

    invoke-static {v8}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    sget v8, Lcom/smartisanos/launcher/ob;->uninstall_folder_description:I

    invoke-static {v8}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v6, :cond_4

    .line 26
    sget v6, Lcom/smartisanos/launcher/ob;->line_feed:I

    invoke-static {v6}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    sget v6, Lcom/smartisanos/launcher/ob;->line_feed:I

    invoke-static {v6}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    sget v6, Lcom/smartisanos/launcher/ob;->uninstall_double_app_description:I

    invoke-static {v6}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    if-eqz v7, :cond_5

    .line 29
    sget v6, Lcom/smartisanos/launcher/ob;->line_feed:I

    invoke-static {v6}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    sget v6, Lcom/smartisanos/launcher/ob;->line_feed:I

    invoke-static {v6}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    sget v6, Lcom/smartisanos/launcher/ob;->uninstall_multi_com_intsig_camscanner:I

    invoke-static {v6}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    :cond_6
    :goto_1
    return-void

    .line 33
    :cond_7
    iget-object v1, p0, Lcom/smartisanos/launcher/a/na;->Yj:Ljava/util/List;

    if-eqz v1, :cond_27

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_9

    .line 34
    :cond_8
    iget-object v1, p0, Lcom/smartisanos/launcher/a/na;->dk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 35
    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 36
    check-cast v6, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/FolderInfo;->hf()Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_2
    move v1, v5

    goto :goto_3

    .line 37
    :cond_a
    iget-boolean v7, v6, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz v7, :cond_9

    iget-boolean v6, v6, Lcom/smartisanos/launcher/data/ItemInfo;->isCanUninstall:Z

    if-nez v6, :cond_9

    goto :goto_2

    :cond_b
    move v1, v4

    .line 38
    :goto_3
    iget-object v6, p0, Lcom/smartisanos/launcher/a/na;->Yj:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v4

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    :cond_c
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 39
    iget-byte v13, v12, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-nez v13, :cond_d

    move v7, v5

    .line 40
    :cond_d
    invoke-virtual {v12}, Lcom/smartisanos/launcher/data/ItemInfo;->af()Z

    move-result v13

    if-eqz v13, :cond_e

    move v8, v5

    .line 41
    :cond_e
    invoke-virtual {v12}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 42
    move-object v9, v12

    check-cast v9, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/data/FolderInfo;->gf()Z

    move-result v13

    if-eqz v13, :cond_f

    move v10, v5

    .line 43
    :cond_f
    invoke-virtual {v9}, Lcom/smartisanos/launcher/data/FolderInfo;->if()Z

    move-result v9

    if-eqz v9, :cond_10

    move v9, v5

    move v11, v9

    goto :goto_5

    :cond_10
    move v9, v5

    .line 44
    :cond_11
    :goto_5
    invoke-virtual {v12}, Lcom/smartisanos/launcher/data/ItemInfo;->Ve()Z

    move-result v13

    if-eqz v13, :cond_12

    move v10, v5

    .line 45
    :cond_12
    iget-object v12, v12, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    move v11, v5

    goto :goto_4

    .line 46
    :cond_13
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v1, :cond_14

    .line 47
    sget v6, Lcom/smartisanos/launcher/ob;->multi_uninstall_with_system_app:I

    invoke-static {v6}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_14
    if-eqz v7, :cond_16

    if-nez v8, :cond_16

    if-nez v9, :cond_16

    if-eqz v1, :cond_15

    .line 48
    sget v1, Lcom/smartisanos/launcher/ob;->multi_uninstall_with_app_other:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 49
    :cond_15
    sget v1, Lcom/smartisanos/launcher/ob;->multi_uninstall_with_app:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    :cond_16
    if-nez v7, :cond_17

    if-eqz v8, :cond_17

    if-nez v9, :cond_17

    .line 50
    sget v1, Lcom/smartisanos/launcher/ob;->multi_uninstall_with_shortcut:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    :cond_17
    if-nez v7, :cond_18

    if-nez v8, :cond_18

    if-eqz v9, :cond_18

    .line 51
    sget v1, Lcom/smartisanos/launcher/ob;->multi_uninstall_with_folder:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    :cond_18
    if-eqz v7, :cond_1a

    if-eqz v8, :cond_1a

    if-nez v9, :cond_1a

    if-eqz v1, :cond_19

    .line 52
    sget v1, Lcom/smartisanos/launcher/ob;->multi_uninstall_with_app_and_shortcut_other:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 53
    :cond_19
    sget v1, Lcom/smartisanos/launcher/ob;->multi_uninstall_with_app_and_shortcut:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_1a
    if-eqz v7, :cond_1c

    if-nez v8, :cond_1c

    if-eqz v9, :cond_1c

    if-eqz v1, :cond_1b

    .line 54
    sget v1, Lcom/smartisanos/launcher/ob;->multi_uninstall_with_app_and_folder_other:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 55
    :cond_1b
    sget v1, Lcom/smartisanos/launcher/ob;->multi_uninstall_with_app_and_folder:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_1c
    if-nez v7, :cond_1d

    if-eqz v8, :cond_1d

    if-eqz v9, :cond_1d

    .line 56
    sget v1, Lcom/smartisanos/launcher/ob;->multi_uninstall_with_shortcut_and_folder:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_1d
    if-eqz v7, :cond_1f

    if-eqz v8, :cond_1f

    if-eqz v9, :cond_1f

    if-eqz v1, :cond_1e

    .line 57
    sget v1, Lcom/smartisanos/launcher/ob;->multi_uninstall_with_app_shortcut_and_folder_other:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 58
    :cond_1e
    sget v1, Lcom/smartisanos/launcher/ob;->multi_uninstall_with_app_shortcut_and_folder:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1f
    :goto_6
    if-eqz v9, :cond_20

    .line 59
    sget v1, Lcom/smartisanos/launcher/ob;->line_feed:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    sget v1, Lcom/smartisanos/launcher/ob;->line_feed:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    sget v1, Lcom/smartisanos/launcher/ob;->uninstall_folder_description:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_20
    if-eqz v10, :cond_21

    .line 62
    sget v1, Lcom/smartisanos/launcher/ob;->line_feed:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    sget v1, Lcom/smartisanos/launcher/ob;->line_feed:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    sget v1, Lcom/smartisanos/launcher/ob;->uninstall_double_app_description:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_21
    if-eqz v11, :cond_22

    .line 65
    sget v1, Lcom/smartisanos/launcher/ob;->line_feed:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    sget v1, Lcom/smartisanos/launcher/ob;->line_feed:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    sget v1, Lcom/smartisanos/launcher/ob;->uninstall_multi_com_intsig_camscanner:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    :cond_22
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    :cond_23
    :goto_7
    iget v2, p0, Lcom/smartisanos/launcher/a/na;->ck:I

    if-ne v2, v5, :cond_default_dialog_title

    iget-object v2, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-byte v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-ne v2, v5, :cond_default_dialog_title

    const-string v2, "删除快捷方式"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_shortcut_dialog_title_ready

    :cond_default_dialog_title
    sget v2, Lcom/smartisanos/launcher/ob;->uninstall_app_dialog_title:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_shortcut_dialog_title_ready

    .line 70
    iget v2, p0, Lcom/smartisanos/launcher/a/na;->ck:I

    if-ne v2, v5, :cond_25

    .line 71
    iget-object v2, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-boolean v3, v2, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz v3, :cond_24

    iget-boolean v3, v2, Lcom/smartisanos/launcher/data/ItemInfo;->isCanUninstall:Z

    if-eqz v3, :cond_24

    iget-byte v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-nez v2, :cond_24

    .line 72
    sget v1, Lcom/smartisanos/launcher/ob;->waring:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 73
    sget v1, Lcom/smartisanos/launcher/ob;->uninstall_system_app:I

    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 74
    iget-object v3, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/a/na;->a(Landroid/app/AlertDialog$Builder;Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/smartisanos/launcher/a/ma;

    iget-object v2, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {v1, p0, v2}, Lcom/smartisanos/launcher/a/ma;-><init>(Lcom/smartisanos/launcher/a/na;Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 77
    sget v2, Lcom/smartisanos/launcher/ob;->continue_uninstall:I

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    .line 78
    :cond_24
    iget-object v2, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-byte v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-ne v2, v5, :cond_default_shortcut_message

    invoke-static {p0}, Lcom/smartisanos/launcher/a/na;->c(Lcom/smartisanos/launcher/a/na;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/launcher/ShortcutCompatBridge;->onShortcutDeleteDialogRequested(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "是否删除“"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "”？"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_default_shortcut_message
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 79
    new-instance v1, Lcom/smartisanos/launcher/a/ia;

    iget-object v2, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-boolean v3, p0, Lcom/smartisanos/launcher/a/na;->Zj:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/smartisanos/launcher/a/ia;-><init>(Lcom/smartisanos/launcher/a/na;Lcom/smartisanos/launcher/data/ItemInfo;Z)V

    .line 80
    iget-object v2, p0, Lcom/smartisanos/launcher/a/na;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-byte v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-ne v2, v5, :cond_default_shortcut_positive

    const-string v2, "删除"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    :cond_default_shortcut_positive
    sget v2, Lcom/smartisanos/launcher/ob;->ok:I

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    :cond_25
    if-ne v2, v3, :cond_26

    .line 81
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 82
    new-instance v1, Lcom/smartisanos/launcher/a/ha;

    iget-object v2, p0, Lcom/smartisanos/launcher/a/na;->Yj:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/smartisanos/launcher/a/ha;-><init>(Lcom/smartisanos/launcher/a/na;Ljava/util/List;)V

    .line 83
    sget v2, Lcom/smartisanos/launcher/ob;->ok:I

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    :goto_8
    sget v1, Lcom/smartisanos/launcher/ob;->cancel:I

    new-instance v2, Lcom/smartisanos/launcher/a/aa;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/a/aa;-><init>(Lcom/smartisanos/launcher/a/na;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    new-instance v1, Lcom/smartisanos/launcher/a/ba;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/a/ba;-><init>(Lcom/smartisanos/launcher/a/na;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    new-instance v1, Lcom/smartisanos/launcher/a/ca;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/a/ca;-><init>(Lcom/smartisanos/launcher/a/na;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-static {v4}, Lcom/smartisanos/launcher/a/oa;->x(Z)Z

    .line 88
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    .line 89
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/J;->a(Landroid/app/AlertDialog;)V

    .line 90
    sget-object p0, Lcom/smartisanos/launcher/a/oa;->jk:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    invoke-static {}, Lcom/smartisanos/launcher/ShortcutCompatBridge;->onShortcutDeleteDialogShown()V

    return-void

    .line 91
    :cond_26
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "dialogType is error"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    :goto_9
    return-void
.end method
