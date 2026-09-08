.class public Lcom/ss/android/socialbase/downloader/downloader/b;
.super Ljava/lang/Object;
.source "DownloadComponentManager.java"


# static fields
.field private static final A:I

.field private static final B:I

.field private static C:I

.field private static D:Z

.field private static volatile E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/a/b/a/c/r;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile F:Z

.field private static volatile a:Landroid/content/Context;

.field private static volatile b:Lcom/ss/android/socialbase/downloader/downloader/k;

.field private static volatile c:Lcom/ss/android/socialbase/downloader/downloader/l;

.field private static volatile d:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private static volatile e:Lcom/ss/android/socialbase/downloader/impls/a;

.field private static volatile f:Lcom/ss/android/socialbase/downloader/downloader/p;

.field private static volatile g:Lcom/ss/android/socialbase/downloader/downloader/p;

.field private static volatile h:Lc/d/a/b/a/h/f;

.field private static volatile i:Lc/d/a/b/a/h/d;

.field private static volatile j:Lc/d/a/b/a/h/f;

.field private static volatile k:Lc/d/a/b/a/h/d;

.field private static volatile l:Lcom/ss/android/socialbase/downloader/downloader/m;

.field private static volatile m:Ljava/util/concurrent/ExecutorService;

.field private static volatile n:Ljava/util/concurrent/ExecutorService;

.field private static volatile o:Ljava/util/concurrent/ExecutorService;

.field private static volatile p:Lcom/ss/android/socialbase/downloader/downloader/h;

.field private static volatile q:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

.field private static volatile r:Lcom/ss/android/socialbase/downloader/downloader/r;

.field private static volatile s:Lcom/ss/android/socialbase/downloader/downloader/q;

.field private static volatile t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/a/b/a/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile u:Z

.field private static volatile v:Ld/v;

.field private static volatile w:Landroid/app/AlarmManager;

.field private static x:Z

.field private static y:I

.field private static final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->t:Ljava/util/List;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->u:Z

    const/4 v1, 0x0

    .line 3
    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->v:Ld/v;

    .line 4
    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->x:Z

    .line 5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ss/android/socialbase/downloader/downloader/b;->z:I

    .line 6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ss/android/socialbase/downloader/downloader/b;->A:I

    .line 7
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ss/android/socialbase/downloader/downloader/b;->B:I

    const/16 v1, 0x2000

    .line 8
    sput v1, Lcom/ss/android/socialbase/downloader/downloader/b;->C:I

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->E:Ljava/util/List;

    .line 10
    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->F:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static A()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->q:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->q:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    .line 3
    :cond_0
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->x:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;

    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/b;->q:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/b;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static a()I
    .locals 2

    .line 89
    sget v0, Lcom/ss/android/socialbase/downloader/downloader/b;->y:I

    if-lez v0, :cond_0

    sget v1, Lcom/ss/android/socialbase/downloader/downloader/b;->z:I

    if-le v0, v1, :cond_1

    .line 90
    :cond_0
    sget v0, Lcom/ss/android/socialbase/downloader/downloader/b;->z:I

    sput v0, Lcom/ss/android/socialbase/downloader/downloader/b;->y:I

    .line 91
    :cond_1
    sget v0, Lcom/ss/android/socialbase/downloader/downloader/b;->y:I

    return v0
.end method

