.class public Lcom/ss/android/socialbase/downloader/impls/l;
.super Ljava/lang/Object;
.source "DownloadProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/impls/l$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/ss/android/socialbase/downloader/downloader/n;

.field private static volatile b:Lcom/ss/android/socialbase/downloader/downloader/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;
    .locals 5

    .line 1
    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/n;

    const-class v1, Lcom/ss/android/socialbase/downloader/impls/l;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_2

    .line 2
    sget-object p0, Lcom/ss/android/socialbase/downloader/impls/l;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez p0, :cond_1

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    sget-object p0, Lcom/ss/android/socialbase/downloader/impls/l;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez p0, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v0, v4, v2

    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/l$a;

    invoke-direct {v0, v3}, Lcom/ss/android/socialbase/downloader/impls/l$a;-><init>(Z)V

    invoke-static {p0, v4, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/socialbase/downloader/downloader/n;

    sput-object p0, Lcom/ss/android/socialbase/downloader/impls/l;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    .line 6
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_1
    :goto_0
    sget-object p0, Lcom/ss/android/socialbase/downloader/impls/l;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    return-object p0

    .line 8
    :cond_2
    sget-object p0, Lcom/ss/android/socialbase/downloader/impls/l;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez p0, :cond_4

    .line 9
    monitor-enter v1

    .line 10
    :try_start_1
    sget-object p0, Lcom/ss/android/socialbase/downloader/impls/l;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez p0, :cond_3

    .line 11
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v0, v3, v2

    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/l$a;

    invoke-direct {v0, v2}, Lcom/ss/android/socialbase/downloader/impls/l$a;-><init>(Z)V

    invoke-static {p0, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/socialbase/downloader/downloader/n;

    sput-object p0, Lcom/ss/android/socialbase/downloader/impls/l;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    .line 12
    :cond_3
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 13
    :cond_4
    :goto_1
    sget-object p0, Lcom/ss/android/socialbase/downloader/impls/l;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    return-object p0
.end method
