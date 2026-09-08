.class public Lcom/ss/android/downloadlib/i;
.super Ljava/lang/Object;
.source "TTDownloader.java"


# static fields
.field private static volatile e:Lcom/ss/android/downloadlib/i;


# instance fields
.field private a:Lc/d/a/a/a/b;

.field private b:Lcom/ss/android/downloadlib/g;

.field private c:Lcom/ss/android/downloadad/a/b;

.field private d:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/h;->a()Lcom/ss/android/downloadlib/h;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/i;->b:Lcom/ss/android/downloadlib/g;

    .line 3
    new-instance v0, Lcom/ss/android/downloadlib/f;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/f;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/i;->a:Lc/d/a/a/a/b;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/i;->d:J

    .line 5
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/i;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ss/android/downloadlib/i;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/i;->e:Lcom/ss/android/downloadlib/i;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/downloadlib/i;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/i;->e:Lcom/ss/android/downloadlib/i;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/downloadlib/i;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/i;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ss/android/downloadlib/i;->e:Lcom/ss/android/downloadlib/i;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/ss/android/downloadlib/i;->e:Lcom/ss/android/downloadlib/i;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/ss/android/downloadlib/a$q;->a(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    .line 3
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->m()Lcom/ss/android/socialbase/appdownloader/c;

    move-result-object v1

    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Lcom/ss/android/downloadlib/d$e;

    invoke-direct {v4}, Lcom/ss/android/downloadlib/d$e;-><init>()V

    new-instance v5, Lcom/ss/android/downloadlib/d$d;

    invoke-direct {v5, p1}, Lcom/ss/android/downloadlib/d$d;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/ss/android/downloadlib/c;

    invoke-direct {v6}, Lcom/ss/android/downloadlib/c;-><init>()V

    const-string v3, "misc_config"

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/c$f;Lcom/ss/android/socialbase/appdownloader/c$g;Lcom/ss/android/socialbase/appdownloader/c$j;)V

    return-void
.end method

.method private g()Lcom/ss/android/downloadlib/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/i;->b:Lcom/ss/android/downloadlib/g;

    return-object v0
.end method


# virtual methods
.method public a()Lc/d/a/a/a/b;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ss/android/downloadlib/i;->a:Lc/d/a/a/a/b;

    return-object v0
.end method

.method public a(Landroid/content/Context;ILc/d/a/a/a/c/e;Lc/d/a/a/a/c/d;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/ss/android/downloadlib/i;->g()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;ILc/d/a/a/a/c/e;Lc/d/a/a/a/c/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/ss/android/downloadlib/i;->g()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;JI)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/ss/android/downloadlib/i;->g()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;JI)V

    return-void
.end method

.method public a(Ljava/lang/String;JILc/d/a/a/a/c/c;Lc/d/a/a/a/c/b;)V
    .locals 7

    .line 9
    invoke-direct {p0}, Lcom/ss/android/downloadlib/i;->g()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;JILc/d/a/a/a/c/c;Lc/d/a/a/a/c/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/ss/android/downloadlib/i;->g()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public b()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/ss/android/downloadlib/i;->d:J

    return-wide v0
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/i;->d:J

    return-void
.end method

.method public d()Lcom/ss/android/downloadad/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/i;->c:Lcom/ss/android/downloadad/a/b;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/i;->c:Lcom/ss/android/downloadad/a/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/i;->c:Lcom/ss/android/downloadad/a/b;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/d;->c()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/d;->b()V

    return-void
.end method
