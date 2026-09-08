.class Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$b;
.super Ljava/lang/Object;
.source "DownloadHandlerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;->a(Lcom/ss/android/socialbase/appdownloader/c$g;Lc/d/a/b/a/f/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/f/c;

.field final synthetic b:Lcom/ss/android/socialbase/appdownloader/c$g;

.field final synthetic c:Lc/d/a/b/a/c/g0;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;Lc/d/a/b/a/f/c;Lcom/ss/android/socialbase/appdownloader/c$g;Lc/d/a/b/a/c/g0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$b;->a:Lc/d/a/b/a/f/c;

    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$b;->b:Lcom/ss/android/socialbase/appdownloader/c$g;

    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$b;->c:Lc/d/a/b/a/c/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$b;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$b;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    .line 3
    :try_start_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 4
    :try_start_2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/b;->a()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$b;->b:Lcom/ss/android/socialbase/appdownloader/c$g;

    if-eqz v1, :cond_1

    .line 8
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$b;->b:Lcom/ss/android/socialbase/appdownloader/c$g;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$b;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v4

    const/4 v5, 0x3

    const/4 v7, -0x3

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$b;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->W()J

    move-result-wide v8

    move-object v6, v0

    invoke-interface/range {v3 .. v9}, Lcom/ss/android/socialbase/appdownloader/c$g;->a(IILjava/lang/String;IJ)V

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$b;->c:Lc/d/a/b/a/c/g0;

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$b;->c:Lc/d/a/b/a/c/g0;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService$b;->a:Lc/d/a/b/a/f/c;

    invoke-interface {v1, v3, v4, v0, v2}, Lc/d/a/b/a/c/g0;->a(ILc/d/a/b/a/f/c;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
