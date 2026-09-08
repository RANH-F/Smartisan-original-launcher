.class Lcom/ss/android/downloadlib/a$m$b;
.super Landroid/os/AsyncTask;
.source "CommonDownloadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lc/d/a/b/a/f/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/a$m;


# direct methods
.method private constructor <init>(Lcom/ss/android/downloadlib/a$m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/a$m;Lcom/ss/android/downloadlib/a$m$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$m$b;-><init>(Lcom/ss/android/downloadlib/a$m;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lc/d/a/b/a/f/c;
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    aget-object v0, p1, v2

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    aget-object p1, p1, v2

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$m;->b(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/a/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$m;->b(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/a/a/c/d;

    move-result-object v0

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a$m;->b(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/a/a/c/d;

    move-result-object v1

    invoke-interface {v1}, Lc/d/a/a/a/c/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Ljava/lang/String;Ljava/lang/String;)Lc/d/a/b/a/f/c;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    :goto_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Ljava/lang/String;)Lc/d/a/b/a/f/c;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Lc/d/a/b/a/f/c;)V
    .locals 4

    .line 7
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$m;->b(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/a/a/c/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$m;->b(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/a/a/c/d;

    move-result-object v0

    invoke-interface {v0}, Lc/d/a/a/a/c/d;->p()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a$m;->b(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/a/a/c/d;

    move-result-object v1

    invoke-interface {v1}, Lc/d/a/a/a/c/d;->l()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a$m;->b(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/a/a/c/d;

    move-result-object v2

    invoke-interface {v2}, Lc/d/a/a/a/c/d;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/h;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/ss/android/downloadlib/a$h/d;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$h/d;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Lc/d/a/b/a/f/c;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->k(I)V

    .line 13
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$m;->c(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/b/a/f/c;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    .line 14
    invoke-static {v0}, Lcom/ss/android/downloadlib/a$m;->c(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/b/a/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    const/4 v2, -0x4

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$m;->c(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/b/a/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/a$m;->a(Lcom/ss/android/downloadlib/a$m;Lc/d/a/b/a/f/c;)Lc/d/a/b/a/f/c;

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/a$m;->a(Lcom/ss/android/downloadlib/a$m;Lc/d/a/b/a/f/c;)Lc/d/a/b/a/f/c;

    .line 17
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a$m;->c(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/b/a/f/c;

    move-result-object v1

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a$m;->d(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/b/a/c/d0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILc/d/a/b/a/c/d0;)V

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$m;->g(Lcom/ss/android/downloadlib/a$m;)Lcom/ss/android/downloadlib/a$o;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a$m;->e(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/a/a/d/e;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v3}, Lcom/ss/android/downloadlib/a$m;->f(Lcom/ss/android/downloadlib/a$m;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/ss/android/downloadlib/a$o;->a(Landroid/content/Context;Lc/d/a/b/a/f/c;Lc/d/a/a/a/d/e;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {p1}, Lcom/ss/android/downloadlib/a$m;->c(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 20
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a$m;->c(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/b/a/f/c;

    move-result-object v2

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/f;->k(I)V

    :cond_5
    if-eqz v0, :cond_7

    .line 21
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {p1}, Lcom/ss/android/downloadlib/a$m;->c(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-nez p1, :cond_6

    .line 22
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    new-instance v0, Lc/d/a/b/a/f/c$b;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a$m;->b(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/a/a/c/d;

    move-result-object v1

    invoke-interface {v1}, Lc/d/a/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/d/a/b/a/f/c$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/d/a/b/a/f/c$b;->a()Lc/d/a/b/a/f/c;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/downloadlib/a$m;->a(Lcom/ss/android/downloadlib/a$m;Lc/d/a/b/a/f/c;)Lc/d/a/b/a/f/c;

    .line 23
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {p1}, Lcom/ss/android/downloadlib/a$m;->c(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/b/a/f/c;

    move-result-object p1

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Lc/d/a/b/a/f/c;->a(I)V

    .line 24
    :cond_6
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {p1}, Lcom/ss/android/downloadlib/a$m;->g(Lcom/ss/android/downloadlib/a$m;)Lcom/ss/android/downloadlib/a$o;

    move-result-object p1

    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a$m;->c(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/b/a/f/c;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v2}, Lcom/ss/android/downloadlib/a$m;->e(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/a/a/d/e;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v3}, Lcom/ss/android/downloadlib/a$m;->f(Lcom/ss/android/downloadlib/a$m;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ss/android/downloadlib/a$o;->a(Landroid/content/Context;Lc/d/a/b/a/f/c;Lc/d/a/a/a/d/e;Ljava/util/Map;)V

    goto :goto_2

    .line 25
    :cond_7
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {p1}, Lcom/ss/android/downloadlib/a$m;->f(Lcom/ss/android/downloadlib/a$m;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 26
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {p1}, Lcom/ss/android/downloadlib/a$m;->f(Lcom/ss/android/downloadlib/a$m;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/a/a/c/e;

    .line 27
    invoke-interface {v0}, Lc/d/a/a/a/c/e;->a()V

    goto :goto_1

    .line 28
    :cond_8
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {p1, v1}, Lcom/ss/android/downloadlib/a$m;->a(Lcom/ss/android/downloadlib/a$m;Lc/d/a/b/a/f/c;)Lc/d/a/b/a/f/c;

    .line 29
    :goto_2
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {p1}, Lcom/ss/android/downloadlib/a$m;->g(Lcom/ss/android/downloadlib/a$m;)Lcom/ss/android/downloadlib/a$o;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m$b;->a:Lcom/ss/android/downloadlib/a$m;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$m;->e(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/a/a/d/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/a$o;->a(Lc/d/a/a/a/d/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_3
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a$m$b;->a([Ljava/lang/String;)Lc/d/a/b/a/f/c;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lc/d/a/b/a/f/c;

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a$m$b;->a(Lc/d/a/b/a/f/c;)V

    return-void
.end method
