.class public Lcom/bytedance/tea/crash/i/g;
.super Ljava/lang/Object;
.source "LooperMessageManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static i:Landroid/util/Printer;

.field private static j:Lcom/bytedance/tea/crash/i/g;

.field private static final k:Landroid/util/Printer;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:I

.field private c:J

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Printer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Printer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/tea/crash/i/g$a;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/i/g$a;-><init>()V

    sput-object v0, Lcom/bytedance/tea/crash/i/g;->k:Landroid/util/Printer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/bytedance/tea/crash/i/g;->b:I

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/bytedance/tea/crash/i/g;->d:Landroid/util/SparseArray;

    .line 4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/tea/crash/i/g;->e:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/tea/crash/i/g;->f:Ljava/util/List;

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/tea/crash/i/g;->g:Z

    .line 6
    invoke-static {}, Lcom/bytedance/tea/crash/i/i;->a()Landroid/os/HandlerThread;

    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/bytedance/tea/crash/i/g;->a:Landroid/os/Handler;

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/tea/crash/i/g;->a()V

    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 23
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 25
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 26
    invoke-static {p0}, Lcom/bytedance/tea/crash/m/j;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/util/Printer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 27
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 28
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Printer;

    .line 29
    invoke-interface {v0, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    :try_start_2
    invoke-static {p1}, Lcom/bytedance/tea/crash/m/j;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 32
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public static b()Lcom/bytedance/tea/crash/i/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/i/g;->j:Lcom/bytedance/tea/crash/i/g;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bytedance/tea/crash/i/g;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/tea/crash/i/g;->j:Lcom/bytedance/tea/crash/i/g;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/tea/crash/i/g;

    invoke-direct {v1}, Lcom/bytedance/tea/crash/i/g;-><init>()V

    sput-object v1, Lcom/bytedance/tea/crash/i/g;->j:Lcom/bytedance/tea/crash/i/g;

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
    sget-object v0, Lcom/bytedance/tea/crash/i/g;->j:Lcom/bytedance/tea/crash/i/g;

    return-object v0
.end method

.method static synthetic c()Landroid/util/Printer;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/i/g;->i:Landroid/util/Printer;

    return-object v0
.end method

.method static synthetic d()Landroid/util/Printer;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/i/g;->k:Landroid/util/Printer;

    return-object v0
.end method

.method private e()Landroid/util/Printer;
    .locals 2

    const-string v0, "android.os.Looper"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mLogging"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Printer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/bytedance/tea/crash/m/j;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/tea/crash/i/g;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/tea/crash/i/g;->g:Z

    .line 3
    invoke-direct {p0}, Lcom/bytedance/tea/crash/i/g;->e()Landroid/util/Printer;

    move-result-object v0

    sput-object v0, Lcom/bytedance/tea/crash/i/g;->i:Landroid/util/Printer;

    .line 4
    sget-object v0, Lcom/bytedance/tea/crash/i/g;->i:Landroid/util/Printer;

    sget-object v1, Lcom/bytedance/tea/crash/i/g;->k:Landroid/util/Printer;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/bytedance/tea/crash/i/g;->i:Landroid/util/Printer;

    .line 6
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/bytedance/tea/crash/i/g;->k:Landroid/util/Printer;

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    return-void
.end method

.method public a(JLjava/lang/Runnable;)V
    .locals 7

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/tea/crash/i/g;->a(JLjava/lang/Runnable;IJ)V

    return-void
.end method

.method public a(JLjava/lang/Runnable;IJ)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    .line 8
    iget-object v1, p0, Lcom/bytedance/tea/crash/i/g;->d:Landroid/util/SparseArray;

    long-to-int v2, p1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    .line 9
    iget-object v3, p0, Lcom/bytedance/tea/crash/i/g;->d:Landroid/util/SparseArray;

    monitor-enter v3

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/tea/crash/i/g;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 11
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 12
    iget-object v4, p0, Lcom/bytedance/tea/crash/i/g;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 14
    :cond_2
    :goto_1
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr p1, p5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(Landroid/util/Printer;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bytedance/tea/crash/i/g;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .line 16
    iget-boolean v0, p0, Lcom/bytedance/tea/crash/i/g;->h:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x20

    .line 17
    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/i/h;->a(J)V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/bytedance/tea/crash/i/g;->h:Z

    .line 19
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/tea/crash/i/g;->c:J

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/tea/crash/i/g;->e:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/bytedance/tea/crash/i/g;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/bytedance/tea/crash/i/g;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-static {p1}, Lcom/bytedance/tea/crash/m/j;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized b(Landroid/util/Printer;)V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/tea/crash/i/g;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/tea/crash/i/g;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/tea/crash/i/g;->f:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/bytedance/tea/crash/i/g;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/bytedance/tea/crash/i/g;->a:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/bytedance/tea/crash/m/j;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/tea/crash/i/g;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 2
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/bytedance/tea/crash/i/g;->d:Landroid/util/SparseArray;

    iget v1, p0, Lcom/bytedance/tea/crash/i/g;->b:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/bytedance/tea/crash/i/g;->a(Ljava/util/List;)V

    .line 4
    iget p1, p0, Lcom/bytedance/tea/crash/i/g;->b:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/bytedance/tea/crash/i/g;->b:I

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/bytedance/tea/crash/i/g;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object p1, p0, Lcom/bytedance/tea/crash/i/g;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/tea/crash/i/g;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/bytedance/tea/crash/i/g;->d:Landroid/util/SparseArray;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/bytedance/tea/crash/i/g;->a(Ljava/util/List;)V

    :cond_3
    return v2

    .line 8
    :cond_4
    iput v1, p0, Lcom/bytedance/tea/crash/i/g;->b:I

    .line 9
    iget-object p1, p0, Lcom/bytedance/tea/crash/i/g;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/tea/crash/i/g;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    if-nez p1, :cond_5

    .line 10
    iget-object p1, p0, Lcom/bytedance/tea/crash/i/g;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/bytedance/tea/crash/i/g;->a(Ljava/util/List;)V

    .line 11
    iget p1, p0, Lcom/bytedance/tea/crash/i/g;->b:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/bytedance/tea/crash/i/g;->b:I

    .line 12
    :cond_5
    :goto_0
    iget p1, p0, Lcom/bytedance/tea/crash/i/g;->b:I

    iget-object v1, p0, Lcom/bytedance/tea/crash/i/g;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lt p1, v1, :cond_6

    return v2

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/bytedance/tea/crash/i/g;->d:Landroid/util/SparseArray;

    iget v1, p0, Lcom/bytedance/tea/crash/i/g;->b:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    int-to-long v3, p1

    const-wide/32 v5, 0x7fffffff

    cmp-long p1, v3, v5

    if-eqz p1, :cond_7

    .line 14
    iget-object p1, p0, Lcom/bytedance/tea/crash/i/g;->a:Landroid/os/Handler;

    iget-wide v5, p0, Lcom/bytedance/tea/crash/i/g;->c:J

    add-long/2addr v5, v3

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_7
    return v2
.end method
