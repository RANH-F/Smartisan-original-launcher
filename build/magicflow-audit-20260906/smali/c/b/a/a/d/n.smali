.class public Lc/b/a/a/d/n;
.super Ljava/lang/Object;
.source "QueueManager.java"


# direct methods
.method public static a(Landroid/content/Context;)Lc/b/a/a/d/o;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lc/b/a/a/d/n;->a(Landroid/content/Context;Lc/b/a/a/g/a;)Lc/b/a/a/d/o;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lc/b/a/a/g/a;)Lc/b/a/a/d/o;
    .locals 1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lc/b/a/a/d/k;

    invoke-direct {p1}, Lc/b/a/a/d/k;-><init>()V

    .line 3
    :cond_0
    new-instance v0, Lc/b/a/a/d/d;

    invoke-direct {v0, p1}, Lc/b/a/a/d/d;-><init>(Lc/b/a/a/g/a;)V

    invoke-static {p0, v0}, Lc/b/a/a/d/n;->a(Landroid/content/Context;Lc/b/a/a/g/c;)Lc/b/a/a/d/o;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lc/b/a/a/g/c;)Lc/b/a/a/d/o;
    .locals 2

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lc/b/a/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "reqQueue"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p0, Lc/b/a/a/d/o;

    new-instance v1, Lc/b/a/a/d/i;

    invoke-direct {v1, v0}, Lc/b/a/a/d/i;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1, p1}, Lc/b/a/a/d/o;-><init>(Lc/b/a/a/g/b;Lc/b/a/a/g/c;)V

    .line 6
    invoke-virtual {p0}, Lc/b/a/a/d/o;->a()V

    return-object p0
.end method
