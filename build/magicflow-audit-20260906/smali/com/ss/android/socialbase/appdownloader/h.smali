.class public Lcom/ss/android/socialbase/appdownloader/h;
.super Lc/d/a/b/a/c/k;
.source "DownloadNotificationListener.java"


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/ss/android/socialbase/downloader/notification/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/d/a/b/a/c/k;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/h;->b:Landroid/content/Context;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/h;->b:Landroid/content/Context;

    .line 4
    :goto_0
    iput p2, p0, Lcom/ss/android/socialbase/appdownloader/h;->c:I

    .line 5
    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/h;->d:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/h;->e:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/ss/android/socialbase/appdownloader/h;->f:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/ss/android/socialbase/appdownloader/h;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/notification/a;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lc/d/a/b/a/c/k;-><init>()V

    .line 10
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->b:Landroid/content/Context;

    .line 11
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/h;->h:Lcom/ss/android/socialbase/downloader/notification/a;

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/h;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/h;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/downloader/notification/a;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->h:Lcom/ss/android/socialbase/downloader/notification/a;

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/h;->b:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 3
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/e;

    iget v3, p0, Lcom/ss/android/socialbase/appdownloader/h;->c:I

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/h;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/ss/android/socialbase/appdownloader/h;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/ss/android/socialbase/appdownloader/h;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/ss/android/socialbase/appdownloader/h;->g:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ss/android/socialbase/appdownloader/e;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->h:Lcom/ss/android/socialbase/downloader/notification/a;

    return-object v0
.end method

.method public a(Lc/d/a/b/a/f/c;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lc/d/a/b/a/c/k;->a(Lc/d/a/b/a/f/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->b:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Lc/d/a/b/a/c/k;->a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p2}, Lc/d/a/b/a/d/a;->a()I

    move-result v0

    const/16 v1, 0x3f5

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lc/d/a/b/a/d/a;->a()I

    move-result p2

    const/16 v0, 0x400

    if-ne p2, v0, :cond_2

    .line 10
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result p1

    const-string v0, "extra_click_download_ids"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/h;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 13
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/h;->b:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lc/d/a/b/a/f/c;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lc/d/a/b/a/c/k;->b(Lc/d/a/b/a/f/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lc/d/a/b/a/f/c;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lc/d/a/b/a/c/k;->c(Lc/d/a/b/a/f/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g(Lc/d/a/b/a/f/c;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lc/d/a/b/a/c/k;->g(Lc/d/a/b/a/f/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h(Lc/d/a/b/a/f/c;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-super {p0, p1}, Lc/d/a/b/a/c/k;->h(Lc/d/a/b/a/f/c;)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->E0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->F0()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->I0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->z()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;IZ)I

    move-result v0

    .line 6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/ss/android/socialbase/appdownloader/h$a;

    invoke-direct {v2, p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/h$a;-><init>(Lcom/ss/android/socialbase/appdownloader/h;Lc/d/a/b/a/f/c;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method
