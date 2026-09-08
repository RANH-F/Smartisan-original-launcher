.class public Lc/c/a/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0xff


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    sget v0, Lc/c/a/a/a;->a:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "https://bds-va.byteoversea.com"

    return-object v0

    :cond_1
    const-string v0, "https://bds-sg.byteoversea.com"

    return-object v0

    :cond_2
    const-string v0, "https://bds.snssdk.com"

    return-object v0
.end method

.method public static declared-synchronized a(I)V
    .locals 1

    const-class v0, Lc/c/a/a/a;

    monitor-enter v0

    :try_start_0
    sput p0, Lc/c/a/a/a;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    sget v0, Lc/c/a/a/a;->a:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "https://sdfp-va.byteoversea.com"

    return-object v0

    :cond_1
    const-string v0, "https://sdfp-sg.byteoversea.com"

    return-object v0

    :cond_2
    const-string v0, "https://sdfp.snssdk.com"

    return-object v0
.end method
