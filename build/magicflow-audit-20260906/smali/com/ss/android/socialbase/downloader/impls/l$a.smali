.class Lcom/ss/android/socialbase/downloader/impls/l$a;
.super Ljava/lang/Object;
.source "DownloadProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/impls/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private volatile a:Lcom/ss/android/socialbase/downloader/downloader/n;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/ss/android/socialbase/downloader/impls/p;

    invoke-direct {p1}, Lcom/ss/android/socialbase/downloader/impls/p;-><init>()V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/l$a;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/ss/android/socialbase/downloader/impls/o;

    invoke-direct {p1}, Lcom/ss/android/socialbase/downloader/impls/o;-><init>()V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/l$a;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    :goto_0
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/l$a;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/l$a;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method
