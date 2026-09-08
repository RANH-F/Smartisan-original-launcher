.class public Lcom/bytedance/tea/crash/g/a;
.super Ljava/lang/Object;
.source "CrashCatchDispatcher.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static e:Lcom/bytedance/tea/crash/g/a;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/bytedance/tea/crash/g/b;

.field private d:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/g/a;->b:Ljava/util/HashSet;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/bytedance/tea/crash/g/a;->d:J

    .line 4
    invoke-direct {p0}, Lcom/bytedance/tea/crash/g/a;->c()V

    .line 5
    invoke-direct {p0}, Lcom/bytedance/tea/crash/g/a;->b()V

    return-void
.end method

.method public static a()Lcom/bytedance/tea/crash/g/a;
    .locals 1

    .line 2
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->e:Lcom/bytedance/tea/crash/g/a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/bytedance/tea/crash/g/a;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/g/a;-><init>()V

    sput-object v0, Lcom/bytedance/tea/crash/g/a;->e:Lcom/bytedance/tea/crash/g/a;

    .line 4
    :cond_0
    sget-object v0, Lcom/bytedance/tea/crash/g/a;->e:Lcom/bytedance/tea/crash/g/a;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/tea/crash/g/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/tea/crash/g/a;->c()V

    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 2

    .line 6
    invoke-static {}, Lcom/bytedance/tea/crash/o;->b()Lcom/bytedance/tea/crash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/d;->d()Lcom/bytedance/tea/crash/l;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 7
    :try_start_0
    invoke-interface {v0, p2, p1}, Lcom/bytedance/tea/crash/l;->a(Ljava/lang/Throwable;Ljava/lang/Thread;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :catchall_0
    :cond_1
    :goto_0
    return v1
.end method

.method private b()V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/bytedance/tea/crash/g/a$a;

    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/g/a$a;-><init>(Lcom/bytedance/tea/crash/g/a;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 3
    invoke-static {}, Lcom/bytedance/tea/crash/o;->b()Lcom/bytedance/tea/crash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/d;->b()Ljava/util/List;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/bytedance/tea/crash/f;->c:Lcom/bytedance/tea/crash/f;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/tea/crash/j;

    .line 6
    :try_start_0
    invoke-static {p2}, Lcom/bytedance/tea/crash/m/m;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3, p1}, Lcom/bytedance/tea/crash/j;->a(Lcom/bytedance/tea/crash/f;Ljava/lang/String;Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 7
    invoke-static {v2}, Lcom/bytedance/tea/crash/m/j;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 2
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 3
    iget-object v1, p0, Lcom/bytedance/tea/crash/g/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v1, :cond_0

    .line 4
    iput-object v0, p0, Lcom/bytedance/tea/crash/g/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/bytedance/tea/crash/g/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bytedance/tea/crash/g/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/tea/crash/g/b;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/tea/crash/g/a;->c:Lcom/bytedance/tea/crash/g/b;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/tea/crash/g/a;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/tea/crash/g/a;->d:J

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/bytedance/tea/crash/g/a;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/bytedance/tea/crash/g/a;->c(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_1
    :try_start_1
    sget-object v3, Lcom/bytedance/tea/crash/f;->c:Lcom/bytedance/tea/crash/f;

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/bytedance/tea/crash/g/a;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_2

    .line 8
    iget-object v3, p0, Lcom/bytedance/tea/crash/g/a;->c:Lcom/bytedance/tea/crash/g/b;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/bytedance/tea/crash/g/a;->c:Lcom/bytedance/tea/crash/g/b;

    invoke-interface {v3, p2}, Lcom/bytedance/tea/crash/g/b;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    iget-object v2, p0, Lcom/bytedance/tea/crash/g/a;->c:Lcom/bytedance/tea/crash/g/b;

    invoke-interface {v2, v0, v1, p1, p2}, Lcom/bytedance/tea/crash/g/b;->a(JLjava/lang/Thread;Ljava/lang/Throwable;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[uncaughtException] mLaunchCrashDisposer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/tea/crash/m/j;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_2
    invoke-static {v0}, Lcom/bytedance/tea/crash/m/j;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/tea/crash/g/a;->c(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/tea/crash/g/a;->c(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    throw v0
.end method
