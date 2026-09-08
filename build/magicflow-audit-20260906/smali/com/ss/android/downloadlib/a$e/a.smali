.class public Lcom/ss/android/downloadlib/a$e/a;
.super Ljava/lang/Object;
.source "AdDownloadDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/a$e/a$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "a"

.field private static g:Lcom/ss/android/downloadlib/a$e/a;


# instance fields
.field private a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ss/android/downloadlib/a$h/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ss/android/downloadlib/a$h/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/ss/android/downloadlib/a$e/b;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/a$e/a;->b:Z

    .line 3
    new-instance v0, Lcom/ss/android/downloadlib/a$e/b;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a$e/b;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$e/a;->e:Lcom/ss/android/downloadlib/a$e/b;

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$e/a;->e:Lcom/ss/android/downloadlib/a$e/b;

    const-string v1, "sp_ad_install_back_dialog"

    const-string v2, "key_uninstalled_list"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/a$e/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$e/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$e/a;->e:Lcom/ss/android/downloadlib/a$e/b;

    const-string v1, "sp_name_installed_app"

    const-string v2, "key_installed_list"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/a$e/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$e/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/a$e/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$e/a;->g:Lcom/ss/android/downloadlib/a$e/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/a$e/a;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a$e/a;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a$e/a;->g:Lcom/ss/android/downloadlib/a$e/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/ss/android/downloadlib/a$e/a;->g:Lcom/ss/android/downloadlib/a$e/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/ss/android/downloadlib/a$h/a;Lcom/ss/android/downloadlib/a$e/a$b;Z)V
    .locals 18

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    .line 50
    sget-object v0, Lcom/ss/android/downloadlib/a$e/a;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBackInstallDialog appName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/ss/android/downloadlib/a$h/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/ss/android/downloadlib/a$h/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 51
    iget-wide v0, v6, Lcom/ss/android/downloadlib/a$h/a;->b:J

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/e/d;->a(J)Lcom/ss/android/downloadad/a/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/c/a;->h()Lorg/json/JSONObject;

    move-result-object v0

    move-object v15, v0

    goto :goto_0

    :cond_0
    move-object v15, v2

    .line 53
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->d()Lc/d/a/a/a/a/i;

    move-result-object v7

    new-instance v8, Lc/d/a/a/a/d/c$b;

    invoke-direct {v8, v4}, Lc/d/a/a/a/d/c$b;-><init>(Landroid/content/Context;)V

    if-eqz p4, :cond_1

    const-string v0, "\u5e94\u7528\u5b89\u88c5\u786e\u8ba4"

    goto :goto_1

    :cond_1
    const-string v0, "\u9000\u51fa\u786e\u8ba4"

    .line 54
    :goto_1
    invoke-virtual {v8, v0}, Lc/d/a/a/a/d/c$b;->a(Ljava/lang/String;)Lc/d/a/a/a/d/c$b;

    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/Object;

    iget-object v1, v6, Lcom/ss/android/downloadlib/a$h/a;->e:Ljava/lang/String;

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u521a\u521a\u4e0b\u8f7d\u7684\u5e94\u7528"

    goto :goto_2

    :cond_2
    iget-object v1, v6, Lcom/ss/android/downloadlib/a$h/a;->e:Ljava/lang/String;

    :goto_2
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%1$s\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u7acb\u5373\u5b89\u88c5\uff1f"

    .line 56
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lc/d/a/a/a/d/c$b;->b(Ljava/lang/String;)Lc/d/a/a/a/d/c$b;

    const-string v0, "\u7acb\u5373\u5b89\u88c5"

    .line 57
    invoke-virtual {v8, v0}, Lc/d/a/a/a/d/c$b;->c(Ljava/lang/String;)Lc/d/a/a/a/d/c$b;

    if-eqz p4, :cond_3

    const-string v0, "\u6682\u4e0d\u5b89\u88c5"

    goto :goto_3

    :cond_3
    new-array v0, v9, [Ljava/lang/Object;

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "\u9000\u51fa%1$s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_3
    invoke-virtual {v8, v0}, Lc/d/a/a/a/d/c$b;->d(Ljava/lang/String;)Lc/d/a/a/a/d/c$b;

    .line 60
    invoke-virtual {v8, v2}, Lc/d/a/a/a/d/c$b;->a(Z)Lc/d/a/a/a/d/c$b;

    iget-object v0, v6, Lcom/ss/android/downloadlib/a$h/a;->g:Ljava/lang/String;

    .line 61
    invoke-static {v4, v0}, Lcom/ss/android/downloadlib/e/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Lc/d/a/a/a/d/c$b;->a(Landroid/graphics/drawable/Drawable;)Lc/d/a/a/a/d/c$b;

    new-instance v10, Lcom/ss/android/downloadlib/a$e/a$a;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/downloadlib/a$e/a$a;-><init>(Lcom/ss/android/downloadlib/a$e/a;Lcom/ss/android/downloadlib/a$h/a;Lorg/json/JSONObject;Landroid/content/Context;Lcom/ss/android/downloadlib/a$e/a$b;)V

    .line 62
    invoke-virtual {v8, v10}, Lc/d/a/a/a/d/c$b;->a(Lc/d/a/a/a/d/c$c;)Lc/d/a/a/a/d/c$b;

    .line 63
    invoke-virtual {v8, v9}, Lc/d/a/a/a/d/c$b;->a(I)Lc/d/a/a/a/d/c$b;

    .line 64
    invoke-virtual {v8}, Lc/d/a/a/a/d/c$b;->a()Lc/d/a/a/a/d/c;

    move-result-object v0

    .line 65
    invoke-interface {v7, v0}, Lc/d/a/a/a/a/i;->b(Lc/d/a/a/a/d/c;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v9, 0x1

    .line 66
    iget-wide v10, v6, Lcom/ss/android/downloadlib/a$h/a;->b:J

    iget-object v12, v6, Lcom/ss/android/downloadlib/a$h/a;->f:Ljava/lang/String;

    iget-wide v13, v6, Lcom/ss/android/downloadlib/a$h/a;->c:J

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-string v7, "exit_warn"

    const-string v8, "show"

    invoke-static/range {v7 .. v17}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V

    .line 67
    iget-object v0, v6, Lcom/ss/android/downloadlib/a$h/a;->d:Ljava/lang/String;

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ss/android/downloadlib/a$e/a;->c:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v1, p0

    :goto_4
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lc/d/a/b/a/f/c;
    .locals 13

    .line 29
    invoke-static {p1}, Lcom/ss/android/downloadlib/i;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/i;->b()J

    move-result-wide v0

    .line 30
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->h()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "enable_miniapp_dialog"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v2

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 32
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 33
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/d/a/b/a/f/c;

    if-eqz v8, :cond_2

    .line 34
    invoke-virtual {v8}, Lc/d/a/b/a/f/c;->J0()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/ss/android/downloadlib/e/h;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 35
    :cond_2
    invoke-virtual {v8}, Lc/d/a/b/a/f/c;->x0()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ss/android/downloadlib/e/h;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    .line 36
    :cond_3
    new-instance v9, Ljava/io/File;

    invoke-virtual {v8}, Lc/d/a/b/a/f/c;->x0()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    cmp-long v11, v9, v0

    if-gez v11, :cond_4

    goto :goto_0

    .line 38
    :cond_4
    invoke-virtual {v8}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 39
    invoke-virtual {v8}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object v11

    .line 40
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "isMiniApp"

    .line 41
    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v11, :cond_1

    cmp-long v11, v6, v4

    if-nez v11, :cond_5

    goto :goto_1

    :cond_5
    cmp-long v11, v9, v6

    if-lez v11, :cond_1

    :goto_1
    move-object v3, v8

    move-wide v6, v9

    goto :goto_0

    :catch_0
    move-exception v8

    .line 42
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_6
    return-object v3
.end method

.method public a(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 43
    :goto_0
    iget-object v2, v0, Lcom/ss/android/downloadlib/a$e/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    const-string v3, "key_uninstalled_list"

    const-string v4, "sp_ad_install_back_dialog"

    if-ge v1, v2, :cond_1

    .line 44
    iget-object v2, v0, Lcom/ss/android/downloadlib/a$e/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/downloadlib/a$h/a;

    if-eqz v2, :cond_0

    .line 45
    iget-wide v5, v2, Lcom/ss/android/downloadlib/a$h/a;->b:J

    cmp-long v2, v5, p3

    if-nez v2, :cond_0

    .line 46
    iget-object v2, v0, Lcom/ss/android/downloadlib/a$e/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Lcom/ss/android/downloadlib/a$h/a;

    move-object v7, v5

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v7 .. v17}, Lcom/ss/android/downloadlib/a$h/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v1, v0, Lcom/ss/android/downloadlib/a$e/a;->e:Lcom/ss/android/downloadlib/a$e/b;

    iget-object v2, v0, Lcom/ss/android/downloadlib/a$e/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v4, v3, v2}, Lcom/ss/android/downloadlib/a$e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, v0, Lcom/ss/android/downloadlib/a$e/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/ss/android/downloadlib/a$h/a;

    move-object v7, v2

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v7 .. v17}, Lcom/ss/android/downloadlib/a$h/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v1, v0, Lcom/ss/android/downloadlib/a$e/a;->e:Lcom/ss/android/downloadlib/a$e/b;

    iget-object v2, v0, Lcom/ss/android/downloadlib/a$e/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v4, v3, v2}, Lcom/ss/android/downloadlib/a$e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/ss/android/downloadlib/a$h/a;ZLcom/ss/android/downloadlib/a$e/a$b;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$e/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 24
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/ss/android/downloadlib/a$e/a;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/a$h/a;Lcom/ss/android/downloadlib/a$e/a$b;Z)V

    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, Lcom/ss/android/downloadlib/a$e/a;->b:Z

    .line 26
    invoke-static {p1}, Lcom/ss/android/downloadlib/i;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/i;->c()V

    .line 27
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$e/a;->e:Lcom/ss/android/downloadlib/a$e/b;

    iget-object p2, p0, Lcom/ss/android/downloadlib/a$e/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string p3, "sp_ad_install_back_dialog"

    const-string p4, "key_uninstalled_list"

    invoke-virtual {p1, p3, p4, p2}, Lcom/ss/android/downloadlib/a$e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 28
    sget-object p1, Lcom/ss/android/downloadlib/a$e/a;->f:Ljava/lang/String;

    const-string p2, "tryShowInstallDialog isShow:true"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/ss/android/downloadlib/a$h/a;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$e/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$e/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/downloadlib/a$h/a;

    if-eqz v1, :cond_1

    .line 71
    iget-wide v1, v1, Lcom/ss/android/downloadlib/a$h/a;->b:J

    iget-wide v3, p1, Lcom/ss/android/downloadlib/a$h/a;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$e/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$e/a;->e:Lcom/ss/android/downloadlib/a$e/b;

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$e/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "sp_name_installed_app"

    const-string v2, "key_installed_list"

    invoke-virtual {p1, v1, v2, v0}, Lcom/ss/android/downloadlib/a$e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method public a(Landroid/content/Context;ZLcom/ss/android/downloadlib/a$e/a$b;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 4
    sget-object v4, Lcom/ss/android/downloadlib/a$e/a;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tryShowInstallDialog canBackRefresh:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 5
    iget-boolean v4, v0, Lcom/ss/android/downloadlib/a$e/a;->b:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return v5

    .line 6
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/ss/android/downloadlib/a$e/a;->a(Landroid/content/Context;)Lc/d/a/b/a/f/c;

    move-result-object v4

    if-nez v4, :cond_1

    .line 7
    iget-object v7, v0, Lcom/ss/android/downloadlib/a$e/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    return v5

    :cond_1
    const/4 v7, 0x1

    if-eqz v4, :cond_2

    .line 8
    iget-object v8, v0, Lcom/ss/android/downloadlib/a$e/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 9
    new-instance v5, Lcom/ss/android/downloadlib/a$h/a;

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->q0()I

    move-result v6

    int-to-long v10, v6

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->J0()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->s0()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->x0()Ljava/lang/String;

    move-result-object v19

    move-object v9, v5

    invoke-direct/range {v9 .. v19}, Lcom/ss/android/downloadlib/a$h/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/ss/android/downloadlib/a$e/a;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/a$h/a;ZLcom/ss/android/downloadlib/a$e/a$b;)V

    return v7

    :cond_2
    const-wide/16 v8, 0x0

    if-eqz v4, :cond_3

    .line 11
    new-instance v8, Ljava/io/File;

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->x0()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 13
    :cond_3
    iget-object v10, v0, Lcom/ss/android/downloadlib/a$e/a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v10

    .line 14
    :cond_4
    :goto_0
    invoke-interface {v10}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 15
    invoke-interface {v10}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ss/android/downloadlib/a$h/a;

    if-eqz v11, :cond_5

    .line 16
    iget-object v12, v11, Lcom/ss/android/downloadlib/a$h/a;->d:Ljava/lang/String;

    invoke-static {v1, v12}, Lcom/ss/android/downloadlib/e/h;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    :cond_5
    iget-object v12, v11, Lcom/ss/android/downloadlib/a$h/a;->g:Ljava/lang/String;

    invoke-static {v12}, Lcom/ss/android/downloadlib/e/h;->a(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_0

    .line 17
    :cond_6
    new-instance v5, Ljava/io/File;

    iget-object v10, v11, Lcom/ss/android/downloadlib/a$h/a;->g:Ljava/lang/String;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v5, v12, v8

    if-ltz v5, :cond_7

    .line 19
    invoke-virtual {v0, v1, v11, v2, v3}, Lcom/ss/android/downloadlib/a$e/a;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/a$h/a;ZLcom/ss/android/downloadlib/a$e/a$b;)V

    goto :goto_1

    .line 20
    :cond_7
    new-instance v5, Lcom/ss/android/downloadlib/a$h/a;

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->q0()I

    move-result v8

    int-to-long v13, v8

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->J0()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->s0()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->x0()Ljava/lang/String;

    move-result-object v22

    move-object v12, v5

    invoke-direct/range {v12 .. v22}, Lcom/ss/android/downloadlib/a$h/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/ss/android/downloadlib/a$e/a;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/a$h/a;ZLcom/ss/android/downloadlib/a$e/a$b;)V

    :goto_1
    move v5, v7

    .line 22
    :cond_8
    sget-object v1, Lcom/ss/android/downloadlib/a$e/a;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryShowInstallDialog isShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return v5
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$e/a;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lcom/ss/android/downloadlib/a$e/a;->c:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$e/a;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iput-object v1, p0, Lcom/ss/android/downloadlib/a$e/a;->c:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method
