.class public Lcom/ss/android/socialbase/appdownloader/c;
.super Ljava/lang/Object;
.source "AppDownloader.java"


# static fields
.field private static final o:Ljava/lang/String; = "c"

.field private static volatile p:Lcom/ss/android/socialbase/appdownloader/c; = null

.field private static q:Z = false

.field private static r:Z = false


# instance fields
.field private a:Lcom/ss/android/socialbase/appdownloader/c$f;

.field private b:Lcom/ss/android/socialbase/appdownloader/c$g;

.field private c:Lcom/ss/android/socialbase/appdownloader/c$j;

.field private d:Lcom/ss/android/socialbase/appdownloader/c$m;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

.field private l:Z

.field private m:Z

.field private n:Lcom/ss/android/socialbase/appdownloader/c$i;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x2932e00

    .line 2
    iput-wide v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->f:J

    .line 3
    iput-wide v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->g:J

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->h:I

    .line 5
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->i:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->l:Z

    .line 7
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->m:Z

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/appdownloader/c$h;)Lc/d/a/b/a/c/g0;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 122
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/c$c;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/appdownloader/c$c;-><init>(Lcom/ss/android/socialbase/appdownloader/c;Lcom/ss/android/socialbase/appdownloader/c$h;)V

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/c;)Lcom/ss/android/socialbase/appdownloader/c$j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/c;->c:Lcom/ss/android/socialbase/appdownloader/c$j;

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 4

    .line 16
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->g(I)Lc/d/a/b/a/f/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 17
    :cond_0
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->l(I)Lc/d/a/b/a/c/x;

    move-result-object v3

    .line 21
    invoke-static {p1, v3, p0, v0, v2}, Lcom/ss/android/socialbase/appdownloader/b;->a(ILc/d/a/b/a/c/x;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 22
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.android.package-archive"

    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 25
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/c;->a()Lcom/ss/android/socialbase/appdownloader/c$f;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 26
    instance-of v3, v1, Lcom/ss/android/socialbase/appdownloader/c$d;

    if-eqz v3, :cond_3

    .line 27
    check-cast v1, Lcom/ss/android/socialbase/appdownloader/c$d;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/c$d;->b()Z

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    const/high16 p1, 0x10080000

    .line 28
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_5

    or-int/lit8 p1, p1, 0x1

    .line 29
    :cond_5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method public static m()Lcom/ss/android/socialbase/appdownloader/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/c;->p:Lcom/ss/android/socialbase/appdownloader/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/appdownloader/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/c;->p:Lcom/ss/android/socialbase/appdownloader/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/c;

    invoke-direct {v1}, Lcom/ss/android/socialbase/appdownloader/c;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/appdownloader/c;->p:Lcom/ss/android/socialbase/appdownloader/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/c;->p:Lcom/ss/android/socialbase/appdownloader/c;

    return-object v0
.end method

.method static synthetic n()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method private o()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/ss/android/socialbase/appdownloader/c;->r:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->k:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->k:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    .line 4
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.ss.intent.action.DOWNLOAD_COMPLETE"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 12
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    .line 13
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    .line 14
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/c;->k:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 16
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/c;->k:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 17
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/c;->k:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 18
    sput-boolean v0, Lcom/ss/android/socialbase/appdownloader/c;->r:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/appdownloader/f;)I
    .locals 19

    move-object/from16 v1, p0

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->o()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 37
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->s()Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v6, "User-Agent"

    if-eqz v5, :cond_3

    .line 39
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 40
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v2

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/d/a/b/a/f/e;

    if-eqz v8, :cond_1

    .line 41
    invoke-virtual {v8}, Lc/d/a/b/a/f/e;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lc/d/a/b/a/f/e;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 42
    invoke-virtual {v8}, Lc/d/a/b/a/f/e;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v7, 0x1

    .line 43
    :cond_2
    new-instance v9, Lc/d/a/b/a/f/e;

    invoke-virtual {v8}, Lc/d/a/b/a/f/e;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lc/d/a/b/a/f/e;->b()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v10, v8}, Lc/d/a/b/a/f/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v7, v2

    :cond_4
    if-nez v7, :cond_5

    .line 45
    new-instance v5, Lc/d/a/b/a/f/e;

    sget-object v7, Lcom/ss/android/socialbase/appdownloader/a/a;->a:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lc/d/a/b/a/f/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->p()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    return v2

    .line 49
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->g()Ljava/lang/String;

    move-result-object v6

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->q()Ljava/lang/String;

    move-result-object v7

    .line 51
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->A()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v7, v6}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xff

    if-le v8, v9, :cond_8

    .line 54
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 55
    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    move-object v7, v6

    .line 56
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->A()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".apk"

    .line 57
    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->A()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ss/android/socialbase/appdownloader/b;->d(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v8, "application/vnd.android.package-archive"

    :cond_a
    move-object v15, v8

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->r()Ljava/lang/String;

    move-result-object v8

    .line 59
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->o()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    :cond_b
    move-object v14, v8

    .line 61
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_17

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto/16 :goto_7

    .line 62
    :cond_c
    invoke-static {v5, v14}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->f()Z

    move-result v8

    if-nez v8, :cond_d

    .line 64
    invoke-static {v14, v6}, Lc/d/a/b/a/j/d;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->o()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/ss/android/socialbase/downloader/downloader/f;->g(I)Lc/d/a/b/a/f/c;

    move-result-object v9

    if-nez v9, :cond_d

    const/4 v12, 0x1

    goto :goto_1

    :cond_d
    move v12, v8

    .line 65
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->y()Lc/d/a/b/a/c/d0;

    move-result-object v8

    if-nez v8, :cond_f

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->t()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->u()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 67
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->C()Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 68
    new-instance v8, Lcom/ss/android/socialbase/appdownloader/h;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->C()Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/ss/android/socialbase/appdownloader/h;-><init>(Lcom/ss/android/socialbase/downloader/notification/a;)V

    :cond_f
    move v3, v12

    move/from16 v18, v13

    move-object v4, v14

    goto :goto_2

    .line 69
    :cond_10
    new-instance v16, Lcom/ss/android/socialbase/appdownloader/h;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->o()Landroid/content/Context;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->z()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v8, v16

    move v10, v13

    move-object v11, v7

    move v3, v12

    move-object v12, v14

    move/from16 v18, v13

    move-object v13, v6

    move-object v4, v14

    move-object/from16 v14, v17

    invoke-direct/range {v8 .. v14}, Lcom/ss/android/socialbase/appdownloader/h;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v16

    .line 70
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->i()Lc/d/a/b/a/c/s;

    move-result-object v9

    if-nez v9, :cond_11

    .line 71
    new-instance v9, Lcom/ss/android/socialbase/appdownloader/c$a;

    invoke-direct {v9, v1}, Lcom/ss/android/socialbase/appdownloader/c$a;-><init>(Lcom/ss/android/socialbase/appdownloader/c;)V

    .line 72
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->z()Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 73
    :try_start_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_12

    .line 74
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 75
    :cond_12
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    :goto_3
    const-string v12, "auto_install_with_notification"

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->v()Z

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v12, "auto_install_without_notification"

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->u()Z

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 78
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :catchall_0
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->t()Z

    move-result v11

    if-nez v11, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->u()Z

    move-result v11

    if-eqz v11, :cond_13

    goto :goto_4

    :cond_13
    move v11, v2

    goto :goto_5

    :cond_14
    :goto_4
    const/4 v11, 0x1

    .line 80
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->o()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/ss/android/socialbase/downloader/downloader/f;->b(Landroid/content/Context;)Lc/d/a/b/a/f/d;

    move-result-object v12

    .line 81
    invoke-virtual {v12, v5}, Lc/d/a/b/a/f/d;->c(Ljava/lang/String;)Lc/d/a/b/a/f/d;

    .line 82
    invoke-virtual {v12, v6}, Lc/d/a/b/a/f/d;->a(Ljava/lang/String;)Lc/d/a/b/a/f/d;

    .line 83
    invoke-virtual {v12, v7}, Lc/d/a/b/a/f/d;->b(Ljava/lang/String;)Lc/d/a/b/a/f/d;

    .line 84
    invoke-virtual {v12, v4}, Lc/d/a/b/a/f/d;->d(Ljava/lang/String;)Lc/d/a/b/a/f/d;

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->w()Z

    move-result v4

    invoke-virtual {v12, v4}, Lc/d/a/b/a/f/d;->b(Z)Lc/d/a/b/a/f/d;

    .line 86
    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->a(Ljava/util/List;)Lc/d/a/b/a/f/d;

    .line 87
    invoke-virtual {v12, v9}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/c/s;)Lc/d/a/b/a/f/d;

    const/4 v0, 0x5

    .line 88
    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->a(I)Lc/d/a/b/a/f/d;

    .line 89
    invoke-virtual {v12, v11}, Lc/d/a/b/a/f/d;->d(Z)Lc/d/a/b/a/f/d;

    .line 90
    invoke-virtual {v12, v10}, Lc/d/a/b/a/f/d;->e(Ljava/lang/String;)Lc/d/a/b/a/f/d;

    .line 91
    invoke-virtual {v12, v15}, Lc/d/a/b/a/f/d;->f(Ljava/lang/String;)Lc/d/a/b/a/f/d;

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->M()I

    move-result v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->c(I)Lc/d/a/b/a/f/d;

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->a()I

    move-result v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->b(I)Lc/d/a/b/a/f/d;

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->x()Lc/d/a/b/a/c/d0;

    move-result-object v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/c/d0;)Lc/d/a/b/a/f/d;

    .line 95
    invoke-virtual {v12, v8}, Lc/d/a/b/a/f/d;->b(Lc/d/a/b/a/c/d0;)Lc/d/a/b/a/f/d;

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->j()Lcom/ss/android/socialbase/appdownloader/c$h;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Lcom/ss/android/socialbase/appdownloader/c$h;)Lc/d/a/b/a/c/g0;

    move-result-object v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/c/g0;)Lc/d/a/b/a/f/d;

    .line 97
    invoke-virtual {v12, v3}, Lc/d/a/b/a/f/d;->c(Z)Lc/d/a/b/a/f/d;

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->E()Z

    move-result v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->f(Z)Lc/d/a/b/a/f/d;

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->F()Z

    move-result v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->g(Z)Lc/d/a/b/a/f/d;

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->D()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)Lc/d/a/b/a/f/d;

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->B()Z

    move-result v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->e(Z)Lc/d/a/b/a/f/d;

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->g(Ljava/lang/String;)Lc/d/a/b/a/f/d;

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->h(Ljava/lang/String;)Lc/d/a/b/a/f/d;

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->I()Z

    move-result v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->h(Z)Lc/d/a/b/a/f/d;

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->J()Z

    move-result v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->i(Z)Lc/d/a/b/a/f/d;

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->K()Z

    move-result v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->j(Z)Lc/d/a/b/a/f/d;

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->b()Z

    move-result v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->k(Z)Lc/d/a/b/a/f/d;

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->c()Z

    move-result v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->l(Z)Lc/d/a/b/a/f/d;

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->e()Lc/d/a/b/a/a/g;

    move-result-object v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/a/g;)Lc/d/a/b/a/f/d;

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->h()Lc/d/a/b/a/c/e0;

    move-result-object v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/c/e0;)Lc/d/a/b/a/f/d;

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->L()Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->a(Lcom/ss/android/socialbase/downloader/downloader/r;)Lc/d/a/b/a/f/d;

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->d()Z

    move-result v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->m(Z)Lc/d/a/b/a/f/d;

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->k()Lc/d/a/b/a/c/x;

    move-result-object v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/c/x;)Lc/d/a/b/a/f/d;

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->l()Lc/d/a/b/a/c/d;

    move-result-object v0

    invoke-virtual {v12, v0}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/c/d;)Lc/d/a/b/a/f/d;

    if-eqz v12, :cond_16

    .line 115
    invoke-virtual {v12}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v11, :cond_15

    .line 116
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->m()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->n()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->n()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/i;->a()Z

    move-result v0

    if-nez v0, :cond_15

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->n()Landroid/app/Activity;

    move-result-object v0

    new-instance v4, Lcom/ss/android/socialbase/appdownloader/c$b;

    invoke-direct {v4, v1, v7, v12}, Lcom/ss/android/socialbase/appdownloader/c$b;-><init>(Lcom/ss/android/socialbase/appdownloader/c;Ljava/lang/String;Lc/d/a/b/a/f/d;)V

    invoke-static {v0, v4}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c$n;)V

    goto :goto_6

    .line 118
    :cond_15
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/c;->o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notification permission need not request, start download :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v12}, Lc/d/a/b/a/f/d;->n()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_16
    :goto_6
    return v18

    :cond_17
    :goto_7
    return v2

    :catchall_2
    move-exception v0

    const/4 v3, 0x0

    .line 120
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->h()Lc/d/a/b/a/c/e0;

    move-result-object v4

    new-instance v5, Lc/d/a/b/a/d/a;

    const/16 v6, 0x3eb

    const-string v7, "addDownloadTask"

    invoke-static {v0, v7}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-static {v4, v3, v5, v2}, Lc/d/a/b/a/g/a;->a(Lc/d/a/b/a/c/e0;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V

    .line 121
    sget-object v3, Lcom/ss/android/socialbase/appdownloader/c;->o:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "add download task error:%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_9
    return v2
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Lc/d/a/b/a/f/c;
    .locals 3

    .line 123
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 126
    :cond_1
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Ljava/lang/String;Ljava/lang/String;)Lc/d/a/b/a/f/c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 127
    sget-object p2, Lcom/ss/android/socialbase/appdownloader/c;->o:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "getAppDownloadInfo error:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public a()Lcom/ss/android/socialbase/appdownloader/c$f;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->a:Lcom/ss/android/socialbase/appdownloader/c$f;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/c;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 7
    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/c;->h:I

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 6
    iput-wide p1, p0, Lcom/ss/android/socialbase/appdownloader/c;->f:J

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;II)V
    .locals 0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 31
    :pswitch_1
    :try_start_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(I)V

    goto :goto_0

    .line 32
    :pswitch_2
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->c(I)V

    goto :goto_0

    :pswitch_3
    const/4 p3, 0x1

    .line 33
    invoke-static {p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;IZ)I

    goto :goto_0

    .line 34
    :pswitch_4
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->e(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

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
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/c$f;Lcom/ss/android/socialbase/appdownloader/c$g;Lcom/ss/android/socialbase/appdownloader/c$j;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    .line 8
    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/c;->a:Lcom/ss/android/socialbase/appdownloader/c$f;

    :cond_0
    if-eqz p4, :cond_1

    .line 9
    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/c;->b:Lcom/ss/android/socialbase/appdownloader/c$g;

    :cond_1
    if-eqz p5, :cond_2

    .line 10
    iput-object p5, p0, Lcom/ss/android/socialbase/appdownloader/c;->c:Lcom/ss/android/socialbase/appdownloader/c$j;

    :cond_2
    if-eqz p1, :cond_3

    .line 11
    sget-boolean p2, Lcom/ss/android/socialbase/appdownloader/c;->q:Z

    if-nez p2, :cond_3

    .line 12
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 13
    new-instance p1, Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-direct {p1}, Lcom/ss/android/socialbase/appdownloader/d/b;-><init>()V

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/m;)V

    .line 14
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/c;->o()V

    const/4 p1, 0x1

    .line 15
    sput-boolean p1, Lcom/ss/android/socialbase/appdownloader/c;->q:Z

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/c;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/c;->m:Z

    return-void
.end method

.method public b()Lcom/ss/android/socialbase/appdownloader/c$g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->b:Lcom/ss/android/socialbase/appdownloader/c$g;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/c;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 3
    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/c;->i:I

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/ss/android/socialbase/appdownloader/c;->g:J

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/ss/android/socialbase/appdownloader/c$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->n:Lcom/ss/android/socialbase/appdownloader/c$i;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->m:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->l:Z

    return v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->f:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->g:J

    return-wide v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->h:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->i:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/ss/android/socialbase/appdownloader/c$m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/c;->d:Lcom/ss/android/socialbase/appdownloader/c$m;

    return-object v0
.end method
