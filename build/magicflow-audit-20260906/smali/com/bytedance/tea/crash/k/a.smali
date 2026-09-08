.class public abstract Lcom/bytedance/tea/crash/k/a;
.super Ljava/lang/Object;
.source "BaseTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/os/Handler;

.field private final b:J

.field private final c:J


# direct methods
.method constructor <init>(Landroid/os/Handler;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/tea/crash/k/a;->a:Landroid/os/Handler;

    .line 3
    iput-wide p2, p0, Lcom/bytedance/tea/crash/k/a;->b:J

    .line 4
    iput-wide p4, p0, Lcom/bytedance/tea/crash/k/a;->c:J

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/tea/crash/k/a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/tea/crash/k/a;->a:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/bytedance/tea/crash/k/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/tea/crash/k/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/tea/crash/k/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/bytedance/tea/crash/k/a;->a:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/tea/crash/k/a;->b:J

    return-wide v0
.end method

.method c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/tea/crash/k/a;->c:J

    return-wide v0
.end method
