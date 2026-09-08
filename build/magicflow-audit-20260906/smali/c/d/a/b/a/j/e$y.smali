.class final Lc/d/a/b/a/j/e$y;
.super Lc/d/a/b/a/c/l$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/j/e;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)Lc/d/a/b/a/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/downloader/i;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/downloader/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/j/e$y;->a:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-direct {p0}, Lc/d/a/b/a/c/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/j/e$y;->a:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(J)I

    move-result p1

    return p1
.end method
