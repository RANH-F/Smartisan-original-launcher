.class Lcom/ss/android/socialbase/appdownloader/h$a;
.super Ljava/lang/Object;
.source "DownloadNotificationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/h;->h(Lc/d/a/b/a/f/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/f/c;

.field final synthetic b:I

.field final synthetic c:Lcom/ss/android/socialbase/appdownloader/h;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/h;Lc/d/a/b/a/f/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/h$a;->c:Lcom/ss/android/socialbase/appdownloader/h;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/h$a;->a:Lc/d/a/b/a/f/c;

    iput p3, p0, Lcom/ss/android/socialbase/appdownloader/h$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/c;->b()Lcom/ss/android/socialbase/appdownloader/c$g;

    move-result-object v1

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h$a;->c:Lcom/ss/android/socialbase/appdownloader/h;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/h;->a(Lcom/ss/android/socialbase/appdownloader/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/h$a;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lc/d/a/b/a/c/g0;

    move-result-object v0

    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    .line 3
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/h$a;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/h$a;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/h$a;->c:Lcom/ss/android/socialbase/appdownloader/h;

    invoke-static {v3}, Lcom/ss/android/socialbase/appdownloader/h;->a(Lcom/ss/android/socialbase/appdownloader/h;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/b;->a()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 8
    iget v3, p0, Lcom/ss/android/socialbase/appdownloader/h$a;->b:I

    const/4 v8, 0x1

    if-eq v3, v8, :cond_1

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/h$a;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/h$a;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->J0()Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v9, v2

    if-eqz v1, :cond_2

    .line 10
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/h$a;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    const/4 v3, 0x1

    const/4 v5, -0x3

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/h$a;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->W()J

    move-result-wide v6

    move-object v4, v9

    invoke-interface/range {v1 .. v7}, Lcom/ss/android/socialbase/appdownloader/c$g;->a(IILjava/lang/String;IJ)V

    :cond_2
    if-eqz v0, :cond_3

    .line 11
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/h$a;->a:Lc/d/a/b/a/f/c;

    const-string v2, ""

    invoke-interface {v0, v8, v1, v9, v2}, Lc/d/a/b/a/c/g0;->a(ILc/d/a/b/a/f/c;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
