.class Lcom/ss/android/downloadlib/d$d$a;
.super Landroid/os/AsyncTask;
.source "NewDownloadCompletedEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/d$d;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lc/d/a/b/a/f/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ss/android/downloadlib/d$d;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/d$d;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/d$d$a;->c:Lcom/ss/android/downloadlib/d$d;

    iput-object p2, p0, Lcom/ss/android/downloadlib/d$d$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ss/android/downloadlib/d$d$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private a(Lc/d/a/b/a/f/c;Ljava/lang/String;)Z
    .locals 4

    .line 16
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->J0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 17
    :cond_0
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/d$d$a;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/ss/android/downloadlib/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    .line 19
    :cond_1
    invoke-static {p1}, Lcom/ss/android/downloadlib/e/c;->a(Lc/d/a/b/a/f/c;)Lcom/ss/android/downloadlib/a$h/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 20
    invoke-static {}, Lcom/ss/android/downloadlib/d$c;->b()Lcom/ss/android/downloadlib/d$c;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/d$d$a;->b:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/ss/android/downloadlib/d$c;->b(Ljava/lang/Long;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lc/d/a/b/a/f/c;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/ss/android/downloadlib/e/c;->a(Lc/d/a/b/a/f/c;)Lcom/ss/android/downloadlib/a$h/b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/d$c;->b()Lcom/ss/android/downloadlib/d$c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/a$h/b;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/d$c;->a(Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lc/d/a/b/a/f/c;
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/ss/android/downloadlib/d$d$a;->a:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ss/android/downloadlib/d$d$a;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/d$d$a;->c:Lcom/ss/android/downloadlib/d$d;

    invoke-static {p1}, Lcom/ss/android/downloadlib/d$d;->a(Lcom/ss/android/downloadlib/d$d;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/a/f/c;

    if-eqz v1, :cond_2

    .line 5
    iget-object v2, p0, Lcom/ss/android/downloadlib/d$d$a;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/ss/android/downloadlib/d$d$a;->a(Lc/d/a/b/a/f/c;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    iget-object v3, p0, Lcom/ss/android/downloadlib/d$d$a;->c:Lcom/ss/android/downloadlib/d$d;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v4

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/ss/android/downloadlib/d$d$a;->b:Ljava/lang/String;

    const/4 v7, -0x3

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->W()J

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/ss/android/downloadlib/d$d;->a(IILjava/lang/String;IJ)V

    .line 7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p1

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/notification/b;->a(I)V

    .line 8
    invoke-static {}, Lcom/ss/android/downloadlib/h;->a()Lcom/ss/android/downloadlib/h;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/d$d$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/ss/android/downloadlib/h;->b(Lc/d/a/b/a/f/c;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->J0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ss/android/downloadlib/d$d$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->J0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/ss/android/downloadlib/d$d$a;->c:Lcom/ss/android/downloadlib/d$d;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/d$d$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v2, v3}, Lcom/ss/android/downloadlib/d$d;->a(Lcom/ss/android/downloadlib/d$d;ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_3
    invoke-direct {p0, v1}, Lcom/ss/android/downloadlib/d$d$a;->b(Lc/d/a/b/a/f/c;)V

    .line 12
    invoke-static {v1}, Lcom/ss/android/downloadlib/a$j$c;->b(Lc/d/a/b/a/f/c;)V

    return-object v1

    :cond_4
    :goto_0
    return-object v0
.end method

.method protected a(Lc/d/a/b/a/f/c;)V
    .locals 2

    .line 13
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 14
    invoke-static {}, Lcom/ss/android/downloadlib/h;->a()Lcom/ss/android/downloadlib/h;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ss/android/downloadlib/d$d$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadlib/h;->b(Lc/d/a/b/a/f/c;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/a$g;->b()Lcom/ss/android/downloadlib/a$g;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/d$d$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/a$g;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/d$d$a;->a([Ljava/lang/Void;)Lc/d/a/b/a/f/c;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lc/d/a/b/a/f/c;

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/d$d$a;->a(Lc/d/a/b/a/f/c;)V

    return-void
.end method
