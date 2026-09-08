.class public abstract Lcom/ss/android/socialbase/downloader/impls/a;
.super Ljava/lang/Object;
.source "AbsDownloadEngine.java"

# interfaces
.implements Lc/d/a/b/a/i/f$a;


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/f/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/f/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/f/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/f/d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/f/d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lc/d/a/b/a/f/d;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/ss/android/socialbase/downloader/downloader/k;

.field protected final i:Lc/d/a/b/a/i/f;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    .line 8
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 9
    new-instance v0, Lc/d/a/b/a/i/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lc/d/a/b/a/i/f;-><init>(Landroid/os/Looper;Lc/d/a/b/a/i/f$a;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Lc/d/a/b/a/i/f;

    .line 10
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Lcom/ss/android/socialbase/downloader/downloader/k;

    return-void
.end method

.method private a(ILc/d/a/b/a/d/a;Lc/d/a/b/a/f/d;)V
    .locals 4

    if-eqz p3, :cond_0

    .line 99
    invoke-virtual {p3}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v0

    .line 100
    sget-object v1, Lc/d/a/b/a/a/h;->a:Lc/d/a/b/a/a/h;

    invoke-virtual {p3, v1}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/a/h;)Landroid/util/SparseArray;

    move-result-object v1

    .line 101
    sget-object v2, Lc/d/a/b/a/a/h;->c:Lc/d/a/b/a/a/h;

    invoke-virtual {p3, v2}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/a/h;)Landroid/util/SparseArray;

    move-result-object v2

    .line 102
    invoke-virtual {p3}, Lc/d/a/b/a/f/d;->m()Z

    move-result p3

    const/4 v3, 0x1

    .line 103
    invoke-static {p1, v1, v3, v0, p2}, Lc/d/a/b/a/j/c;->a(ILandroid/util/SparseArray;ZLc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V

    .line 104
    invoke-static {p1, v2, p3, v0, p2}, Lc/d/a/b/a/j/c;->a(ILandroid/util/SparseArray;ZLc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V

    :cond_0
    return-void
.end method

.method private a(Lc/d/a/b/a/f/c;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 61
    :try_start_0
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 62
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->Q()Lc/d/a/b/a/a/j;

    move-result-object v0

    sget-object v1, Lc/d/a/b/a/a/j;->a:Lc/d/a/b/a/a/j;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x5

    .line 63
    invoke-virtual {p1, v0}, Lc/d/a/b/a/f/c;->a(I)V

    .line 64
    sget-object v0, Lc/d/a/b/a/a/j;->a:Lc/d/a/b/a/a/j;

    invoke-virtual {p1, v0}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/a/j;)V

    .line 65
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->i()Landroid/app/AlarmManager;

    move-result-object v0

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ss.android.downloader.action.DOWNLOAD_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "extra_download_id"

    .line 67
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 69
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result p1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, p1, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string p1, "AbsDownloadEngine"

    const-string v0, "cancelAlarm"

    .line 71
    invoke-static {p1, v0}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lc/d/a/b/a/f/d;Z)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->g0()Z

    move-result v1

    const/16 v2, 0x3eb

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->e()Lc/d/a/b/a/c/e0;

    move-result-object p1

    new-instance p2, Lc/d/a/b/a/d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadInfo is Invalid, url is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->t0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " name is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " savePath is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v2, v1}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v3

    :cond_2
    invoke-static {p1, v0, p2, v3}, Lc/d/a/b/a/g/a;->a(Lc/d/a/b/a/c/e0;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V

    return-void

    .line 5
    :cond_3
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    if-eqz p2, :cond_4

    .line 6
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/c;)V

    .line 7
    :cond_4
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    monitor-enter p2

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 9
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 10
    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 11
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    monitor-enter v4

    .line 12
    :try_start_1
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 13
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 14
    :cond_6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 15
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    monitor-enter p2

    .line 16
    :try_start_2
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 17
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 18
    :cond_7
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 19
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    monitor-enter v4

    .line 20
    :try_start_3
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 21
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 22
    :cond_8
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 23
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->V()Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "AbsDownloadEngine"

    const-string v1, "another task with same id is downloading when tryDownload"

    .line 24
    invoke-static {p2, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->o()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 26
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->p()V

    .line 27
    :cond_9
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->e()Lc/d/a/b/a/c/e0;

    move-result-object p1

    new-instance p2, Lc/d/a/b/a/d/a;

    const-string v1, "downloadInfo is isDownloading and addListenerToSameTask is false"

    invoke-direct {p2, v2, v1}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v3

    :cond_a
    invoke-static {p1, v0, p2, v3}, Lc/d/a/b/a/g/a;->a(Lc/d/a/b/a/c/e0;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V

    return-void

    .line 28
    :cond_b
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->V()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 29
    sget-object p2, Lc/d/a/b/a/a/a;->c:Lc/d/a/b/a/a/a;

    invoke-virtual {v0, p2}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/a/a;)V

    .line 30
    :cond_c
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    monitor-enter p2

    .line 31
    :try_start_4
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_d

    .line 32
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_d
    const-wide/16 v4, 0x0

    .line 33
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/16 v8, 0x32

    cmp-long v4, v4, v8

    if-gez v4, :cond_14

    .line 34
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/b/a/f/d;

    if-eqz v4, :cond_f

    .line 35
    invoke-virtual {v4}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 36
    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->A0()I

    move-result v4

    if-nez v4, :cond_e

    .line 37
    invoke-static {v4}, Lc/d/a/b/a/a/f;->b(I)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    goto :goto_1

    :cond_e
    move v5, v3

    goto :goto_1

    :cond_f
    move v4, v3

    move v5, v4

    :goto_1
    if-eqz v5, :cond_13

    const-string v5, "AbsDownloadEngine"

    .line 38
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can add listener, oldTaskStatus is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v4, :cond_10

    const/4 v5, 0x2

    if-ge v4, v5, :cond_10

    .line 39
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->p()V

    goto :goto_2

    .line 40
    :cond_10
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->o()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 41
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->p()V

    goto :goto_2

    .line 42
    :cond_11
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->e()Lc/d/a/b/a/c/e0;

    move-result-object v4

    new-instance v5, Lc/d/a/b/a/d/a;

    const-string v8, "has another same task within 50 milliseconds and addListenerToSameTask is false"

    invoke-direct {v5, v2, v8}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v3

    :cond_12
    invoke-static {v4, v0, v5, v3}, Lc/d/a/b/a/g/a;->a(Lc/d/a/b/a/c/e0;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V

    .line 43
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    invoke-virtual {p0, v1, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILc/d/a/b/a/f/d;)V

    goto :goto_2

    .line 46
    :cond_13
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    invoke-virtual {p0, v1, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILc/d/a/b/a/f/d;)V

    goto :goto_2

    .line 49
    :cond_14
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->f:Landroid/util/SparseArray;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    invoke-virtual {p0, v1, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILc/d/a/b/a/f/d;)V

    .line 52
    :goto_2
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 53
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 54
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 55
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    :catchall_4
    move-exception p1

    .line 56
    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p1
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->r(I)V

    return-void
.end method

.method private b(Lc/d/a/b/a/f/d;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 4
    invoke-direct {p0, p1, v3}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/d;Z)V

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->B0()Lc/d/a/b/a/a/g;

    move-result-object v0

    sget-object v2, Lc/d/a/b/a/a/g;->c:Lc/d/a/b/a/a/g;

    if-ne v0, v2, :cond_6

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    .line 8
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->o()I

    move-result v0

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->o()I

    move-result v2

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->o()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    monitor-exit v1

    return-void

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/a/f/d;

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v2}, Lc/d/a/b/a/f/d;->o()I

    move-result v2

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->o()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V

    .line 15
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Lc/d/a/b/a/i/f;

    invoke-direct {v0, p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/e;-><init>(Lc/d/a/b/a/f/d;Landroid/os/Handler;)V

    .line 16
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a()V

    goto :goto_0

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    .line 18
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->o()I

    move-result v2

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->o()I

    move-result v4

    if-ne v2, v4, :cond_7

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->o()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 19
    monitor-exit v1

    return-void

    .line 20
    :cond_7
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->o()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->f(I)Z

    .line 21
    invoke-direct {p0, p1, v3}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/d;Z)V

    .line 22
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->o()I

    move-result v0

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->o()I

    move-result v2

    if-eq v0, v2, :cond_8

    .line 23
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->putFirst(Ljava/lang/Object;)V

    .line 24
    :cond_8
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method private declared-synchronized r(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/f/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(I)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :goto_0
    const/4 v0, -0x4

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(II)V

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private s(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/a/f/d;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lc/d/a/b/a/f/d;->o()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->g:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/a/f/d;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 9
    invoke-direct {p0, p1, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/d;Z)V

    .line 10
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method protected abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/c;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/impls/a;->a()Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 96
    invoke-virtual {p0, v2}, Lcom/ss/android/socialbase/downloader/impls/a;->e(I)Lc/d/a/b/a/f/c;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public declared-synchronized a(II)V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x7

    if-eq p2, v0, :cond_8

    const/4 v0, -0x6

    if-eq p2, v0, :cond_7

    const/4 v0, -0x4

    if-eq p2, v0, :cond_6

    const/4 v0, -0x3

    if-eq p2, v0, :cond_5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_8

    const/4 v0, 0x7

    if-eq p2, v0, :cond_2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    .line 105
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/d/a/b/a/f/d;

    if-eqz p2, :cond_1

    .line 106
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    :cond_1
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->s(I)V

    goto/16 :goto_0

    .line 109
    :cond_2
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/d/a/b/a/f/d;

    if-eqz p2, :cond_4

    .line 110
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    :cond_3
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 113
    :cond_4
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->s(I)V

    goto :goto_0

    .line 114
    :cond_5
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/d/a/b/a/f/d;

    .line 115
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 117
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->s(I)V

    goto :goto_0

    .line 118
    :cond_6
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 119
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->s(I)V

    goto :goto_0

    .line 120
    :cond_7
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/d/a/b/a/f/d;

    .line 121
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 123
    :cond_8
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/d/a/b/a/f/d;

    if-eqz p2, :cond_a

    .line 124
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 125
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    :cond_9
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 127
    :cond_a
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->s(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(IILc/d/a/b/a/c/d0;Lc/d/a/b/a/a/h;Z)V
    .locals 1

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/a/f/d;

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1, p2, p3, p4, p5}, Lc/d/a/b/a/f/d;->a(ILc/d/a/b/a/c/d0;Lc/d/a/b/a/a/h;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(ILc/d/a/b/a/c/g0;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/a/f/d;

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1, p2}, Lc/d/a/b/a/f/d;->b(Lc/d/a/b/a/c/g0;)V

    .line 76
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract a(ILc/d/a/b/a/f/d;)V
.end method

.method public a(Landroid/os/Message;)V
    .locals 5

    .line 129
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 130
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v1, Ljava/lang/Exception;

    if-eqz v2, :cond_0

    .line 131
    check-cast v1, Lc/d/a/b/a/d/a;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 132
    :goto_0
    const-class v2, Lcom/ss/android/socialbase/downloader/impls/a;

    monitor-enter v2

    .line 133
    :try_start_0
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/a/f/d;

    if-nez v3, :cond_1

    .line 134
    monitor-exit v2

    return-void

    .line 135
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v4, v1, v3}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILc/d/a/b/a/d/a;Lc/d/a/b/a/f/d;)V

    .line 136
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(II)V

    .line 137
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lc/d/a/b/a/f/d;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 58
    :cond_1
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->B0()Lc/d/a/b/a/a/g;

    move-result-object v0

    sget-object v1, Lc/d/a/b/a/a/g;->a:Lc/d/a/b/a/a/g;

    if-eq v0, v1, :cond_2

    .line 59
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->b(Lc/d/a/b/a/f/d;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/d;Z)V

    :goto_0
    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 77
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 78
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 79
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/a/f/d;

    if-nez v1, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {v1}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->z()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    .line 82
    invoke-virtual {v2, v3}, Lc/d/a/b/a/f/c;->a(Z)V

    .line 83
    invoke-virtual {v2, v3}, Lc/d/a/b/a/f/c;->b(Z)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 85
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public abstract a(I)Z
.end method

.method public b()V
    .locals 2

    .line 25
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/impls/a;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->f(I)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected abstract b(I)V
.end method

.method public declared-synchronized b(IILc/d/a/b/a/c/d0;Lc/d/a/b/a/a/h;Z)V
    .locals 1

    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {v0, p2, p3, p4, p5}, Lc/d/a/b/a/f/d;->b(ILc/d/a/b/a/c/d0;Lc/d/a/b/a/a/h;Z)V

    .line 30
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 31
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lc/d/a/b/a/a/h;->a:Lc/d/a/b/a/a/h;

    if-eq p4, p1, :cond_0

    sget-object p1, Lc/d/a/b/a/a/h;->c:Lc/d/a/b/a/a/h;

    if-ne p4, p1, :cond_2

    :cond_0
    const/4 p1, 0x1

    .line 32
    sget-object p5, Lc/d/a/b/a/a/h;->c:Lc/d/a/b/a/a/h;

    if-ne p4, p5, :cond_1

    invoke-virtual {p2}, Lc/d/a/b/a/f/c;->x()Z

    move-result p4

    if-nez p4, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-eqz p1, :cond_2

    .line 33
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Lc/d/a/b/a/i/f;

    new-instance p4, Lcom/ss/android/socialbase/downloader/impls/a$d;

    invoke-direct {p4, p0, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/a$d;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;Lc/d/a/b/a/f/c;Lc/d/a/b/a/c/d0;)V

    invoke-virtual {p1, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract c(I)V
.end method

.method public abstract d(I)V
.end method

.method public e(I)Lc/d/a/b/a/f/c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/a/f/d;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object p1

    move-object v0, p1

    .line 5
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public f(I)Z
    .locals 4

    const-string v0, "AbsDownloadEngine"

    const-string v1, "pause id"

    .line 1
    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->b(I)V

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/a/f/d;

    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Lc/d/a/b/a/i/f;

    invoke-direct {v0, p1, v3}, Lcom/ss/android/socialbase/downloader/downloader/e;-><init>(Lc/d/a/b/a/f/d;Landroid/os/Handler;)V

    .line 7
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->d()V

    .line 8
    monitor-exit v2

    return v1

    .line 9
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 10
    :cond_1
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/c;)V

    .line 11
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 12
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    monitor-enter v2

    .line 13
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/a/f/d;

    if-eqz p1, :cond_2

    .line 14
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Lc/d/a/b/a/i/f;

    invoke-direct {v0, p1, v3}, Lcom/ss/android/socialbase/downloader/downloader/e;-><init>(Lc/d/a/b/a/f/d;Landroid/os/Handler;)V

    .line 15
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->d()V

    .line 16
    monitor-exit v2

    return v1

    .line 17
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 18
    :cond_3
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result p1

    invoke-static {p1}, Lc/d/a/b/a/a/f;->b(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, -0x2

    .line 19
    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c;->a(I)V

    return v1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public g(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/a/f/d;

    if-eqz v1, :cond_1

    .line 3
    new-instance v2, Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Lc/d/a/b/a/i/f;

    invoke-direct {v2, v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/e;-><init>(Lc/d/a/b/a/f/d;Landroid/os/Handler;)V

    .line 4
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/downloader/e;->c()V

    .line 5
    invoke-virtual {v1}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v2

    .line 6
    sget-object v3, Lc/d/a/b/a/a/h;->a:Lc/d/a/b/a/a/h;

    invoke-virtual {v1, v3}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/a/h;)Landroid/util/SparseArray;

    move-result-object v3

    .line 7
    sget-object v4, Lc/d/a/b/a/a/h;->c:Lc/d/a/b/a/a/h;

    invoke-virtual {v1, v4}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/a/h;)Landroid/util/SparseArray;

    move-result-object v1

    .line 8
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Lc/d/a/b/a/i/f;

    new-instance v5, Lcom/ss/android/socialbase/downloader/impls/a$a;

    invoke-direct {v5, p0, v3, v2, v1}, Lcom/ss/android/socialbase/downloader/impls/a$a;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;Landroid/util/SparseArray;Lc/d/a/b/a/f/c;Landroid/util/SparseArray;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->A0()I

    move-result v1

    invoke-static {v1}, Lc/d/a/b/a/a/f;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x4

    .line 10
    invoke-virtual {v2, v1}, Lc/d/a/b/a/f/c;->a(I)V

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->o(I)V

    .line 12
    :cond_1
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized h(I)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/d;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->i(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p1, 0x1

    .line 4
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i(I)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/d;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/a/f/d;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p1, 0x1

    .line 5
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 6
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized j(I)Lc/d/a/b/a/c/d;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->k()Lc/d/a/b/a/c/d;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->k()Lc/d/a/b/a/c/d;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 5
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->k()Lc/d/a/b/a/c/d;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 7
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->k()Lc/d/a/b/a/c/d;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 9
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/a/f/d;

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->k()Lc/d/a/b/a/c/d;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    const/4 p1, 0x0

    .line 11
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k(I)Lc/d/a/b/a/c/g0;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->j()Lc/d/a/b/a/c/g0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->j()Lc/d/a/b/a/c/g0;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 5
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->j()Lc/d/a/b/a/c/g0;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 7
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->j()Lc/d/a/b/a/c/g0;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 9
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/a/f/d;

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->j()Lc/d/a/b/a/c/g0;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    const/4 p1, 0x0

    .line 11
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized l(I)Lc/d/a/b/a/c/x;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->l()Lc/d/a/b/a/c/x;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->l()Lc/d/a/b/a/c/x;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 5
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->l()Lc/d/a/b/a/c/x;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 7
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->l()Lc/d/a/b/a/c/x;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 9
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/a/f/d;

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->l()Lc/d/a/b/a/c/x;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    const/4 p1, 0x0

    .line 11
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized m(I)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->U()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/d;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    monitor-exit p0

    return p1

    .line 6
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Lc/d/a/b/a/f/d;

    invoke-direct {v0, p1}, Lc/d/a/b/a/f/d;-><init>(Lc/d/a/b/a/f/c;)V

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/d;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized n(I)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/a/f/d;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 6
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public o(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->h:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/c;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->c(I)V

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Lc/d/a/b/a/i/f;

    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/a$b;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a$b;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    invoke-static {}, Lc/d/a/b/a/j/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/a$c;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a$c;-><init>(Lcom/ss/android/socialbase/downloader/impls/a;I)V

    .line 7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->r(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized p(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/a/f/d;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->e(Z)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized q(I)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1
.end method
