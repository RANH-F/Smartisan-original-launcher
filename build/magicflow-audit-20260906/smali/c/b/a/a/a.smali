.class public Lc/b/a/a/a;
.super Ljava/lang/Object;
.source "AdNetSdk.java"


# static fields
.field private static a:Ljava/lang/String; = null

.field public static b:Lc/b/a/a/d/q; = null

.field private static c:Lc/b/a/a/c/b; = null

.field private static d:Z = true

.field private static e:Lc/b/a/a/c/a;


# direct methods
.method public static a()Lc/b/a/a/c/b;
    .locals 2

    .line 5
    sget-object v0, Lc/b/a/a/a;->c:Lc/b/a/a/c/b;

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sITTNetDepend is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lc/b/a/a/d/o;
    .locals 0

    .line 1
    invoke-static {p0}, Lc/b/a/a/d/n;->a(Landroid/content/Context;)Lc/b/a/a/d/o;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lc/b/a/a/g/a;)Lc/b/a/a/d/o;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lc/b/a/a/d/n;->a(Landroid/content/Context;Lc/b/a/a/g/a;)Lc/b/a/a/d/o;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 18
    new-instance v0, Lc/b/a/a/a$b;

    const-string v1, "load_config"

    invoke-direct {v0, v1, p0}, Lc/b/a/a/a$b;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/Application;Z)V
    .locals 2

    if-eqz p0, :cond_4

    .line 9
    invoke-static {}, Lc/b/a/a/c/f;->e()Lc/b/a/a/c/f;

    move-result-object v0

    invoke-static {p0}, Lc/b/a/a/e/g;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lc/b/a/a/c/f;->a(Landroid/content/Context;Z)V

    .line 10
    invoke-static {p0}, Lc/b/a/a/e/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lc/b/a/a/e/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 11
    :cond_0
    invoke-static {p0}, Lc/b/a/a/a$c;->a(Landroid/content/Context;)Lc/b/a/a/a$c;

    move-result-object p2

    invoke-virtual {p2}, Lc/b/a/a/a$c;->c()V

    .line 12
    invoke-static {p0}, Lc/b/a/a/a$c;->a(Landroid/content/Context;)Lc/b/a/a/a$c;

    move-result-object p2

    invoke-virtual {p2}, Lc/b/a/a/a$c;->a()V

    .line 13
    :cond_1
    invoke-static {p0}, Lc/b/a/a/e/g;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 14
    :cond_2
    invoke-static {p0}, Lc/b/a/a/a$c;->a(Landroid/content/Context;)Lc/b/a/a/a$c;

    if-eqz p1, :cond_3

    .line 15
    new-instance p0, Lc/b/a/a/a$a;

    invoke-direct {p0}, Lc/b/a/a/a$a;-><init>()V

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_3
    return-void

    .line 16
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tryInitAdTTNet context is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lc/b/a/a/c/a;)V
    .locals 0

    .line 8
    sput-object p0, Lc/b/a/a/a;->e:Lc/b/a/a/c/a;

    return-void
.end method

.method public static a(Lc/b/a/a/c/b;)V
    .locals 0

    .line 4
    sput-object p0, Lc/b/a/a/a;->c:Lc/b/a/a/c/b;

    return-void
.end method

.method public static a(Lc/b/a/a/d/q;)V
    .locals 0

    .line 3
    sput-object p0, Lc/b/a/a/a;->b:Lc/b/a/a/d/q;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 7
    sput-boolean p0, Lc/b/a/a/a;->d:Z

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lc/b/a/a/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "VAdNetSdk"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lc/b/a/a/a;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "init adnetsdk default directory error "

    .line 5
    invoke-static {p0, v1, v0}, Lc/b/a/a/d/r;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_0
    :goto_0
    sget-object p0, Lc/b/a/a/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static b()Z
    .locals 1

    .line 7
    sget-boolean v0, Lc/b/a/a/a;->d:Z

    return v0
.end method

.method public static c()V
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/a/e/d$b;->a:Lc/b/a/a/e/d$b;

    invoke-static {v0}, Lc/b/a/a/e/d;->a(Lc/b/a/a/e/d$b;)V

    return-void
.end method

.method public static d()Lc/b/a/a/c/a;
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/a/a;->e:Lc/b/a/a/c/a;

    return-object v0
.end method
