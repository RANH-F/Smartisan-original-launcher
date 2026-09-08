.class public Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;
.super Landroid/app/Service;
.source "DownloadHandlerService.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 3

    .line 66
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->c()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->l(I)Lc/d/a/b/a/c/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->g(I)Lc/d/a/b/a/f/c;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v0, v2}, Lc/d/a/b/a/c/d;->b(Lc/d/a/b/a/f/c;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 70
    invoke-static {p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;IZ)I

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "Open Fail!"

    .line 71
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "extra_click_download_ids"

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 45
    :try_start_0
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v3, "android.ss.intent.action.DOWNLOAD_DELETE"

    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->c()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->l(I)Lc/d/a/b/a/c/d;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 48
    :try_start_1
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->g(I)Lc/d/a/b/a/f/c;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 49
    invoke-interface {v1, v3}, Lc/d/a/b/a/c/d;->a(Lc/d/a/b/a/f/c;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 50
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    if-nez v2, :cond_5

    .line 51
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 53
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/notification/b;->a(I)V

    goto :goto_1

    :cond_1
    const-string v0, "android.ss.intent.action.DOWNLOAD_OPEN"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Landroid/content/Context;I)V

    .line 58
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/c;->b()Lcom/ss/android/socialbase/appdownloader/c$g;

    move-result-object p1

    .line 59
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lc/d/a/b/a/c/g0;

    move-result-object v0

    if-nez p1, :cond_2

    if-eqz v0, :cond_3

    .line 60
    :cond_2
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->g(I)Lc/d/a/b/a/f/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Lcom/ss/android/socialbase/appdownloader/c$g;Lc/d/a/b/a/f/c;)V

    .line 62
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/notification/b;->a(I)V

    goto :goto_1

    :cond_4
    const-string p1, "android.ss.intent.action.DOWNLOAD_HIDE"

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 64
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/notification/b;->a(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method private a(Lc/d/a/b/a/f/c;Lcom/ss/android/socialbase/appdownloader/c$g;Lc/d/a/b/a/c/g0;)V
    .locals 8

    .line 72
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    .line 73
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    const-string v7, ""

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 74
    :pswitch_1
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(I)V

    if-eqz p2, :cond_0

    const/4 v2, 0x5

    .line 75
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result v4

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->W()J

    move-result-wide v5

    const-string v3, ""

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/socialbase/appdownloader/c$g;->a(IILjava/lang/String;IJ)V

    :cond_0
    if-eqz p3, :cond_2

    const/4 p2, 0x5

    .line 76
    invoke-interface {p3, p2, p1, v7, v7}, Lc/d/a/b/a/c/g0;->a(ILc/d/a/b/a/f/c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_2
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->c(I)V

    if-eqz p2, :cond_1

    const/4 v2, 0x6

    .line 78
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result v4

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->W()J

    move-result-wide v5

    const-string v3, ""

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/socialbase/appdownloader/c$g;->a(IILjava/lang/String;IJ)V

    :cond_1
    if-eqz p3, :cond_2

    const/4 p2, 0x6

    .line 79
    invoke-interface {p3, p2, p1, v7, v7}, Lc/d/a/b/a/c/g0;->a(ILc/d/a/b/a/f/c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const/4 p3, 0x1

    .line 80
    invoke-static {p0, v1, p3}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;IZ)I

    .line 81
    invoke-direct {p0, p2, p1}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Lcom/ss/android/socialbase/appdownloader/c$g;Lc/d/a/b/a/f/c;)V

    goto :goto_0

    .line 82
    :pswitch_4
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->e(I)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/ss/android/socialbase/appdownloader/c$g;Lc/d/a/b/a/f/c;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {p2}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lc/d/a/b/a/c/g0;

    move-result-object v0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return-void

    .line 42
    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 43
    new-instance v2, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$b;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$b;-><init>(Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;Lc/d/a/b/a/f/c;Lcom/ss/android/socialbase/appdownloader/c$g;Lc/d/a/b/a/c/g0;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/c;->b()Lcom/ss/android/socialbase/appdownloader/c$g;

    move-result-object v3

    const-string v2, "extra_click_download_ids"

    .line 4
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "extra_click_download_type"

    .line 5
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 6
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lc/d/a/b/a/c/g0;

    move-result-object v10

    const-string v5, "android.ss.intent.action.DOWNLOAD_OPEN"

    .line 7
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "android.ss.intent.action.DOWNLOAD_DELETE"

    const-string v11, ""

    if-nez v5, :cond_12

    .line 8
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "android.ss.intent.action.DOWNLOAD_HIDE"

    .line 9
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string p1, "android.ss.intent.action.DOWNLOAD_CLICK"

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v5, 0x1

    if-eqz p1, :cond_10

    .line 11
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->g(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-nez p1, :cond_3

    return v0

    .line 12
    :cond_3
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    const/4 v6, -0x3

    if-eq v4, v5, :cond_c

    const/4 v7, 0x4

    if-ne v4, v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x2

    if-ne v4, v7, :cond_8

    if-ne v1, v6, :cond_6

    .line 13
    invoke-static {p0, v2, v5}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;IZ)I

    .line 14
    invoke-direct {p0, v3, p1}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Lcom/ss/android/socialbase/appdownloader/c$g;Lc/d/a/b/a/f/c;)V

    goto/16 :goto_2

    .line 15
    :cond_6
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->c(I)V

    if-eqz v3, :cond_7

    const/4 v5, 0x6

    .line 16
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result v7

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->W()J

    move-result-wide v8

    const-string v6, ""

    move v4, v2

    invoke-interface/range {v3 .. v9}, Lcom/ss/android/socialbase/appdownloader/c$g;->a(IILjava/lang/String;IJ)V

    :cond_7
    if-eqz v10, :cond_f

    const/4 v1, 0x6

    .line 17
    invoke-interface {v10, v1, p1, v11, v11}, Lc/d/a/b/a/c/g0;->a(ILc/d/a/b/a/f/c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const/4 v7, 0x3

    if-ne v4, v7, :cond_b

    const/4 v4, -0x1

    if-eq v1, v4, :cond_a

    const/4 v4, -0x4

    if-ne v1, v4, :cond_9

    goto :goto_0

    :cond_9
    if-ne v1, v6, :cond_f

    .line 18
    invoke-static {p0, v2, v5}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;IZ)I

    .line 19
    invoke-direct {p0, v3, p1}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Lcom/ss/android/socialbase/appdownloader/c$g;Lc/d/a/b/a/f/c;)V

    goto :goto_2

    .line 20
    :cond_a
    :goto_0
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->e(I)V

    goto :goto_2

    .line 21
    :cond_b
    invoke-direct {p0, p1, v3, v10}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Lc/d/a/b/a/f/c;Lcom/ss/android/socialbase/appdownloader/c$g;Lc/d/a/b/a/c/g0;)V

    goto :goto_2

    .line 22
    :cond_c
    :goto_1
    invoke-static {v1}, Lc/d/a/b/a/a/f;->b(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 23
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(I)V

    if-eqz v3, :cond_d

    const/4 v5, 0x5

    .line 24
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result v7

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->W()J

    move-result-wide v8

    const-string v6, ""

    move v4, v2

    invoke-interface/range {v3 .. v9}, Lcom/ss/android/socialbase/appdownloader/c$g;->a(IILjava/lang/String;IJ)V

    :cond_d
    if-eqz v10, :cond_f

    const/4 v1, 0x5

    .line 25
    invoke-interface {v10, v1, p1, v11, v11}, Lc/d/a/b/a/c/g0;->a(ILc/d/a/b/a/f/c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    if-ne v1, v6, :cond_f

    .line 26
    invoke-static {p0, v2, v5}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;IZ)I

    .line 27
    invoke-direct {p0, v3, p1}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Lcom/ss/android/socialbase/appdownloader/c$g;Lc/d/a/b/a/f/c;)V

    .line 28
    :cond_f
    :goto_2
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->a0()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 29
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/notification/b;->a(I)V

    .line 30
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/notification/b;->e(I)V

    goto :goto_4

    :cond_10
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "android.intent.action.MEDIA_MOUNTED"

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 33
    :cond_11
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 34
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$a;-><init>(Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v5

    .line 35
    :cond_12
    :goto_3
    invoke-direct {p0, p0, p1}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 36
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 37
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->g(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 38
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->i()V

    if-eqz v3, :cond_13

    const/4 v5, 0x7

    .line 39
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result v7

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->W()J

    move-result-wide v8

    const-string v6, ""

    move v4, v2

    invoke-interface/range {v3 .. v9}, Lcom/ss/android/socialbase/appdownloader/c$g;->a(IILjava/lang/String;IJ)V

    :cond_13
    if-eqz v10, :cond_14

    const/4 v1, 0x7

    .line 40
    invoke-interface {v10, v1, p1, v11, v11}, Lc/d/a/b/a/c/g0;->a(ILc/d/a/b/a/f/c;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_4
    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 2
    invoke-static {}, Lc/d/a/b/a/e/a;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sget-object p2, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a:Ljava/lang/String;

    const-string p3, "onStartCommand"

    invoke-static {p2, p3}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Landroid/content/Intent;)Z

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const/4 p1, 0x2

    return p1
.end method
