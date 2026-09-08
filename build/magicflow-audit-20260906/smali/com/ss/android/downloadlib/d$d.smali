.class public Lcom/ss/android/downloadlib/d$d;
.super Ljava/lang/Object;
.source "NewDownloadCompletedEventDispatcher.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c$g;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/downloadlib/d$d;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/d$d;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/downloadlib/d$d;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 57
    iget-object v0, p0, Lcom/ss/android/downloadlib/d$d;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->g(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 59
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {p1}, Lcom/ss/android/downloadlib/e/c;->a(Lc/d/a/b/a/f/c;)Lcom/ss/android/downloadlib/a$h/b;

    move-result-object p1

    .line 61
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "package_name"

    .line 62
    invoke-virtual {v8, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "input_package_name"

    .line 63
    invoke-virtual {v8, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deeplink_installed_package_name_match_fail"

    const/4 v2, 0x1

    .line 65
    invoke-virtual {p1}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/a$h/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/a$h/b;->b()J

    move-result-wide v6

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 66
    invoke-static/range {v0 .. v10}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/d$d;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/downloadlib/d$d;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/a$f;->a()Lcom/ss/android/downloadlib/a$f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/downloadlib/a$f;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;IJ)V
    .locals 15

    move-object/from16 v0, p3

    move-object v12, p0

    .line 6
    iget-object v1, v12, Lcom/ss/android/downloadlib/d$d;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v2

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/f;->g(I)Lc/d/a/b/a/f/c;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 8
    invoke-virtual {v13}, Lc/d/a/b/a/f/c;->A0()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 9
    :cond_1
    invoke-static {v13}, Lcom/ss/android/downloadlib/e/c;->a(Lc/d/a/b/a/f/c;)Lcom/ss/android/downloadlib/a$h/b;

    move-result-object v14

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 10
    :pswitch_0
    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    const-string v1, "download_notificaion"

    const-string v2, "click_item"

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v4

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->b()J

    move-result-wide v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 12
    invoke-static/range {v1 .. v10}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JIZ)V

    goto/16 :goto_1

    .line 13
    :pswitch_1
    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    const-string v1, "download_notificaion"

    const-string v2, "click_continue"

    const/4 v3, 0x1

    .line 14
    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v4

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->b()J

    move-result-wide v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 15
    invoke-static/range {v1 .. v10}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JIZ)V

    goto/16 :goto_1

    .line 16
    :pswitch_2
    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    const-string v1, "download_notificaion"

    const-string v2, "click_pause"

    const/4 v3, 0x1

    .line 17
    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v4

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->b()J

    move-result-wide v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 18
    invoke-static/range {v1 .. v10}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JIZ)V

    goto/16 :goto_1

    .line 19
    :pswitch_3
    invoke-static {}, Lcom/ss/android/downloadlib/a$f;->a()Lcom/ss/android/downloadlib/a$f;

    move-result-object v2

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/ss/android/downloadlib/a$f;->a(Ljava/lang/String;J)V

    .line 20
    invoke-static {}, Lcom/ss/android/downloadlib/a$f;->a()Lcom/ss/android/downloadlib/a$f;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/ss/android/downloadlib/a$f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/ss/android/downloadlib/a$e/a;->a()Lcom/ss/android/downloadlib/a$e/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadlib/a$e/a;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 22
    :pswitch_4
    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    const-string v1, "download_notificaion"

    const-string v2, "click_install"

    const/4 v3, 0x1

    .line 23
    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v4

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->b()J

    move-result-wide v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 24
    invoke-static/range {v1 .. v10}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JIZ)V

    .line 25
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v0

    const-string v1, "download_notificaion"

    const-string v2, "install_window_show"

    invoke-virtual {v0, v14, v1, v2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a$h/b;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 26
    :pswitch_5
    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    const-string v1, "download_notificaion"

    const-string v2, "click_open"

    const/4 v3, 0x1

    .line 27
    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v4

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->b()J

    move-result-wide v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 28
    invoke-static/range {v1 .. v10}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JIZ)V

    goto/16 :goto_1

    .line 29
    :pswitch_6
    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_3

    .line 30
    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v1

    invoke-static {v13, v1, v2}, Lcom/ss/android/downloadlib/a;->a(Lc/d/a/b/a/f/c;J)V

    .line 31
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v1

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/ss/android/downloadlib/a;->a(JLjava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/downloadlib/a;->a(Ljava/lang/String;J)V

    .line 33
    invoke-static {}, Lcom/ss/android/downloadlib/d$c;->b()Lcom/ss/android/downloadlib/d$c;

    move-result-object v1

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ss/android/downloadlib/d$c;->a(Ljava/lang/Long;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 35
    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    invoke-static {}, Lcom/ss/android/downloadlib/a$e/a;->a()Lcom/ss/android/downloadlib/a$e/a;

    move-result-object v1

    invoke-virtual {v13}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v4

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->b()J

    move-result-wide v6

    invoke-virtual {v13}, Lc/d/a/b/a/f/c;->s0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13}, Lc/d/a/b/a/f/c;->x0()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v11}, Lcom/ss/android/downloadlib/a$e/a;->a(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/a$g;->b()Lcom/ss/android/downloadlib/a$g;

    move-result-object v1

    invoke-virtual {v13}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v4

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->b()J

    move-result-wide v6

    invoke-virtual {v13}, Lc/d/a/b/a/f/c;->s0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13}, Lc/d/a/b/a/f/c;->x0()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v11}, Lcom/ss/android/downloadlib/a$g;->a(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v1

    invoke-virtual {v14}, Lcom/ss/android/downloadlib/a$h/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v1, v2, v3, v0}, Lcom/ss/android/downloadlib/a$k/a;->a(Lc/d/a/b/a/f/c;JLjava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/h;->a()Lcom/ss/android/downloadlib/h;

    move-result-object v1

    invoke-virtual {v1, v13, v0}, Lcom/ss/android/downloadlib/h;->a(Lc/d/a/b/a/f/c;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    iget-object p2, p0, Lcom/ss/android/downloadlib/d$d;->a:Landroid/content/Context;

    if-nez p2, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->g(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 52
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result p2

    const/4 p3, -0x3

    if-eq p2, p3, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {p1}, Lcom/ss/android/downloadlib/a$p;->a(Lc/d/a/b/a/f/c;)J

    move-result-wide p2

    const-wide/16 p4, 0x0

    cmp-long p4, p2, p4

    if-lez p4, :cond_2

    .line 54
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object p4

    const/4 p5, 0x1

    invoke-virtual {p4, p2, p3, p5}, Lcom/ss/android/downloadlib/a;->a(JI)V

    .line 55
    :cond_2
    invoke-static {}, Lcom/ss/android/downloadlib/a$j;->b()Lcom/ss/android/downloadlib/a$j;

    move-result-object p2

    iget-object p3, p0, Lcom/ss/android/downloadlib/d$d;->a:Landroid/content/Context;

    invoke-virtual {p2, p3, p1}, Lcom/ss/android/downloadlib/a$j;->a(Landroid/content/Context;Lc/d/a/b/a/f/c;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/ss/android/downloadlib/d$d$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/downloadlib/d$d$a;-><init>(Lcom/ss/android/downloadlib/d$d;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 4
    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/e/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/ss/android/downloadlib/d$d;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lc/d/a/b/a/f/c;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/h;->a()Lcom/ss/android/downloadlib/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/h;->a(Lc/d/a/b/a/f/c;)V

    .line 44
    :try_start_0
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 46
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "extra"

    .line 47
    invoke-static {v1, v0}, Lcom/ss/android/downloadlib/e/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    .line 48
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v0

    const/16 v3, 0x3f4

    const/4 v4, 0x0

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->W()J

    move-result-wide v5

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/downloadlib/a;->a(JILjava/lang/String;JLc/d/a/b/a/f/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 56
    invoke-static {}, Lcom/ss/android/downloadlib/a$j;->b()Lcom/ss/android/downloadlib/a$j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$j;->a()Z

    move-result v0

    return v0
.end method

.method public a(IZ)Z
    .locals 0

    .line 41
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->l()Lc/d/a/a/a/a/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->l()Lc/d/a/a/a/a/c;

    move-result-object p1

    invoke-interface {p1, p2}, Lc/d/a/a/a/a/c;->a(Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
