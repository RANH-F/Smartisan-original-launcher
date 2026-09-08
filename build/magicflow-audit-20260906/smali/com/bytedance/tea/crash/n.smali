.class public final Lcom/bytedance/tea/crash/n;
.super Ljava/lang/Object;
.source "Npth.java"


# static fields
.field private static a:Z


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Lcom/bytedance/tea/crash/h;ZZ)V
    .locals 2

    const-class v0, Lcom/bytedance/tea/crash/n;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, v1, p3}, Lcom/bytedance/tea/crash/n;->a(Landroid/content/Context;Lcom/bytedance/tea/crash/h;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/bytedance/tea/crash/h;ZZZ)V
    .locals 7

    const-class v0, Lcom/bytedance/tea/crash/n;

    monitor-enter v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move v6, p4

    .line 3
    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/bytedance/tea/crash/n;->a(Landroid/content/Context;Lcom/bytedance/tea/crash/h;ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/bytedance/tea/crash/h;ZZZZ)V
    .locals 1

    const-class p4, Lcom/bytedance/tea/crash/n;

    monitor-enter p4

    .line 5
    :try_start_0
    sget-boolean v0, Lcom/bytedance/tea/crash/n;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 6
    monitor-exit p4

    return-void

    :cond_0
    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

    .line 7
    :try_start_1
    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/bytedance/tea/crash/m/a;->c(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 10
    monitor-exit p4

    return-void

    .line 11
    :cond_2
    :try_start_2
    invoke-static {p0, p1}, Lcom/bytedance/tea/crash/o;->a(Landroid/content/Context;Lcom/bytedance/tea/crash/h;)V

    .line 12
    invoke-static {p0}, Lcom/bytedance/tea/crash/i/a/e;->a(Landroid/content/Context;)V

    .line 13
    invoke-static {}, Lcom/bytedance/tea/crash/c/b;->a()Lcom/bytedance/tea/crash/c/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/tea/crash/c/b;->a(Landroid/content/Context;)V

    .line 14
    invoke-static {p0}, Lcom/bytedance/tea/crash/upload/d;->a(Landroid/content/Context;)V

    if-nez p2, :cond_3

    if-eqz p3, :cond_4

    .line 15
    :cond_3
    invoke-static {}, Lcom/bytedance/tea/crash/g/a;->a()Lcom/bytedance/tea/crash/g/a;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 16
    new-instance p2, Lcom/bytedance/tea/crash/g/c;

    invoke-direct {p2, p0}, Lcom/bytedance/tea/crash/g/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/tea/crash/g/a;->a(Lcom/bytedance/tea/crash/g/b;)V

    :cond_4
    if-eqz p5, :cond_5

    .line 17
    invoke-static {p0}, Lcom/bytedance/tea/crash/a/f;->a(Landroid/content/Context;)Lcom/bytedance/tea/crash/a/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/tea/crash/a/f;->a()V

    :cond_5
    const/4 p0, 0x1

    .line 18
    sput-boolean p0, Lcom/bytedance/tea/crash/n;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    monitor-exit p4

    return-void

    .line 20
    :cond_6
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params must be not null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context must be not null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit p4

    throw p0
.end method

.method public static a(Lcom/bytedance/tea/crash/l;)V
    .locals 1

    .line 22
    invoke-static {}, Lcom/bytedance/tea/crash/o;->b()Lcom/bytedance/tea/crash/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/tea/crash/d;->a(Lcom/bytedance/tea/crash/l;)V

    return-void
.end method
