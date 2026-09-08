.class public final Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;
.super Ljava/lang/Object;
.source "LibHolder.java"


# static fields
.field public static volatile a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Landroid/content/Context;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Z

    .line 3
    :try_start_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 5

    const/4 v0, 0x0

    .line 10
    :try_start_0
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "LibHolder"

    if-eqz v1, :cond_0

    .line 11
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_0

    .line 16
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    const-string v3, "download dir error: "

    .line 17
    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mounted"

    .line 20
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 23
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 27
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 28
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 29
    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/l;->a()V

    .line 31
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    return-void
.end method

.method public static a(I)V
    .locals 1

    .line 32
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(ILcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 34
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/util/Map;

    .line 36
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p0

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a()V

    .line 4
    sget-object p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_3

    .line 5
    const-class p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b(Landroid/content/Context;)Z

    move-result v0

    .line 8
    sget-object v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ss/android/socialbase/appdownloader/c;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 45
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 46
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/a/f/c;

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->t0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/Object;)Z
    .locals 10

    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->g()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 39
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;

    if-eqz v4, :cond_1

    move-object v6, p2

    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    .line 42
    invoke-interface/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;->a(ILcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public static b()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g/d;->a()Lcom/bytedance/sdk/openadsdk/core/g/d;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/g/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    .line 6
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h()V

    .line 7
    invoke-static {p0}, Lcom/ss/android/downloadlib/i;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/downloadlib/i;->a()Lc/d/a/a/a/b;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    .line 8
    :cond_2
    new-instance v0, Lc/d/a/a/a/d/a$a;

    invoke-direct {v0}, Lc/d/a/a/a/d/a$a;-><init>()V

    const-string v3, "143"

    .line 9
    invoke-virtual {v0, v3}, Lc/d/a/a/a/d/a$a;->b(Ljava/lang/String;)Lc/d/a/a/a/d/a$a;

    const-string v3, "open_news"

    .line 10
    invoke-virtual {v0, v3}, Lc/d/a/a/a/d/a$a;->a(Ljava/lang/String;)Lc/d/a/a/a/d/a$a;

    const-string v3, "2.8.0.3"

    .line 11
    invoke-virtual {v0, v3}, Lc/d/a/a/a/d/a$a;->c(Ljava/lang/String;)Lc/d/a/a/a/d/a$a;

    const/16 v3, 0xaf3

    .line 12
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc/d/a/a/a/d/a$a;->d(Ljava/lang/String;)Lc/d/a/a/a/d/a$a;

    .line 13
    invoke-virtual {v0}, Lc/d/a/a/a/d/a$a;->a()Lc/d/a/a/a/d/a;

    move-result-object v0

    .line 14
    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v3}, Lc/d/a/a/a/b;->a(Lc/d/a/a/a/a/f;)Lc/d/a/a/a/b;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-interface {v2, v3}, Lc/d/a/a/a/b;->a(Lc/d/a/a/a/a/d;)Lc/d/a/a/a/b;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-interface {v2, v3}, Lc/d/a/a/a/b;->a(Lc/d/a/a/a/a/i;)Lc/d/a/a/a/b;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/c;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-interface {v2, v3}, Lc/d/a/a/a/b;->a(Lc/d/a/a/a/a/e;)Lc/d/a/a/a/b;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-interface {v2, v3}, Lc/d/a/a/a/b;->a(Lc/d/a/a/a/a/g;)Lc/d/a/a/a/b;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/a;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/a;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-interface {v2, v3}, Lc/d/a/a/a/b;->a(Lc/d/a/a/a/a/a;)Lc/d/a/a/a/b;

    .line 20
    invoke-interface {v2, v0}, Lc/d/a/a/a/b;->a(Lc/d/a/a/a/d/a;)Lc/d/a/a/a/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".TTFileProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-interface {v2, v0}, Lc/d/a/a/a/b;->a(Ljava/lang/String;)Lc/d/a/a/a/b;

    .line 22
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Z)V

    .line 23
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c(Landroid/content/Context;)V

    .line 24
    invoke-static {p0}, Lcom/ss/android/downloadlib/i;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/i;->d()Lcom/ss/android/downloadad/a/b;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/ss/android/downloadad/a/b;->a(I)V

    return v1
.end method

.method public static c()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->D()Z

    move-result v0

    .line 3
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Z

    if-eq v1, v0, :cond_0

    .line 4
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Z

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a()V

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/i;->a()Lc/d/a/a/a/b;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lc/d/a/a/a/b;->a(Lc/d/a/a/a/a/g;)Lc/d/a/a/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "LibHolder"

    const-string v2, "sync config error: "

    .line 8
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    .line 9
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/g;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/g;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/g;->a(Lc/d/a/b/a/h/f;)Lcom/ss/android/socialbase/downloader/downloader/g;

    .line 11
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Lcom/ss/android/socialbase/downloader/downloader/g;)V

    return-void
.end method

.method public static d()Lcom/ss/android/downloadlib/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b(Landroid/content/Context;)Z

    .line 3
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/i;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/i;

    move-result-object v0

    return-object v0
.end method

.method public static e()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/i;->f()V

    .line 2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/k;->c(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method private static f()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/util/Map;

    return-object v0
.end method

.method private static h()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/i/l;->E()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/i/l;->F()I

    move-result v1

    .line 4
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/i/l;->G()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    :cond_0
    move v4, v0

    :catchall_1
    :goto_0
    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const v2, 0xea60

    mul-int/2addr v1, v2

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/appdownloader/c;->b(I)V

    .line 6
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(I)V

    .line 7
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/socialbase/appdownloader/c;->a(J)V

    .line 8
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/socialbase/appdownloader/c;->b(J)V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", time="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LibHolder"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
