.class public Lcom/ss/android/downloadlib/a$j$c;
.super Ljava/lang/Object;
.source "DownloadOptimizationManager.java"


# static fields
.field private static volatile b:Lcom/ss/android/downloadlib/a$j$c;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/ss/android/downloadlib/a$j$c;->a:J

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/a$j$c;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$j$c;->b:Lcom/ss/android/downloadlib/a$j$c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/downloadlib/a$j$c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/a$j$c;->b:Lcom/ss/android/downloadlib/a$j$c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/downloadlib/a$j$c;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/a$j$c;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/a$j$c;->b:Lcom/ss/android/downloadlib/a$j$c;

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
    sget-object v0, Lcom/ss/android/downloadlib/a$j$c;->b:Lcom/ss/android/downloadlib/a$j$c;

    return-object v0
.end method

.method public static a(Lcom/ss/android/downloadad/a/c/a;Landroid/content/Context;)V
    .locals 4

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/c/a;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/c/a;->k()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->g(I)Lc/d/a/b/a/f/c;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 12
    :cond_1
    invoke-static {p0}, Lcom/ss/android/downloadlib/a$j$c;->b(Lc/d/a/b/a/f/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static b(Lc/d/a/b/a/f/c;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->h()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "delete_file_after_install"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 2
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lc/d/a/b/a/f/c;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/32 v0, 0x927c0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ss/android/downloadlib/a$j$c;->a:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/a$j$c;->a:J

    .line 9
    new-instance v0, Lcom/ss/android/downloadlib/a$j$b;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a$j$b;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lc/d/a/b/a/f/c;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/e/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method
