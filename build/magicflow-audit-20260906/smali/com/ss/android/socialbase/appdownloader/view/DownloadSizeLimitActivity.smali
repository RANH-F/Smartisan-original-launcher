.class public Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;
.super Landroid/app/Activity;
.source "DownloadSizeLimitActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Lcom/ss/android/socialbase/appdownloader/c$k;

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Intent;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->b:Ljava/util/Queue;

    return-void
.end method

.method private a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->a:Lcom/ss/android/socialbase/appdownloader/c$k;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->c:Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->c:Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "extra_click_download_ids"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->g(I)Lc/d/a/b/a/f/c;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->b()V

    return-void

    .line 8
    :cond_2
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    iput v2, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->e:I

    .line 9
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->H0()Z

    move-result v2

    iput-boolean v2, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->d:Z

    .line 10
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v2

    .line 11
    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "appdownloader_button_queue_for_wifi"

    .line 12
    invoke-static {p0, v2}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 13
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/socialbase/appdownloader/c;->a()Lcom/ss/android/socialbase/appdownloader/c$f;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 15
    invoke-interface {v4, p0}, Lcom/ss/android/socialbase/appdownloader/c$f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/appdownloader/c$l;

    move-result-object v4

    if-nez v4, :cond_3

    .line 16
    new-instance v4, Lcom/ss/android/socialbase/appdownloader/d/a;

    invoke-direct {v4, p0}, Lcom/ss/android/socialbase/appdownloader/d/a;-><init>(Landroid/content/Context;)V

    :cond_3
    if-eqz v4, :cond_5

    .line 17
    iget-boolean v5, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->d:Z

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v5, :cond_4

    const-string v5, "appdownloader_wifi_required_title"

    .line 18
    invoke-static {p0, v5}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const-string v8, "appdownloader_wifi_required_body"

    .line 19
    invoke-static {p0, v8}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 20
    invoke-static {p0, v2}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v9, "appdownloader_button_cancel_download"

    .line 21
    invoke-static {p0, v9}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 22
    invoke-interface {v4, v5}, Lcom/ss/android/socialbase/appdownloader/c$l;->a(I)Lcom/ss/android/socialbase/appdownloader/c$l;

    move-result-object v5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v1

    aput-object v3, v7, v6

    .line 23
    invoke-virtual {p0, v8, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/ss/android/socialbase/appdownloader/c$l;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/c$l;

    move-result-object v0

    .line 24
    invoke-interface {v0, v2, p0}, Lcom/ss/android/socialbase/appdownloader/c$l;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c$l;

    move-result-object v0

    .line 25
    invoke-interface {v0, v9, p0}, Lcom/ss/android/socialbase/appdownloader/c$l;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c$l;

    goto :goto_0

    :cond_4
    const-string v5, "appdownloader_wifi_recommended_title"

    .line 26
    invoke-static {p0, v5}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const-string v8, "appdownloader_wifi_recommended_body"

    .line 27
    invoke-static {p0, v8}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    const-string v9, "appdownloader_button_start_now"

    .line 28
    invoke-static {p0, v9}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 29
    invoke-static {p0, v2}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 30
    invoke-interface {v4, v5}, Lcom/ss/android/socialbase/appdownloader/c$l;->a(I)Lcom/ss/android/socialbase/appdownloader/c$l;

    move-result-object v5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v1

    aput-object v3, v7, v6

    .line 31
    invoke-virtual {p0, v8, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/ss/android/socialbase/appdownloader/c$l;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/c$l;

    move-result-object v0

    .line 32
    invoke-interface {v0, v9, p0}, Lcom/ss/android/socialbase/appdownloader/c$l;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c$l;

    move-result-object v0

    .line 33
    invoke-interface {v0, v2, p0}, Lcom/ss/android/socialbase/appdownloader/c$l;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c$l;

    .line 34
    :goto_0
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity$a;-><init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;)V

    invoke-interface {v4, v0}, Lcom/ss/android/socialbase/appdownloader/c$l;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/ss/android/socialbase/appdownloader/c$l;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c$l;->a()Lcom/ss/android/socialbase/appdownloader/c$k;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->a:Lcom/ss/android/socialbase/appdownloader/c$k;

    :cond_5
    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->a:Lcom/ss/android/socialbase/appdownloader/c$k;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->d:Z

    .line 3
    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->e:I

    .line 4
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->a()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->d:Z

    if-eqz p1, :cond_0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 2
    iget p1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->e:I

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    iget p2, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->e:I

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->i(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->d:Z

    if-nez p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    iget p2, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->e:I

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->j(I)V

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->b()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->b:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->a()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->a:Lcom/ss/android/socialbase/appdownloader/c$k;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c$k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadSizeLimitActivity;->a:Lcom/ss/android/socialbase/appdownloader/c$k;

    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c$k;->a()V

    :cond_1
    return-void
.end method