.method public static a(Lc/d/a/b/a/f/c;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->t0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 99
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->s()Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 100
    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Lc/d/a/b/a/h/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;)",
            "Lc/d/a/b/a/h/c;"
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->f()Lc/d/a/b/a/h/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    invoke-interface {v0, p0, p1}, Lc/d/a/b/a/h/d;->a(Ljava/lang/String;Ljava/util/List;)Lc/d/a/b/a/h/c;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v1, :cond_1

    .line 75
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->h()Lc/d/a/b/a/h/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 76
    invoke-interface {v2, p0, p1}, Lc/d/a/b/a/h/d;->a(Ljava/lang/String;Ljava/util/List;)Lc/d/a/b/a/h/c;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    .line 77
    :cond_2
    throw v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static a(ZILjava/lang/String;Ljava/util/List;)Lc/d/a/b/a/h/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;)",
            "Lc/d/a/b/a/h/e;"
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->d()Lc/d/a/b/a/h/f;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance p0, Lc/d/a/b/a/d/a;

    const/16 p1, 0x3fe

    new-instance p2, Ljava/io/IOException;

    const-string p3, "download can\'t continue, because httpService not exist"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/Throwable;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 68
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lc/d/a/b/a/h/f;->a(ILjava/lang/String;Ljava/util/List;)Lc/d/a/b/a/h/e;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    if-eqz p0, :cond_2

    if-nez v1, :cond_2

    .line 69
    instance-of p0, v0, Lcom/ss/android/socialbase/downloader/impls/g;

    if-nez p0, :cond_2

    .line 70
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->g()Lc/d/a/b/a/h/f;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 71
    invoke-interface {p0, p1, p2, p3}, Lc/d/a/b/a/h/f;->a(ILjava/lang/String;Ljava/util/List;)Lc/d/a/b/a/h/e;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_4

    if-nez v2, :cond_3

    goto :goto_2

    .line 72
    :cond_3
    throw v2

    :cond_4
    :goto_2
    return-object v1
.end method

