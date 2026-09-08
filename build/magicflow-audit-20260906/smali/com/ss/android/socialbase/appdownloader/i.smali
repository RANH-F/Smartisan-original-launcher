.class public Lcom/ss/android/socialbase/appdownloader/i;
.super Ljava/lang/Object;
.source "NotificationPermissionHelper.java"


# static fields
.field private static final a:Ljava/lang/String; = "i"

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/appdownloader/c$n;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/ss/android/socialbase/appdownloader/view/a;

.field private static d:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/i;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/android/socialbase/appdownloader/i;->d:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c$n;)V
    .locals 7

    const-class v0, Lcom/ss/android/socialbase/appdownloader/i;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 14
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_7

    .line 15
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 16
    :cond_1
    sget v2, Lcom/ss/android/socialbase/appdownloader/R$string;->appdownloader_notification_request_title:I

    .line 17
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/c;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 18
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v2

    const-string v3, "appdownloader_notification_request_title"

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 19
    :cond_2
    sget v3, Lcom/ss/android/socialbase/appdownloader/R$string;->appdownloader_notification_request_message:I

    .line 20
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/c;->f()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 21
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v3

    const-string v4, "appdownloader_notification_request_message"

    invoke-static {v3, v4}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 22
    :cond_3
    sget v4, Lcom/ss/android/socialbase/appdownloader/R$string;->appdownloader_notification_request_btn_yes:I

    .line 23
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ss/android/socialbase/appdownloader/c;->f()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 24
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v4

    const-string v5, "appdownloader_notification_request_btn_yes"

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 25
    :cond_4
    sget v5, Lcom/ss/android/socialbase/appdownloader/R$string;->appdownloader_notification_request_btn_no:I

    .line 26
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ss/android/socialbase/appdownloader/c;->f()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 27
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v5

    const-string v6, "appdownloader_notification_request_btn_no"

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 28
    :cond_5
    sget-object v6, Lcom/ss/android/socialbase/appdownloader/i;->b:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v6, Lcom/ss/android/socialbase/appdownloader/i;->d:Landroid/app/AlertDialog;

    if-eqz v6, :cond_6

    sget-object v6, Lcom/ss/android/socialbase/appdownloader/i;->d:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_8

    .line 30
    :cond_6
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 31
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/ss/android/socialbase/appdownloader/i$c;

    invoke-direct {v3, p0, p1}, Lcom/ss/android/socialbase/appdownloader/i$c;-><init>(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c$n;)V

    .line 32
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/i$b;

    invoke-direct {p1}, Lcom/ss/android/socialbase/appdownloader/i$b;-><init>()V

    .line 33
    invoke-virtual {p0, v5, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/i$a;

    invoke-direct {p1}, Lcom/ss/android/socialbase/appdownloader/i$a;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 35
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/ss/android/socialbase/appdownloader/i;->d:Landroid/app/AlertDialog;

    goto :goto_1

    .line 37
    :cond_7
    :goto_0
    invoke-interface {p1}, Lcom/ss/android/socialbase/appdownloader/c$n;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/i;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    :cond_8
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Z)V
    .locals 3

    const-class v0, Lcom/ss/android/socialbase/appdownloader/i;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/i;->d:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/i;->d:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    const/4 v1, 0x0

    .line 6
    sput-object v1, Lcom/ss/android/socialbase/appdownloader/i;->d:Landroid/app/AlertDialog;

    .line 7
    :cond_0
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 8
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/appdownloader/c$n;

    if-eqz v2, :cond_1

    if-eqz p0, :cond_2

    .line 10
    invoke-interface {v2}, Lcom/ss/android/socialbase/appdownloader/c$n;->a()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {v2}, Lcom/ss/android/socialbase/appdownloader/c$n;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :cond_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a()Z
    .locals 1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    return v0
.end method

.method public static b(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c$n;)V
    .locals 3

    if-eqz p0, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/i;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/appdownloader/view/a;

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/i;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    .line 4
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/i;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/view/a;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/view/a;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/i;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    .line 6
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/appdownloader/i;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    sget-object v2, Lcom/ss/android/socialbase/appdownloader/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :cond_1
    :goto_0
    sget-object p0, Lcom/ss/android/socialbase/appdownloader/i;->c:Lcom/ss/android/socialbase/appdownloader/view/a;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/a;->a()V

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/ss/android/socialbase/appdownloader/c$n;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    .line 11
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    invoke-interface {p1}, Lcom/ss/android/socialbase/appdownloader/c$n;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
