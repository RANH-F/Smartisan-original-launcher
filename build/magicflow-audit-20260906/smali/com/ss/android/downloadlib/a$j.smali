.class public Lcom/ss/android/downloadlib/a$j;
.super Ljava/lang/Object;
.source "AdDownloadSecurityManager.java"


# static fields
.field private static volatile b:Lcom/ss/android/downloadlib/a$j;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/android/downloadlib/a$j;->a:Landroid/os/Handler;

    return-void
.end method

.method public static b()Lcom/ss/android/downloadlib/a$j;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$j;->b:Lcom/ss/android/downloadlib/a$j;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/downloadlib/a$j;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/a$j;->b:Lcom/ss/android/downloadlib/a$j;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/downloadlib/a$j;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/a$j;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/a$j;->b:Lcom/ss/android/downloadlib/a$j;

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
    sget-object v0, Lcom/ss/android/downloadlib/a$j;->b:Lcom/ss/android/downloadlib/a$j;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lc/d/a/b/a/f/c;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a$j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$j;->a:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$j;->a:Landroid/os/Handler;

    .line 8
    :cond_2
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    invoke-virtual {p2}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->i(I)V

    .line 9
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$j;->a:Landroid/os/Handler;

    new-instance v0, Lcom/ss/android/downloadlib/a$j$a;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/downloadlib/a$j$a;-><init>(Lcom/ss/android/downloadlib/a$j;Lc/d/a/b/a/f/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a()Z
    .locals 3

    .line 10
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->h()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "forbid_invalidte_download_file_install"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method
