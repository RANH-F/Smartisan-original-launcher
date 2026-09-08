.class Lcom/ss/android/socialbase/downloader/downloader/c$a;
.super Ljava/lang/Object;
.source "DownloadProcessDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lc/d/a/b/a/f/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/downloader/n;

.field final synthetic b:Lc/d/a/b/a/f/d;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/c;Lcom/ss/android/socialbase/downloader/downloader/n;Lc/d/a/b/a/f/d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/c$a;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/c$a;->b:Lc/d/a/b/a/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/c$a;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/c$a;->b:Lc/d/a/b/a/f/d;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(Lc/d/a/b/a/f/d;)V

    return-void
.end method
