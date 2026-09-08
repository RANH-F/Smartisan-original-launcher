.class public Lcom/ss/android/socialbase/appdownloader/e;
.super Lcom/ss/android/socialbase/downloader/notification/a;
.source "AppNotificationItem.java"


# instance fields
.field private g:Landroid/content/Context;

.field private h:Landroid/content/res/Resources;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:J


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/ss/android/socialbase/downloader/notification/a;-><init>(ILjava/lang/String;)V

    const-wide/16 p2, 0x0

    .line 2
    iput-wide p2, p0, Lcom/ss/android/socialbase/appdownloader/e;->l:J

    .line 3
    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/e;->j:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcom/ss/android/socialbase/appdownloader/e;->i:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lcom/ss/android/socialbase/appdownloader/e;->k:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    .line 7
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e;->h:Landroid/content/res/Resources;

    return-void
.end method

.method private b(Lc/d/a/b/a/d/a;Z)Landroid/app/Notification;
    .locals 23

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/c;->k()Ljava/lang/String;

    move-result-object v1

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    .line 3
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v1, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/c;->l()Lcom/ss/android/socialbase/appdownloader/c$m;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/c;->l()Lcom/ss/android/socialbase/appdownloader/c$m;

    move-result-object v2

    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-interface {v2, v3, v1}, Lcom/ss/android/socialbase/appdownloader/c$m;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_2
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 9
    :catch_0
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->e()I

    move-result v2

    .line 12
    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/b;->a(I)I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    return-object v4

    .line 13
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->a()I

    move-result v5

    const-string v6, "android"

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v3, v10, :cond_7

    if-ne v3, v9, :cond_4

    goto :goto_1

    :cond_4
    if-ne v3, v8, :cond_5

    .line 14
    iget-object v12, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v13, "stat_sys_warning"

    invoke-static {v12, v13, v6}, Lcom/ss/android/socialbase/appdownloader/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    :cond_5
    if-ne v3, v7, :cond_6

    .line 15
    iget-object v12, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v13, "stat_sys_download_done"

    invoke-static {v12, v13, v6}, Lcom/ss/android/socialbase/appdownloader/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    :cond_6
    move v6, v11

    goto :goto_2

    .line 16
    :cond_7
    :goto_1
    iget-object v12, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v13, "stat_sys_download"

    invoke-static {v12, v13, v6}, Lcom/ss/android/socialbase/appdownloader/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :goto_2
    if-eqz v6, :cond_8

    .line 17
    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_8
    const/high16 v12, 0x8000000

    const-string v13, "extra_click_download_type"

    const-string v14, "extra_click_download_ids"

    if-eq v3, v10, :cond_c

    if-eq v3, v9, :cond_c

    if-ne v3, v8, :cond_9

    goto :goto_5

    :cond_9
    if-ne v3, v7, :cond_f

    .line 18
    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 19
    invoke-virtual {v1, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v15, -0x1

    if-eq v2, v15, :cond_b

    const/4 v15, -0x4

    if-ne v2, v15, :cond_a

    goto :goto_3

    :cond_a
    const-string v2, "android.ss.intent.action.DOWNLOAD_OPEN"

    goto :goto_4

    :cond_b
    :goto_3
    const-string v2, "android.ss.intent.action.DOWNLOAD_DELETE"

    .line 20
    :goto_4
    new-instance v15, Landroid/content/Intent;

    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-class v7, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-direct {v15, v4, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    invoke-virtual {v15, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-virtual {v15, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    invoke-virtual {v15, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-static {v2, v5, v15, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 25
    new-instance v2, Landroid/content/Intent;

    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-class v7, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-direct {v2, v4, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.ss.intent.action.DOWNLOAD_HIDE"

    .line 26
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual {v2, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    invoke-virtual {v2, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-static {v4, v5, v2, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_8

    .line 30
    :cond_c
    :goto_5
    new-instance v2, Landroid/content/Intent;

    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-class v7, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-direct {v2, v4, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.ss.intent.action.DOWNLOAD_DELETE"

    .line 31
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {v2, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    invoke-virtual {v2, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-static {v4, v5, v2, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    if-eq v3, v10, :cond_e

    if-ne v3, v9, :cond_d

    goto :goto_6

    :cond_d
    move v2, v11

    goto :goto_7

    :cond_e
    :goto_6
    move v2, v10

    .line 35
    :goto_7
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 36
    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 37
    :cond_f
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->b()J

    move-result-wide v16

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->c()J

    move-result-wide v18

    if-eq v3, v10, :cond_12

    if-ne v3, v9, :cond_10

    goto :goto_a

    :cond_10
    move v7, v11

    move-object v4, v13

    :cond_11
    :goto_9
    const/4 v12, 0x0

    goto :goto_b

    :cond_12
    :goto_a
    const-wide/16 v20, 0x0

    cmp-long v2, v18, v20

    if-lez v2, :cond_13

    const-wide/16 v20, 0x64

    mul-long v16, v16, v20

    move-object v4, v13

    .line 39
    div-long v12, v16, v18

    long-to-int v7, v12

    .line 40
    iget-object v12, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v13, "appdownloader_download_percent"

    invoke-static {v12, v13}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_11

    .line 41
    iget-object v13, v0, Lcom/ss/android/socialbase/appdownloader/e;->h:Landroid/content/res/Resources;

    new-array v15, v10, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v11

    invoke-virtual {v13, v12, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_b

    :cond_13
    move-object v4, v13

    move v7, v11

    goto :goto_9

    .line 42
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->d()Ljava/lang/String;

    move-result-object v13

    .line 43
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 44
    iget-object v15, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v2, "appdownloader_download_unknown_title"

    invoke-static {v15, v2}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_14

    .line 45
    iget-object v13, v0, Lcom/ss/android/socialbase/appdownloader/e;->h:Landroid/content/res/Resources;

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 46
    :cond_14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v15, "appdownloader_notification_download_complete_open"

    const/16 v11, 0x8

    if-gt v2, v11, :cond_1f

    .line 47
    invoke-virtual {v1, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 48
    invoke-virtual {v1, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    if-eq v3, v10, :cond_1e

    if-ne v3, v9, :cond_15

    goto/16 :goto_e

    :cond_15
    if-ne v3, v8, :cond_16

    .line 49
    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v3, "appdownloader_notification_paused_in_background"

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1d

    .line 50
    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e;->h:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_d

    :cond_16
    const/4 v2, 0x3

    if-ne v3, v2, :cond_1d

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->e()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->e()I

    move-result v2

    const/4 v3, -0x4

    if-ne v2, v3, :cond_17

    goto/16 :goto_c

    .line 52
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->e()I

    move-result v2

    const/4 v3, -0x3

    if-ne v2, v3, :cond_1d

    .line 53
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/ss/android/socialbase/downloader/downloader/f;->g(I)Lc/d/a/b/a/f/c;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 54
    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->z()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 55
    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e;->j:Ljava/lang/String;

    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->i:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 56
    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-static {v2, v15}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1d

    .line 57
    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e;->h:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_d

    .line 58
    :cond_18
    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v3, "appdownloader_notification_download_complete_with_install"

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1d

    .line 59
    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e;->h:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_d

    .line 60
    :cond_19
    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v3, "appdownloader_notification_download_complete_without_install"

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 61
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->c()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/ss/android/socialbase/downloader/downloader/c;->l(I)Lc/d/a/b/a/c/d;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 62
    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-static {v2, v15}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    :cond_1a
    if-eqz v2, :cond_1d

    .line 63
    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e;->h:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_d

    :cond_1b
    :goto_c
    if-eqz p1, :cond_1c

    .line 64
    invoke-virtual/range {p1 .. p1}, Lc/d/a/b/a/d/a;->a()I

    move-result v2

    const/16 v3, 0x3ee

    if-ne v2, v3, :cond_1c

    .line 65
    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v3, "appdownloader_notification_download_space_failed"

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1d

    .line 66
    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e;->h:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_d

    .line 67
    :cond_1c
    iget-object v2, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v3, "appdownloader_notification_download_failed"

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1d

    .line 68
    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e;->h:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_1d
    :goto_d
    const/4 v2, 0x0

    goto/16 :goto_1f

    :cond_1e
    :goto_e
    const/4 v2, 0x0

    .line 69
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    .line 70
    invoke-virtual {v1, v3, v7, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_1f

    :cond_1f
    const/4 v2, 0x0

    .line 71
    iget-object v12, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v11, "appdownloader_notification_layout"

    invoke-static {v12, v11}, Lcom/ss/android/socialbase/appdownloader/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_20

    return-object v2

    .line 72
    :cond_20
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v12, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 73
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x14

    if-le v11, v12, :cond_21

    .line 74
    :try_start_1
    iget-object v11, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-static {v11}, Lcom/ss/android/socialbase/appdownloader/b;->b(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_21

    .line 75
    iget-object v11, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v12, "appdownloader_root"

    invoke-static {v11, v12}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    .line 76
    iget-object v12, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v8, "appdownloader_notification_material_background_color"

    invoke-static {v12, v8}, Lcom/ss/android/socialbase/appdownloader/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    if-eqz v11, :cond_21

    if-eqz v8, :cond_21

    const-string v12, "setBackgroundColor"

    .line 77
    iget-object v9, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v11, v12, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :catchall_0
    :cond_21
    new-instance v8, Landroid/content/Intent;

    iget-object v9, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-class v11, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-direct {v8, v9, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "android.ss.intent.action.DOWNLOAD_CLICK"

    .line 79
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->d()Ljava/lang/String;

    move-result-object v9

    const-string v11, "notification_name"

    invoke-virtual {v8, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {v8, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    invoke-virtual {v8, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v9, "appdownloader_action"

    invoke-static {v4, v9}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_22

    .line 84
    iget-object v11, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const/high16 v12, 0x8000000

    invoke-static {v11, v5, v8, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 85
    :cond_22
    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v8, "appdownloader_desc"

    invoke-static {v4, v8}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_23

    .line 86
    invoke-virtual {v2, v4, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 87
    :cond_23
    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v8, "appdownloader_download_progress"

    invoke-static {v4, v8}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_24

    const/16 v11, 0x64

    move/from16 v12, p2

    .line 88
    invoke-virtual {v2, v4, v11, v7, v12}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 89
    :cond_24
    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v7, "appdownloader_icon"

    invoke-static {v4, v7}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_25

    .line 90
    invoke-virtual {v2, v4, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_25
    const-string v4, ""

    if-eq v3, v10, :cond_41

    const/4 v6, 0x4

    if-ne v3, v6, :cond_26

    goto/16 :goto_19

    :cond_26
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2f

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/appdownloader/b;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/appdownloader/b;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    iget-object v5, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v6, "appdownloader_notification_download_pause"

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_27

    .line 94
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :cond_27
    move-object v5, v4

    .line 95
    :goto_f
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v7, "appdownloader_notification_download_resume"

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_28

    .line 96
    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 97
    :cond_28
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_29

    .line 98
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 99
    :cond_29
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v8, "appdownloader_download_success"

    invoke-static {v6, v8}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2a

    .line 100
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 101
    :cond_2a
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v7, "appdownloader_download_text"

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v7, 0x0

    .line 102
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 103
    :cond_2b
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2e

    .line 104
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2d

    iget-object v7, v0, Lcom/ss/android/socialbase/appdownloader/e;->k:Ljava/lang/String;

    invoke-static {v7}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    goto :goto_10

    :cond_2c
    const/4 v7, 0x0

    .line 105
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_11

    :cond_2d
    :goto_10
    const/16 v7, 0x8

    .line 106
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_2e
    :goto_11
    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    goto/16 :goto_1e

    :cond_2f
    const/4 v6, 0x3

    if-ne v3, v6, :cond_40

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->e()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->e()I

    move-result v3

    const/4 v6, -0x4

    if-ne v3, v6, :cond_30

    goto/16 :goto_14

    .line 108
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->e()I

    move-result v3

    const/4 v6, -0x3

    if-ne v3, v6, :cond_37

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/appdownloader/b;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/ss/android/socialbase/downloader/downloader/f;->g(I)Lc/d/a/b/a/f/c;

    move-result-object v6

    if-eqz v6, :cond_32

    .line 111
    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->z()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_32

    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->z()Ljava/lang/String;

    move-result-object v6

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 112
    iget-object v5, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->j:Ljava/lang/String;

    iget-object v7, v0, Lcom/ss/android/socialbase/appdownloader/e;->i:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 113
    iget-object v5, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-static {v5, v15}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    goto :goto_12

    .line 114
    :cond_31
    iget-object v5, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v6, "appdownloader_notification_download_complete_with_install"

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_34

    .line 115
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->h:Landroid/content/res/Resources;

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_12

    .line 116
    :cond_32
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v7, "appdownloader_notification_download_complete_without_install"

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 117
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->c()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/ss/android/socialbase/downloader/downloader/c;->l(I)Lc/d/a/b/a/c/d;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 118
    iget-object v5, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-static {v5, v15}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    goto :goto_12

    :cond_33
    move v5, v6

    :cond_34
    :goto_12
    if-eqz v5, :cond_35

    .line 119
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    :cond_35
    move-object v5, v4

    .line 120
    :goto_13
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v7, "appdownloader_notification_download_install"

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_36

    .line 121
    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_36
    move-object/from16 v22, v4

    move-object v4, v3

    goto :goto_17

    :cond_37
    move-object v3, v4

    move-object v5, v3

    goto :goto_18

    .line 122
    :cond_38
    :goto_14
    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v5, "appdownloader_download_success_size"

    invoke-static {v3, v5}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_39

    const/16 v5, 0x8

    .line 123
    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_39
    if-eqz p1, :cond_3a

    .line 124
    invoke-virtual/range {p1 .. p1}, Lc/d/a/b/a/d/a;->a()I

    move-result v3

    const/16 v5, 0x3ee

    if-ne v3, v5, :cond_3a

    .line 125
    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v5, "appdownloader_notification_download_space_failed"

    invoke-static {v3, v5}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3b

    .line 126
    iget-object v5, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    .line 127
    :cond_3a
    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v5, "appdownloader_notification_download_failed"

    invoke-static {v3, v5}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3b

    .line 128
    iget-object v5, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_3b
    move-object v3, v4

    .line 129
    :goto_15
    iget-object v5, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v6, "appdownloader_notification_download_restart"

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3c

    .line 130
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_16

    :cond_3c
    move-object v5, v4

    :goto_16
    move-object/from16 v22, v5

    move-object v5, v3

    :goto_17
    move-object/from16 v3, v22

    .line 131
    :goto_18
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3d

    const/16 v7, 0x8

    .line 132
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 133
    :cond_3d
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v7, "appdownloader_download_success"

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3e

    const/4 v7, 0x0

    .line 134
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 135
    :cond_3e
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v7, "appdownloader_download_text"

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_3f

    .line 136
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 137
    :cond_3f
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4b

    .line 138
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1e

    :cond_40
    move-object v3, v4

    move-object v5, v3

    goto/16 :goto_1e

    .line 139
    :cond_41
    :goto_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/appdownloader/b;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/notification/a;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/appdownloader/b;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-ne v3, v10, :cond_42

    .line 141
    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v6, "appdownloader_notification_downloading"

    invoke-static {v3, v6}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    goto :goto_1a

    .line 142
    :cond_42
    iget-object v3, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v6, "appdownloader_notification_prepare"

    invoke-static {v3, v6}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    :goto_1a
    if-eqz v3, :cond_43

    .line 143
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1b

    :cond_43
    move-object v3, v4

    .line 144
    :goto_1b
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v7, "appdownloader_notification_download_pause"

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_44

    .line 145
    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 146
    :cond_44
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_45

    const/4 v7, 0x0

    .line 147
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 148
    :cond_45
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v7, "appdownloader_download_success"

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_46

    const/16 v7, 0x8

    .line 149
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 150
    :cond_46
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v7, "appdownloader_download_text"

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_47

    const/4 v7, 0x0

    .line 151
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 152
    :cond_47
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4a

    .line 153
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_49

    iget-object v7, v0, Lcom/ss/android/socialbase/appdownloader/e;->k:Ljava/lang/String;

    invoke-static {v7}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48

    goto :goto_1c

    :cond_48
    const/4 v7, 0x0

    .line 154
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1d

    :cond_49
    :goto_1c
    const/16 v7, 0x8

    .line 155
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_4a
    :goto_1d
    move-object/from16 v22, v5

    move-object v5, v3

    move-object v3, v4

    move-object/from16 v4, v22

    .line 156
    :cond_4b
    :goto_1e
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v7, "appdownloader_download_size"

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4c

    .line 157
    invoke-virtual {v2, v6, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 158
    :cond_4c
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v7, "appdownloader_download_status"

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4d

    .line 159
    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 160
    :cond_4d
    iget-object v6, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v7, "appdownloader_download_success_size"

    invoke-static {v6, v7}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4e

    .line 161
    invoke-virtual {v2, v6, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 162
    :cond_4e
    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    const-string v6, "appdownloader_download_success_status"

    invoke-static {v4, v6}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4f

    .line 163
    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 164
    :cond_4f
    iget-object v4, v0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    invoke-static {v4, v9}, Lcom/ss/android/socialbase/appdownloader/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_50

    .line 165
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 166
    :cond_50
    :goto_1f
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 167
    iget v3, v1, Landroid/app/Notification;->flags:I

    const/4 v4, 0x2

    or-int/2addr v3, v4

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 168
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_51

    if-eqz v2, :cond_51

    .line 169
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_51
    return-object v1
.end method


# virtual methods
.method protected a(Lc/d/a/b/a/d/a;Z)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/g;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/notification/a;->e()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/appdownloader/e;->l:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/appdownloader/e;->l:J

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/e;->b(Lc/d/a/b/a/d/a;Z)Landroid/app/Notification;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Landroid/app/Notification;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/e;->b(Lc/d/a/b/a/d/a;Z)Landroid/app/Notification;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Landroid/app/Notification;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/e;->b(Lc/d/a/b/a/d/a;Z)Landroid/app/Notification;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Landroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lc/d/a/b/a/f/c;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lc/d/a/b/a/f/c;)V

    .line 2
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e;->j:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e;->i:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e;->k:Ljava/lang/String;

    return-void
.end method
