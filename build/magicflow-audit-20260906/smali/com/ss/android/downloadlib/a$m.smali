.class public Lcom/ss/android/downloadlib/a$m;
.super Ljava/lang/Object;
.source "CommonDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/downloadlib/a$n;
.implements Lcom/ss/android/downloadlib/e/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/a$m$b;
    }
.end annotation


# static fields
.field private static final q:Ljava/lang/String; = "a$m"


# instance fields
.field private final a:Lcom/ss/android/downloadlib/e/i;

.field private b:Lcom/ss/android/downloadlib/a$o;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lc/d/a/a/a/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lc/d/a/a/a/d/e;

.field private f:Lc/d/a/b/a/f/c;

.field private g:Lcom/ss/android/downloadlib/a$m$b;

.field private h:Lc/d/a/b/a/c/d0;

.field private i:Z

.field private j:J

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lc/d/a/a/a/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private l:J

.field private m:Lc/d/a/a/a/c/d;

.field private n:Lc/d/a/a/a/c/c;

.field private o:Lc/d/a/a/a/c/b;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/e/i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/e/i;-><init>(Landroid/os/Looper;Lcom/ss/android/downloadlib/e/i$a;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$m;->a:Lcom/ss/android/downloadlib/e/i;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$m;->d:Ljava/util/Map;

    .line 4
    new-instance v0, Lcom/ss/android/downloadlib/a$o$e;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m;->a:Lcom/ss/android/downloadlib/e/i;

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/a$o$e;-><init>(Lcom/ss/android/downloadlib/e/i;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$m;->h:Lc/d/a/b/a/c/d0;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$m;->k:Ljava/util/Map;

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/ss/android/downloadlib/a$m;->l:J

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    .line 8
    iput-object v0, p0, Lcom/ss/android/downloadlib/a$m;->n:Lc/d/a/a/a/c/c;

    .line 9
    iput-object v0, p0, Lcom/ss/android/downloadlib/a$m;->o:Lc/d/a/a/a/c/b;

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a$m;Lc/d/a/b/a/f/c;)Lc/d/a/b/a/f/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    return-object p1
.end method

.method private a(Lc/d/a/b/a/f/c;)V
    .locals 2

    .line 61
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 62
    iput v1, v0, Landroid/os/Message;->what:I

    .line 63
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->a:Lcom/ss/android/downloadlib/e/i;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/a$m;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->h()V

    return-void
.end method

.method static synthetic b(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/a/a/c/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    return-object p0
.end method

.method private b(Z)V
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    iget-boolean v1, p0, Lcom/ss/android/downloadlib/a$m;->p:Z

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a$o;->a(Z)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 19
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$m;->d(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadlib/a$o;->a(J)V

    .line 21
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->c()Lc/d/a/a/a/a/b;

    move-result-object p1

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->l()Lc/d/a/a/a/c/b;

    move-result-object v2

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->k()Lc/d/a/a/a/c/c;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lc/d/a/a/a/a/b;->a(Landroid/content/Context;Lc/d/a/a/a/c/d;Lc/d/a/a/a/c/b;Lc/d/a/a/a/c/c;)V

    :goto_0
    return-void
.end method

.method private b(I)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->g()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    invoke-interface {p1}, Lc/d/a/a/a/c/d;->u()Lc/d/a/a/a/d/f;

    move-result-object p1

    invoke-virtual {p1}, Lc/d/a/a/a/d/f;->a()Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic c(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/b/a/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    return-object p0
.end method

.method private c(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/a$o;->a(J)V

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$m;->e(Z)V

    return-void
.end method

.method static synthetic d(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/b/a/c/d0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/downloadlib/a$m;->h:Lc/d/a/b/a/c/d0;

    return-object p0
.end method

.method private d(Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$m;->f(Z)V

    .line 4
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/a$o;->b()V

    return-void
.end method

.method static synthetic e(Lcom/ss/android/downloadlib/a$m;)Lc/d/a/a/a/d/e;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->o()Lc/d/a/a/a/d/e;

    move-result-object p0

    return-object p0
.end method

.method private e(Z)V
    .locals 4

    .line 2
    sget-object v0, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "performItemClickWithNewDownloader"

    invoke-static {v0, v2, v1}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    iget-object v2, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-virtual {v0, v2}, Lcom/ss/android/downloadlib/a$o;->b(Lc/d/a/b/a/f/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    const-string v2, "performItemClickWithNewDownloader ButtonClick"

    invoke-static {v0, v2, v1}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$m;->f(Z)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    const-string v0, "performItemClickWithNewDownloader onItemClick"

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 7
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->c()Lc/d/a/a/a/a/b;

    move-result-object p1

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->l()Lc/d/a/a/a/c/b;

    move-result-object v2

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->k()Lc/d/a/a/a/c/c;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lc/d/a/a/a/a/b;->a(Landroid/content/Context;Lc/d/a/a/a/c/d;Lc/d/a/a/a/c/b;Lc/d/a/a/a/c/c;)V

    :goto_0
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/ss/android/downloadlib/a$m;)Ljava/util/Map;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ss/android/downloadlib/a$m;->d:Ljava/util/Map;

    return-object p0
.end method

.method private f(Z)V
    .locals 4

    .line 3
    sget-object v0, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "performButtonClickWithNewDownloader"

    invoke-static {v0, v2, v1}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    const/4 v2, -0x3

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    iget-object v3, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->q0()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/downloader/f;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performButtonClickWithNewDownloader continue download, status:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->A0()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/a$o;->c(Lc/d/a/b/a/f/c;)V

    .line 7
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object p1

    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    iget-object v3, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->A0()I

    move-result v3

    invoke-virtual {p1, v0, v1, v3}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;II)V

    .line 8
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->h:Lc/d/a/b/a/c/d0;

    if-eqz p1, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->j()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m;->h:Lc/d/a/b/a/c/d0;

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(ILc/d/a/b/a/c/d0;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 11
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/a$o;->c()V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    const-wide/16 v2, 0x2

    invoke-virtual {p1, v2, v3}, Lcom/ss/android/downloadlib/a$o;->a(J)V

    .line 13
    :cond_3
    sget-object p1, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    const-string v0, "performButtonClickWithNewDownloader not start"

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 14
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    new-instance v0, Lcom/ss/android/downloadlib/a$m$a;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/a$m$a;-><init>(Lcom/ss/android/downloadlib/a$m;)V

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/a$o;->a(Lc/d/a/a/a/a/l;)V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic g(Lcom/ss/android/downloadlib/a$m;)Lcom/ss/android/downloadlib/a$o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    return-object p0
.end method

.method private g()Z
    .locals 3

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->h()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->h()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "quick_app_enable_switch"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$l;->a(Lc/d/a/a/a/c/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-static {v0}, Lcom/ss/android/downloadlib/a$l;->a(Lc/d/a/b/a/f/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private h()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->m()V

    return-void
.end method

.method private i()Lcom/ss/android/downloadlib/a$o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/a$o;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a$o;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    return-object v0
.end method

.method private j()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private k()Lc/d/a/a/a/c/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->n:Lc/d/a/a/a/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lc/d/a/a/a/c/f;

    invoke-direct {v0}, Lc/d/a/a/a/c/f;-><init>()V

    :cond_0
    return-object v0
.end method

.method private l()Lc/d/a/a/a/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->o:Lc/d/a/a/a/c/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/downloadad/a/a/a;

    invoke-direct {v0}, Lcom/ss/android/downloadad/a/a/a;-><init>()V

    :cond_0
    return-object v0
.end method

.method private m()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a/a/c/e;

    .line 2
    iget-object v2, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->l()Lc/d/a/a/a/c/b;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lc/d/a/a/a/c/e;->a(Lc/d/a/a/a/c/d;Lc/d/a/a/a/c/b;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/h;->a()Lcom/ss/android/downloadlib/h;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->l()Lc/d/a/a/a/c/b;

    move-result-object v2

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->k()Lc/d/a/a/a/c/c;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/h;->a(Lc/d/a/a/a/c/d;Lc/d/a/a/a/c/b;Lc/d/a/a/a/c/c;)V

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/a$m;->h:Lc/d/a/b/a/c/d0;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/a$o;->a(Landroid/content/Context;Lc/d/a/b/a/c/d0;)I

    move-result v0

    .line 5
    sget-object v1, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginDownloadWithNewDownloader id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eqz v0, :cond_3

    .line 6
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    invoke-static {v1}, Lcom/ss/android/downloadlib/a$p;->b(Lc/d/a/a/a/c/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->k()Lc/d/a/a/a/c/c;

    move-result-object v2

    invoke-interface {v2}, Lc/d/a/a/a/c/c;->A()Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/ss/android/downloadlib/a$o;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->k()Lc/d/a/a/a/c/c;

    move-result-object v2

    invoke-interface {v2}, Lc/d/a/a/a/c/c;->A()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/a$o;->c(Z)V

    .line 10
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    iget-object v2, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/a$o;->c(Lc/d/a/b/a/f/c;)V

    .line 11
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->k()Lc/d/a/a/a/c/c;

    move-result-object v1

    invoke-interface {v1}, Lc/d/a/a/a/c/c;->z()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v1

    new-instance v2, Lcom/ss/android/downloadad/a/c/a;

    iget-object v4, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->k()Lc/d/a/a/a/c/c;

    move-result-object v5

    invoke-interface {v5}, Lc/d/a/a/a/c/c;->A()Z

    move-result v5

    int-to-long v6, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/ss/android/downloadad/a/c/a;-><init>(Lc/d/a/a/a/c/d;ZJ)V

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadad/a/c/a;)V

    goto :goto_2

    .line 13
    :cond_3
    new-instance v1, Lc/d/a/b/a/f/c$b;

    iget-object v2, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    invoke-interface {v2}, Lc/d/a/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lc/d/a/b/a/f/c$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lc/d/a/b/a/f/c$b;->a()Lc/d/a/b/a/f/c;

    move-result-object v1

    const/4 v2, -0x1

    .line 14
    invoke-virtual {v1, v2}, Lc/d/a/b/a/f/c;->a(I)V

    .line 15
    invoke-direct {p0, v1}, Lcom/ss/android/downloadlib/a$m;->a(Lc/d/a/b/a/f/c;)V

    .line 16
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/a$o;->i()V

    .line 17
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/a$m;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/a$o;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->c()Lc/d/a/a/a/a/b;

    move-result-object v1

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->l()Lc/d/a/a/a/c/b;

    move-result-object v5

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->k()Lc/d/a/a/a/c/c;

    move-result-object v6

    invoke-interface {v1, v2, v4, v5, v6}, Lc/d/a/a/a/a/b;->a(Landroid/content/Context;Lc/d/a/a/a/c/d;Lc/d/a/a/a/c/b;Lc/d/a/a/a/c/c;)V

    .line 19
    sget-object v1, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beginDownloadWithNewDownloader onItemClick id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_5
    return-void
.end method

.method private n()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->g:Lcom/ss/android/downloadlib/a$m$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->g:Lcom/ss/android/downloadlib/a$m$b;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3
    :cond_0
    new-instance v0, Lcom/ss/android/downloadlib/a$m$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/ss/android/downloadlib/a$m$b;-><init>(Lcom/ss/android/downloadlib/a$m;Lcom/ss/android/downloadlib/a$m$a;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$m;->g:Lcom/ss/android/downloadlib/a$m$b;

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->g:Lcom/ss/android/downloadlib/a$m$b;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    invoke-interface {v4}, Lc/d/a/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    invoke-interface {v3}, Lc/d/a/a/a/c/d;->p()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/ss/android/downloadlib/e/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method private o()Lc/d/a/a/a/d/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->e:Lc/d/a/a/a/d/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lc/d/a/a/a/d/e;

    invoke-direct {v0}, Lc/d/a/a/a/d/e;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$m;->e:Lc/d/a/a/a/d/e;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->e:Lc/d/a/a/a/d/e;

    return-object v0
.end method

.method private p()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/ss/android/downloadlib/a$m;->e:Lc/d/a/a/a/d/e;

    .line 2
    iput-object v0, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILc/d/a/a/a/c/e;)Lcom/ss/android/downloadlib/a$n;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/downloadlib/a$m;->b(ILc/d/a/a/a/c/e;)Lcom/ss/android/downloadlib/a$m;

    return-object p0
.end method

.method public synthetic a(Landroid/content/Context;)Lcom/ss/android/downloadlib/a$n;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a$m;->b(Landroid/content/Context;)Lcom/ss/android/downloadlib/a$m;

    return-object p0
.end method

.method public synthetic a(Lc/d/a/a/a/c/b;)Lcom/ss/android/downloadlib/a$n;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a$m;->b(Lc/d/a/a/a/c/b;)Lcom/ss/android/downloadlib/a$m;

    return-object p0
.end method

.method public synthetic a(Lc/d/a/a/a/c/c;)Lcom/ss/android/downloadlib/a$n;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a$m;->b(Lc/d/a/a/a/c/c;)Lcom/ss/android/downloadlib/a$m;

    return-object p0
.end method

.method public synthetic a(Lc/d/a/a/a/c/d;)Lcom/ss/android/downloadlib/a$n;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/a$m;->b(Lc/d/a/a/a/c/d;)Lcom/ss/android/downloadlib/a$m;

    return-object p0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/a$m;->i:Z

    .line 9
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->n()V

    return-void
.end method

.method public a(JI)V
    .locals 7

    .line 33
    sget-object v0, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDownload id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",actionType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 34
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->j()Landroid/content/Context;

    move-result-object v1

    iget-boolean v4, p0, Lcom/ss/android/downloadlib/a$m;->p:Z

    invoke-virtual {v0, v1, p3, v4}, Lcom/ss/android/downloadlib/a$o;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 35
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->k:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/a/a/c/d;

    if-eqz v0, :cond_0

    .line 36
    iput-object v0, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    .line 37
    iput-wide p1, p0, Lcom/ss/android/downloadlib/a$m;->l:J

    .line 38
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->i()Lcom/ss/android/downloadlib/a$o;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a$o;->a(Lc/d/a/a/a/c/d;)V

    .line 39
    :cond_0
    invoke-direct {p0, p3}, Lcom/ss/android/downloadlib/a$m;->b(I)Z

    move-result v0

    .line 40
    sget-object v1, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDownload mIsNormalScene:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/ss/android/downloadlib/a$m;->p:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mCurrentId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/ss/android/downloadlib/a$m;->l:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",interceptQuickApp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    const/4 v4, 0x2

    if-eq p3, v4, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    .line 41
    sget-object p3, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",tryPerformButtonClick:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, v3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 42
    invoke-direct {p0, v1}, Lcom/ss/android/downloadlib/a$m;->b(Z)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 43
    sget-object p3, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",tryPerformItemClick:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, v3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 44
    invoke-direct {p0, v1}, Lcom/ss/android/downloadlib/a$m;->c(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 9

    if-eqz p1, :cond_8

    .line 45
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/a$m;->i:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 46
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 p1, 0x4

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    if-eq v0, p1, :cond_4

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    goto/16 :goto_2

    .line 47
    :cond_1
    sget-object p1, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    const-string v0, "handleMsg QUICK_APP_ITEM_CLICK next"

    invoke-static {p1, v0, v3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 48
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->j()Lc/d/a/a/a/a/a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->j()Lc/d/a/a/a/a/a;

    move-result-object p1

    invoke-interface {p1}, Lc/d/a/a/a/a/a;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 49
    :cond_2
    sget-object p1, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 50
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->n:Lc/d/a/a/a/c/c;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lc/d/a/a/a/c/c;->y()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v6, v2

    .line 51
    invoke-static {}, Lcom/ss/android/downloadlib/a$l;->a()Lcom/ss/android/downloadlib/a$l;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    const-wide/16 v7, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/downloadlib/a$l;->a(ZLc/d/a/a/a/c/d;Ljava/lang/String;J)V

    .line 52
    invoke-direct {p0, v1}, Lcom/ss/android/downloadlib/a$m;->c(Z)V

    goto :goto_2

    .line 53
    :cond_4
    sget-object p1, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    const-string v0, "handleMsg QUICK_APP_BUTTON_CLICK start"

    invoke-static {p1, v0, v3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 54
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->j()Lc/d/a/a/a/a/a;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->j()Lc/d/a/a/a/a/a;

    move-result-object p1

    invoke-interface {p1}, Lc/d/a/a/a/a/a;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 55
    :cond_5
    sget-object p1, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    const-string v0, "handleMsg QUICK_APP_BUTTON_CLICK next"

    invoke-static {p1, v0, v3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 56
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->n:Lc/d/a/a/a/c/c;

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {p1}, Lc/d/a/a/a/c/c;->y()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v6, v2

    .line 57
    invoke-static {}, Lcom/ss/android/downloadlib/a$l;->a()Lcom/ss/android/downloadlib/a$l;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    const-wide/16 v7, 0x2

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/downloadlib/a$l;->a(ZLc/d/a/a/a/c/d;Ljava/lang/String;J)V

    .line 58
    invoke-direct {p0, v1}, Lcom/ss/android/downloadlib/a$m;->b(Z)V

    goto :goto_2

    .line 59
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lc/d/a/b/a/f/c;

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    .line 60
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->o()Lc/d/a/a/a/d/e;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/downloadlib/a$m;->d:Ljava/util/Map;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/ss/android/downloadlib/a$o;->a(Landroid/content/Context;Landroid/os/Message;Lc/d/a/a/a/d/e;Ljava/util/Map;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 24
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/c;->b()Lcom/ss/android/socialbase/appdownloader/c$g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/appdownloader/c$g;->a(Lc/d/a/b/a/f/c;)V

    .line 26
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/notification/b;->e(I)V

    .line 27
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->b(I)V

    .line 28
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->i(I)V

    goto :goto_0

    .line 29
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.ss.intent.action.DOWNLOAD_DELETE"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    const-string v1, "extra_click_download_ids"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 3

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 13
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/a$m;->i:Z

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/a$m;->j:J

    .line 15
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    if-eqz p1, :cond_1

    .line 16
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->k(I)V

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->g:Lcom/ss/android/downloadlib/a$m$b;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq p1, v1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->g:Lcom/ss/android/downloadlib/a$m$b;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->b:Lcom/ss/android/downloadlib/a$o;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    invoke-virtual {p1, v1}, Lcom/ss/android/downloadlib/a$o;->a(Lc/d/a/b/a/f/c;)V

    .line 20
    sget-object p1, Lcom/ss/android/downloadlib/a$m;->q:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnbind removeCallbacksAndMessages, downloadUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    if-nez v2, :cond_3

    const-string v2, ""

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->t0()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 21
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$m;->a:Lcom/ss/android/downloadlib/e/i;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 22
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->p()V

    :cond_4
    return v0
.end method

.method public b(ILc/d/a/a/a/c/e;)Lcom/ss/android/downloadlib/a$m;
    .locals 1

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public b(Landroid/content/Context;)Lcom/ss/android/downloadlib/a$m;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$m;->c:Ljava/lang/ref/WeakReference;

    :cond_0
    return-object p0
.end method

.method public b(Lc/d/a/a/a/c/b;)Lcom/ss/android/downloadlib/a$m;
    .locals 1

    .line 9
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$m;->o:Lc/d/a/a/a/c/b;

    .line 10
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->i()Lcom/ss/android/downloadlib/a$o;

    move-result-object p1

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->l()Lc/d/a/a/a/c/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/a$o;->a(Lc/d/a/a/a/c/b;)V

    return-object p0
.end method

.method public b(Lc/d/a/a/a/c/c;)Lcom/ss/android/downloadlib/a$m;
    .locals 1

    .line 11
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$m;->n:Lc/d/a/a/a/c/c;

    .line 12
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->k()Lc/d/a/a/a/c/c;

    move-result-object p1

    invoke-interface {p1}, Lc/d/a/a/a/c/c;->v()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/ss/android/downloadlib/a$m;->p:Z

    .line 13
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->i()Lcom/ss/android/downloadlib/a$o;

    move-result-object p1

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->k()Lc/d/a/a/a/c/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/a$o;->a(Lc/d/a/a/a/c/c;)V

    return-object p0
.end method

.method public b(Lc/d/a/a/a/c/d;)Lcom/ss/android/downloadlib/a$m;
    .locals 3

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->k:Ljava/util/Map;

    invoke-interface {p1}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    .line 6
    invoke-static {p1}, Lcom/ss/android/downloadlib/a$p;->a(Lc/d/a/a/a/c/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Lcom/ss/android/downloadad/a/a/c;

    const-wide/16 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadad/a/a/c;->a(J)V

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$m;->i()Lcom/ss/android/downloadlib/a$o;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->m:Lc/d/a/a/a/c/d;

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/a$o;->a(Lc/d/a/a/a/c/d;)V

    :cond_1
    return-object p0
.end method

.method public b()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/a$m;->i:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ss/android/downloadlib/a$m;->j:J

    return-wide v0
.end method

.method public e()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->d:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a/a/c/e;

    .line 10
    invoke-interface {v1}, Lc/d/a/a/a/c/e;->a()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$m;->f:Lc/d/a/b/a/f/c;

    if-eqz v0, :cond_2

    const/4 v1, -0x4

    .line 12
    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->a(I)V

    :cond_2
    :goto_1
    return-void
.end method
