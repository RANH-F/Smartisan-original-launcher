.class Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$c;
.super Ljava/lang/Object;
.source "DownloadTaskDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/f/c;

.field final synthetic b:I

.field final synthetic c:Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;Lc/d/a/b/a/f/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$c;->c:Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$c;->a:Lc/d/a/b/a/f/c;

    iput p3, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/c;->b()Lcom/ss/android/socialbase/appdownloader/c$g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$c;->a:Lc/d/a/b/a/f/c;

    invoke-interface {p1, p2}, Lcom/ss/android/socialbase/appdownloader/c$g;->a(Lc/d/a/b/a/f/c;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    iget p2, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$c;->b:I

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lc/d/a/b/a/c/g0;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 p2, 0xa

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$c;->a:Lc/d/a/b/a/f/c;

    const-string v1, ""

    invoke-interface {p1, p2, v0, v1, v1}, Lc/d/a/b/a/c/g0;->a(ILc/d/a/b/a/f/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    iget p2, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$c;->b:I

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->b(I)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$c;->c:Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
