.class public Lcom/bytedance/tea/crash/i/f;
.super Ljava/lang/Object;
.source "LogcatDump.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/crash/i/f$b;,
        Lcom/bytedance/tea/crash/i/f$a;
    }
.end annotation


# direct methods
.method private static a(I)Ljava/lang/String;
    .locals 6

    const-string v0, "*:V"

    const-string v1, "*:D"

    const-string v2, "*:I"

    const-string v3, "*:W"

    const-string v4, "*:E"

    const-string v5, "*:F"

    .line 12
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    if-ltz p0, :cond_0

    .line 13
    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 14
    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const-string p0, "*:V"

    return-object p0
.end method

.method public static a(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "logcat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-t"

    aput-object v3, v1, v2

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-static {p1}, Lcom/bytedance/tea/crash/i/f;->a(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    const/4 p0, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 4
    new-instance p1, Lcom/bytedance/tea/crash/i/f$a;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/bytedance/tea/crash/i/f$a;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 5
    new-instance p1, Lcom/bytedance/tea/crash/i/f$a;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/bytedance/tea/crash/i/f$a;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 6
    new-instance p1, Lcom/bytedance/tea/crash/i/f$b;

    const-wide/16 v1, 0xbb8

    invoke-direct {p1, p0, v1, v2}, Lcom/bytedance/tea/crash/i/f$b;-><init>(Ljava/lang/Process;J)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt p1, v3, :cond_0

    .line 8
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, p1}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    .line 11
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    :cond_1
    return-object v0

    :catchall_1
    move-exception p1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    :cond_2
    throw p1
.end method
