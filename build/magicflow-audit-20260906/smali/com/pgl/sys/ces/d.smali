.class public Lcom/pgl/sys/ces/d;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x0

.field public static b:J = 0xe10L

.field public static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 7

    const-class v0, Lcom/pgl/sys/ces/d;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    sget-wide v3, Lcom/pgl/sys/ces/d;->c:J

    sub-long v3, v1, v3

    sget-wide v5, Lcom/pgl/sys/ces/d;->b:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    const/4 v3, 0x0

    sput-boolean v3, Lcom/pgl/sys/ces/b;->h:Z

    sput v3, Lcom/pgl/sys/ces/d;->a:I

    sput-wide v1, Lcom/pgl/sys/ces/d;->c:J

    :cond_0
    const/4 v1, 0x3

    if-ge v3, v1, :cond_2

    sget-boolean v2, Lcom/pgl/sys/ces/b;->h:Z

    if-nez v2, :cond_1

    sget v2, Lcom/pgl/sys/ces/d;->a:I

    if-ge v2, v1, :cond_1

    invoke-static {p0}, Lcom/pgl/sys/ces/d;->b(Landroid/content/Context;)V

    sget v1, Lcom/pgl/sys/ces/d;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/pgl/sys/ces/d;->a:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    mul-int/lit16 v1, v3, 0x1388

    int-to-long v1, v1

    invoke-static {v1, v2}, Lc/c/a/b/f;->a(J)V

    sget-boolean v1, Lcom/pgl/sys/ces/b;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/pgl/sys/ces/c/b;

    invoke-static {}, Lcom/pgl/sys/ces/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pgl/sys/ces/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x2

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p0, v1}, Lc/c/a/a/b;->a(II[B)V

    return-void
.end method
