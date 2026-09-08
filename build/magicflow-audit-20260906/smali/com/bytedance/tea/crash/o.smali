.class public final Lcom/bytedance/tea/crash/o;
.super Ljava/lang/Object;
.source "NpthBus.java"


# static fields
.field private static a:Landroid/content/Context; = null

.field private static b:J = 0x0L

.field private static c:Ljava/lang/String; = "default"

.field private static d:Z = false

.field private static e:Lcom/bytedance/tea/crash/i/b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static f:Lcom/bytedance/tea/crash/i/c;

.field private static g:Lcom/bytedance/tea/crash/d;

.field private static volatile h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lcom/bytedance/tea/crash/i/k;

.field private static volatile j:I

.field private static volatile k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/tea/crash/i/c;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/i/c;-><init>()V

    sput-object v0, Lcom/bytedance/tea/crash/o;->f:Lcom/bytedance/tea/crash/i/c;

    .line 2
    new-instance v0, Lcom/bytedance/tea/crash/d;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/d;-><init>()V

    sput-object v0, Lcom/bytedance/tea/crash/o;->g:Lcom/bytedance/tea/crash/d;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/bytedance/tea/crash/o;->i:Lcom/bytedance/tea/crash/i/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/tea/crash/i/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/o;->e:Lcom/bytedance/tea/crash/i/b;

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/bytedance/tea/crash/h;)V
    .locals 2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/tea/crash/o;->b:J

    .line 3
    sput-object p0, Lcom/bytedance/tea/crash/o;->a:Landroid/content/Context;

    .line 4
    new-instance p0, Lcom/bytedance/tea/crash/i/b;

    sget-object v0, Lcom/bytedance/tea/crash/o;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/bytedance/tea/crash/i/b;-><init>(Landroid/content/Context;Lcom/bytedance/tea/crash/h;)V

    sput-object p0, Lcom/bytedance/tea/crash/o;->e:Lcom/bytedance/tea/crash/i/b;

    return-void
.end method

.method public static b()Lcom/bytedance/tea/crash/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/o;->g:Lcom/bytedance/tea/crash/d;

    return-object v0
.end method

.method public static c()Lcom/bytedance/tea/crash/i/k;
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/o;->i:Lcom/bytedance/tea/crash/i/k;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/bytedance/tea/crash/o;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/bytedance/tea/crash/i/k;

    sget-object v2, Lcom/bytedance/tea/crash/o;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bytedance/tea/crash/i/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/tea/crash/o;->i:Lcom/bytedance/tea/crash/i/k;

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Lcom/bytedance/tea/crash/o;->i:Lcom/bytedance/tea/crash/i/k;

    return-object v0
.end method

.method public static d()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/o;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static e()Lcom/bytedance/tea/crash/i/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/o;->f:Lcom/bytedance/tea/crash/i/c;

    return-object v0
.end method

.method public static f()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/bytedance/tea/crash/o;->b:J

    return-wide v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/tea/crash/o;->d:Z

    return v0
.end method

.method public static i()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/o;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static j()I
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/tea/crash/o;->j:I

    return v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/o;->k:Ljava/lang/String;

    return-object v0
.end method