.method private static a(I)V
    .locals 0

    if-lez p0, :cond_0

    .line 92
    sput p0, Lcom/ss/android/socialbase/downloader/downloader/b;->y:I

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 95
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 97
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static a(Lc/d/a/b/a/a/d;)V
    .locals 4

    .line 54
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->E:Ljava/util/List;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->E:Ljava/util/List;

    if-nez v1, :cond_0

    .line 56
    monitor-exit v0

    return-void

    .line 57
    :cond_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 58
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/a/c/r;

    if-eqz v2, :cond_1

    .line 60
    sget-object v3, Lc/d/a/b/a/a/d;->b:Lc/d/a/b/a/a/d;

    if-ne p0, v3, :cond_2

    .line 61
    invoke-interface {v2}, Lc/d/a/b/a/c/r;->a()V

    goto :goto_0

    .line 62
    :cond_2
    sget-object v3, Lc/d/a/b/a/a/d;->c:Lc/d/a/b/a/a/d;

    if-ne p0, v3, :cond_1

    .line 63
    invoke-interface {v2}, Lc/d/a/b/a/c/r;->b()V

    goto :goto_0

    .line 64
    :cond_3
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->E:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Lc/d/a/b/a/c/h;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 51
    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->t:Ljava/util/List;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->t:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a(Lc/d/a/b/a/h/d;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 86
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->i:Lc/d/a/b/a/h/d;

    :cond_0
    return-void
.end method

.method private static a(Lc/d/a/b/a/h/f;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 84
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lc/d/a/b/a/h/f;

    .line 85
    :cond_0
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lc/d/a/b/a/h/f;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/ss/android/socialbase/downloader/downloader/b;->D:Z

    return-void
.end method

.method static declared-synchronized a(Lcom/ss/android/socialbase/downloader/downloader/g;)V
    .locals 5

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->F:Z

    if-eqz v1, :cond_0

    const-string p0, "DownloadComponentManager"

    const-string v1, "component has init"

    .line 2
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->u:Z

    const/4 v2, 0x1

    if-eqz p0, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->b()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 7
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->c()Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/l;)V

    .line 8
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->k()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)V

    .line 9
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->j()I

    move-result v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(I)V

    .line 10
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->d()Lc/d/a/b/a/h/f;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lc/d/a/b/a/h/f;)V

    .line 11
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->e()Lc/d/a/b/a/h/d;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lc/d/a/b/a/h/d;)V

    .line 12
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->f()Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/m;)V

    .line 13
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->g()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 14
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/b;->b(Ljava/util/concurrent/ExecutorService;)V

    .line 15
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->i()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/b;->c(Ljava/util/concurrent/ExecutorService;)V

    .line 16
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->o()Lcom/ss/android/socialbase/downloader/downloader/q;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->o()Lcom/ss/android/socialbase/downloader/downloader/q;

    move-result-object v3

    sput-object v3, Lcom/ss/android/socialbase/downloader/downloader/b;->s:Lcom/ss/android/socialbase/downloader/downloader/q;

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->m()I

    move-result v3

    const/16 v4, 0x400

    if-le v3, v4, :cond_2

    .line 19
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->m()I

    move-result v3

    sput v3, Lcom/ss/android/socialbase/downloader/downloader/b;->C:I

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->l()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/h;)V

    .line 21
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/g;->n()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 22
    sput-boolean v2, Lcom/ss/android/socialbase/downloader/downloader/b;->u:Z

    .line 23
    :cond_3
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-nez p0, :cond_4

    .line 24
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/d;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    .line 25
    :cond_4
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-nez p0, :cond_5

    .line 26
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/h;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/h;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/downloader/p;

    .line 27
    :cond_5
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-nez p0, :cond_6

    .line 28
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/n;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/p;

    .line 29
    :cond_6
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez p0, :cond_7

    .line 30
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/i;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/i;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/l;

    .line 31
    :cond_7
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->e:Lcom/ss/android/socialbase/downloader/impls/a;

    if-nez p0, :cond_8

    .line 32
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/e;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/e;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->e:Lcom/ss/android/socialbase/downloader/impls/a;

    .line 33
    :cond_8
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez p0, :cond_9

    .line 34
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/c;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/c;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 35
    :cond_9
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->p:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez p0, :cond_a

    .line 36
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/b;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/b;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->p:Lcom/ss/android/socialbase/downloader/downloader/h;

    .line 37
    :cond_a
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->r:Lcom/ss/android/socialbase/downloader/downloader/r;

    if-nez p0, :cond_b

    .line 38
    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/j;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/j;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->r:Lcom/ss/android/socialbase/downloader/downloader/r;

    .line 39
    :cond_b
    sget p0, Lcom/ss/android/socialbase/downloader/downloader/b;->y:I

    if-lez p0, :cond_c

    sget p0, Lcom/ss/android/socialbase/downloader/downloader/b;->y:I

    sget v3, Lcom/ss/android/socialbase/downloader/downloader/b;->z:I

    if-le p0, v3, :cond_d

    .line 40
    :cond_c
    sget p0, Lcom/ss/android/socialbase/downloader/downloader/b;->z:I

    sput p0, Lcom/ss/android/socialbase/downloader/downloader/b;->y:I

    .line 41
    :cond_d
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->A()V

    .line 42
    sget-boolean p0, Lcom/ss/android/socialbase/downloader/downloader/b;->u:Z

    if-eqz p0, :cond_e

    if-nez v1, :cond_e

    invoke-static {}, Lc/d/a/b/a/j/d;->d()Z

    move-result p0

    if-nez p0, :cond_e

    .line 43
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/downloader/n;->c()V

    goto :goto_0

    .line 44
    :cond_e
    invoke-static {}, Lc/d/a/b/a/j/d;->e()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 45
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 46
    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/b$a;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/b$a;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 47
    :cond_f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 48
    invoke-static {p0}, Lc/d/a/b/a/j/d;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 49
    :cond_10
    :goto_0
    sput-boolean v2, Lcom/ss/android/socialbase/downloader/downloader/b;->F:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/downloader/h;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 94
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->p:Lcom/ss/android/socialbase/downloader/downloader/h;

    :cond_0
    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/downloader/i;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 93
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    :cond_0
    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/downloader/k;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 87
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    :cond_0
    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/downloader/l;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 88
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/l;

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Lcom/ss/android/socialbase/downloader/downloader/m;)V
    .locals 1

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 78
    :try_start_0
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->l:Lcom/ss/android/socialbase/downloader/downloader/m;

    .line 79
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    instance-of p0, p0, Lcom/ss/android/socialbase/downloader/impls/d;

    if-eqz p0, :cond_0

    .line 80
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    check-cast p0, Lcom/ss/android/socialbase/downloader/impls/d;

    .line 81
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/impls/d;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 82
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method private static a(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 83
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->m:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static declared-synchronized b()V
    .locals 5

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    :try_start_1
    sput-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->u:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.ss.android.downloader.action.MULTI_PROCESS_NOTIFY"

    .line 5
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 7
    invoke-static {}, Lc/d/a/b/a/j/d;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    .line 9
    :try_start_3
    sput-boolean v2, Lcom/ss/android/socialbase/downloader/downloader/b;->u:Z

    .line 10
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 12
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->n:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method private static c(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/b;->o:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static declared-synchronized c()Z
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static d()Lc/d/a/b/a/h/f;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lc/d/a/b/a/h/f;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lc/d/a/b/a/h/f;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/g;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/g;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lc/d/a/b/a/h/f;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->h:Lc/d/a/b/a/h/f;

    return-object v0
.end method

.method public static e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/d/a/b/a/c/h;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->t:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->t:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static f()Lc/d/a/b/a/h/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->i:Lc/d/a/b/a/h/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->i:Lc/d/a/b/a/h/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/f;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/f;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->i:Lc/d/a/b/a/h/d;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->i:Lc/d/a/b/a/h/d;

    return-object v0
.end method

.method public static g()Lc/d/a/b/a/h/f;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->j:Lc/d/a/b/a/h/f;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->j:Lc/d/a/b/a/h/f;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/g;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/g;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->j:Lc/d/a/b/a/h/f;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->j:Lc/d/a/b/a/h/f;

    return-object v0
.end method

.method public static h()Lc/d/a/b/a/h/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->k:Lc/d/a/b/a/h/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->k:Lc/d/a/b/a/h/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/f;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/f;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->k:Lc/d/a/b/a/h/d;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->k:Lc/d/a/b/a/h/d;

    return-object v0
.end method

.method public static i()Landroid/app/AlarmManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->w:Landroid/app/AlarmManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->w:Landroid/app/AlarmManager;

    if-nez v1, :cond_0

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->w:Landroid/app/AlarmManager;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->w:Landroid/app/AlarmManager;

    return-object v0
.end method

.method public static declared-synchronized j()Lcom/ss/android/socialbase/downloader/downloader/q;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->s:Lcom/ss/android/socialbase/downloader/downloader/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static k()Ljava/util/concurrent/ExecutorService;
    .locals 11

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->m:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->m:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->a()I

    move-result v4

    .line 5
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v5, 0xf

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lc/d/a/b/a/i/a;

    const-string v2, "DownloadThreadPool-cpu-fixed"

    const/4 v10, 0x1

    invoke-direct {v9, v2, v10}, Lc/d/a/b/a/i/a;-><init>(Ljava/lang/String;Z)V

    move-object v2, v1

    move v3, v4

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {v1, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 7
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :goto_0
    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->m:Ljava/util/concurrent/ExecutorService;

    .line 9
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 10
    :cond_1
    :goto_1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->m:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static l()Ljava/util/concurrent/ExecutorService;
    .locals 11

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->n:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->n:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/ss/android/socialbase/downloader/downloader/b;->A:I

    sget v4, Lcom/ss/android/socialbase/downloader/downloader/b;->A:I

    const-wide/16 v5, 0xf

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lc/d/a/b/a/i/a;

    const-string v2, "DownloadThreadPool-io-fixed"

    const/4 v10, 0x1

    invoke-direct {v9, v2, v10}, Lc/d/a/b/a/i/a;-><init>(Ljava/lang/String;Z)V

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v1, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 6
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :goto_0
    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->n:Ljava/util/concurrent/ExecutorService;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 9
    :cond_1
    :goto_1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->n:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static m()Ljava/util/concurrent/ExecutorService;
    .locals 11

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->o:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->o:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/ss/android/socialbase/downloader/downloader/b;->B:I

    sget v4, Lcom/ss/android/socialbase/downloader/downloader/b;->B:I

    const-wide/16 v5, 0xf

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lc/d/a/b/a/i/a;

    const-string v2, "DownloadThreadPool-db-fixed"

    const/4 v10, 0x1

    invoke-direct {v9, v2, v10}, Lc/d/a/b/a/i/a;-><init>(Ljava/lang/String;Z)V

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v1, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 6
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :goto_0
    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->o:Ljava/util/concurrent/ExecutorService;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 9
    :cond_1
    :goto_1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->o:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static n()Ld/v;
    .locals 5

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->v:Ld/v;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->v:Ld/v;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ld/v$b;

    invoke-direct {v1}, Ld/v$b;-><init>()V

    .line 5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v3, v4, v2}, Ld/v$b;->a(JLjava/util/concurrent/TimeUnit;)Ld/v$b;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {v1, v3, v4, v2}, Ld/v$b;->b(JLjava/util/concurrent/TimeUnit;)Ld/v$b;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-virtual {v1, v3, v4, v2}, Ld/v$b;->c(JLjava/util/concurrent/TimeUnit;)Ld/v$b;

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Ld/v$b;->b(Z)Ld/v$b;

    new-instance v3, Ld/n;

    .line 9
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-direct {v3, v4}, Ld/n;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v1, v3}, Ld/v$b;->a(Ld/n;)Ld/v$b;

    .line 10
    invoke-virtual {v1, v2}, Ld/v$b;->a(Z)Ld/v$b;

    sget-object v2, Ld/w;->c:Ld/w;

    .line 11
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ld/v$b;->a(Ljava/util/List;)Ld/v$b;

    .line 12
    invoke-virtual {v1}, Ld/v$b;->a()Ld/v;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->v:Ld/v;

    .line 13
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 14
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->v:Ld/v;

    return-object v0
.end method

.method public static declared-synchronized o()Lcom/ss/android/socialbase/downloader/downloader/m;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->l:Lcom/ss/android/socialbase/downloader/downloader/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static p()Lcom/ss/android/socialbase/downloader/downloader/k;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/d;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    return-object v0
.end method

.method public static q()Lcom/ss/android/socialbase/downloader/downloader/p;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/h;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/h;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/downloader/p;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->f:Lcom/ss/android/socialbase/downloader/downloader/p;

    return-object v0
.end method

.method public static r()Lcom/ss/android/socialbase/downloader/downloader/p;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/n;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/p;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->g:Lcom/ss/android/socialbase/downloader/downloader/p;

    return-object v0
.end method

.method public static s()Lcom/ss/android/socialbase/downloader/downloader/l;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/i;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/i;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/l;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->c:Lcom/ss/android/socialbase/downloader/downloader/l;

    return-object v0
.end method

.method public static t()Lcom/ss/android/socialbase/downloader/impls/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->e:Lcom/ss/android/socialbase/downloader/impls/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->e:Lcom/ss/android/socialbase/downloader/impls/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/e;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/e;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->e:Lcom/ss/android/socialbase/downloader/impls/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->e:Lcom/ss/android/socialbase/downloader/impls/a;

    return-object v0
.end method

.method public static declared-synchronized u()I
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lcom/ss/android/socialbase/downloader/downloader/b;->C:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static v()Lcom/ss/android/socialbase/downloader/downloader/i;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/c;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/c;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->d:Lcom/ss/android/socialbase/downloader/downloader/i;

    return-object v0
.end method

.method public static w()Lcom/ss/android/socialbase/downloader/downloader/h;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->p:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->p:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/b;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/b;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->p:Lcom/ss/android/socialbase/downloader/downloader/h;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->p:Lcom/ss/android/socialbase/downloader/downloader/h;

    return-object v0
.end method

.method public static x()Lcom/ss/android/socialbase/downloader/downloader/r;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->r:Lcom/ss/android/socialbase/downloader/downloader/r;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->r:Lcom/ss/android/socialbase/downloader/downloader/r;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/j;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/j;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->r:Lcom/ss/android/socialbase/downloader/downloader/r;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/b;->r:Lcom/ss/android/socialbase/downloader/downloader/r;

    return-object v0
.end method

.method public static declared-synchronized y()Landroid/content/Context;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/b;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized z()Z
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/b;->D:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
