.class Lcom/ss/android/socialbase/appdownloader/c$a;
.super Ljava/lang/Object;
.source "AppDownloader.java"

# interfaces
.implements Lc/d/a/b/a/c/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/c;->a(Lcom/ss/android/socialbase/appdownloader/f;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/appdownloader/c;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/c$a;->a:Lcom/ss/android/socialbase/appdownloader/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/c$a;->a:Lcom/ss/android/socialbase/appdownloader/c;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Lcom/ss/android/socialbase/appdownloader/c;)Lcom/ss/android/socialbase/appdownloader/c$j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/c$a;->a:Lcom/ss/android/socialbase/appdownloader/c;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Lcom/ss/android/socialbase/appdownloader/c;)Lcom/ss/android/socialbase/appdownloader/c$j;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/c$j;->a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V

    :cond_0
    return-void
.end method
