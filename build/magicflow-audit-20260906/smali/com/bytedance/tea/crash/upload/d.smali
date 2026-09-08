.class public final Lcom/bytedance/tea/crash/upload/d;
.super Ljava/lang/Object;
.source "LaunchScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/tea/crash/upload/d;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0}, Lcom/bytedance/tea/crash/upload/d;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/tea/crash/o;->a()Lcom/bytedance/tea/crash/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/i/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-void

    .line 2
    :catch_0
    :cond_0
    invoke-static {}, Lcom/bytedance/tea/crash/i/i;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/tea/crash/upload/d;

    invoke-direct {v1, p0}, Lcom/bytedance/tea/crash/upload/d;-><init>(Landroid/content/Context;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/bytedance/tea/crash/i/e;

    iget-object v1, p0, Lcom/bytedance/tea/crash/upload/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/i/e;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/bytedance/tea/crash/upload/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/tea/crash/m/i;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/i/e;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    :try_start_1
    invoke-static {v0}, Lcom/bytedance/tea/crash/m/j;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :goto_0
    invoke-static {}, Lcom/bytedance/tea/crash/i/i;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/tea/crash/upload/d;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/k/c;->a(Landroid/os/Handler;Landroid/content/Context;)Lcom/bytedance/tea/crash/k/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/k/c;->a()V

    return-void

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/bytedance/tea/crash/i/i;->b()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/tea/crash/upload/d;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/bytedance/tea/crash/k/c;->a(Landroid/os/Handler;Landroid/content/Context;)Lcom/bytedance/tea/crash/k/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/tea/crash/k/c;->a()V

    throw v0
.end method
