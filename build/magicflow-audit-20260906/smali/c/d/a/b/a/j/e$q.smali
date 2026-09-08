.class final Lc/d/a/b/a/j/e$q;
.super Lc/d/a/b/a/c/e$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lcom/ss/android/socialbase/downloader/downloader/r;)Lc/d/a/b/a/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/downloader/r;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$q;->a:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-direct {p0}, Lc/d/a/b/a/c/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)J
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$q;->a:Lcom/ss/android/socialbase/downloader/downloader/r;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(II)J

    move-result-wide p1

    return-wide p1
.end method
